<?php

namespace App\Filament\Resources;

use App\Enums\DetailType;
use App\Filament\Resources\EventDetailResource\Pages;
use App\Models\EventDetail;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class EventDetailResource extends Resource
{
    protected static ?string $model = EventDetail::class;

    protected static ?string $navigationIcon = 'heroicon-o-information-circle';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('detail_type')
                    ->options(DetailType::class)
                    ->default(DetailType::Others)
                    ->required(),
                Forms\Components\TextInput::make('details_value')
                    ->label('Details')
                    ->maxLength(255)
                    ->default(null),
                Forms\Components\TextInput::make('amount')
                    ->numeric()
                    ->default(0),
                Forms\Components\Select::make('event_booking_id')
                    ->relationship('eventBooking', 'name_of_the_event')
                    ->required(),
                Forms\Components\MarkdownEditor::make('other_requirements')
                    ->maxLength(255)
                    ->default(null)
                    ->disableToolbarButtons([
                        'blockquote',
                        'strike',
                    ])->columnSpanFull(),
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
                Tables\Columns\TextColumn::make('detail_type'),
                Tables\Columns\TextColumn::make('details_value')
                    ->searchable(),
                Tables\Columns\TextColumn::make('amount')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('eventBooking.name_of_the_event')
                    ->searchable(),

            ])
            ->filters([
                Tables\Filters\SelectFilter::make('EventBooking')
                    ->relationship('eventBooking', 'name_of_the_event'),
                Tables\Filters\TrashedFilter::make(),
            ])
            ->actions([
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
            'index' => Pages\ListEventDetails::route('/'),
            'create' => Pages\CreateEventDetail::route('/create'),
            'edit' => Pages\EditEventDetail::route('/{record}/edit'),
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
