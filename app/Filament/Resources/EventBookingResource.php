<?php

namespace App\Filament\Resources;

use App\Enums\DetailType;
use App\Enums\EventType;
use App\Filament\Resources\EventBookingResource\Pages;
use App\Models\EventBooking;
use App\Models\EventDetail;
use Filament\Forms;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Form;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Filters\Filter;
use Filament\Tables\Table;
use Illuminate\Contracts\Filesystem\FileNotFoundException;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Storage;

class EventBookingResource extends Resource
{
    protected static ?string $model = EventBooking::class;

    protected static ?string $navigationIcon = 'heroicon-o-calendar-days';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Customer Info')->schema([
                    Forms\Components\Select::make('event_customer_id')
                        ->relationship('eventCustomer', 'full_name')
                        ->required(),
                ]),
                Forms\Components\Section::make('Event Info')->schema([
                    Forms\Components\TextInput::make('name_of_the_event')
                        ->required()
                        ->maxLength(144),
                    Forms\Components\Select::make('type_of_event')
                        ->options(EventType::class)->default(EventType::NotSet)
                        ->required(),
                    Forms\Components\DateTimePicker::make('start_date')
                        ->seconds(false)->required(),
                    Forms\Components\DateTimePicker::make('end_date')
                        ->seconds(false)->required(),
                    Forms\Components\TextInput::make('no_of_people_expected')
                        ->required()
                        ->numeric()
                        ->default(0),
                ]),
                Forms\Components\Section::make('Amount Info')->schema([
                    Forms\Components\TextInput::make('total_amount')
                ->numeric()->default(0),
                    Forms\Components\TextInput::make('amount_paid')
                ->numeric()->default(0),
                ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('deleted_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('name_of_the_event')
                    ->searchable(),
                Tables\Columns\TextColumn::make('type_of_event'),
                Tables\Columns\TextColumn::make('start_date')
                    ->dateTime()
                    ->sortable(),
                Tables\Columns\TextColumn::make('end_date')
                    ->dateTime()
                    ->sortable(),
            ])
            ->filters([
                Filter::make('start_end_dates')
                    ->form([
                        DatePicker::make('created_from'),
                        DatePicker::make('created_until'),
                    ])
                    ->query(function (Builder $query, array $data): Builder {
                        return $query
                            ->when(
                                $data['created_from'],
                                fn (Builder $query, $date): Builder => $query->whereDate('start_date', '>=', $date),
                            )
                            ->when(
                                $data['created_until'],
                                fn (Builder $query, $date): Builder => $query->whereDate('end_date', '<=', $date),
                            );
                    }),
                Tables\Filters\TrashedFilter::make(),
            ])
            ->actions([
                Tables\Actions\Action::make('download')
                    ->label("")
                    ->action(
                        function ($record) {
                            $eventBooking = EventBooking::find($record->id);
                            $eventDetails = $eventBooking->eventDetails;
                            $eventDetail = $eventDetails->filter(fn(EventDetail $ed) => DetailType::GeneratedInvoiceUrl->name == $ed->detail_type)
                                ->first();
                            $ebs = $eventBooking->getMedia('invoices');
                            if (!Arr::exists($ebs, 0)) {
                                Notification::make()->title('No files found')
                                    ->danger()->seconds(2)->send();
                                return;
                            }
                            $eb = $ebs[0];
                            $fileUrl = $eventDetail->details_value;
                            $filePath = parse_url($fileUrl)["path"];
                            if (!file_exists(public_path() . $filePath)) {
                                Notification::make()->title('No file found')
                                    ->danger()->seconds(2)->send();
                                return;
                            }
                            return response()->download(public_path() . $filePath, $eb->file_name);
                        }

                    )->outlined()->color('info')
                    ->icon('heroicon-o-arrow-down-tray'),
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                    Tables\Actions\ForceDeleteBulkAction::make(),
                    Tables\Actions\RestoreBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListEventBookings::route('/'),
            'create' => Pages\CreateEventBooking::route('/create'),
            'edit' => Pages\EditEventBooking::route('/{record}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }
}
