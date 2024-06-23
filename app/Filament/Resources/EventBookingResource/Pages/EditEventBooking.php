<?php

namespace App\Filament\Resources\EventBookingResource\Pages;

use App\Enums\DetailType;
use App\Enums\EventType;
use App\Events\BalanceUpdated;
use App\Events\EventBookingInvoiceGenerated;
use App\Events\TotalAmountUpdated;
use App\Filament\Resources\EventBookingResource;
use App\Models\EventBooking;
use App\Models\EventDetail;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Forms\Components\SpatieMediaLibraryFileUpload;
use Filament\Resources\Pages\EditRecord;

class EditEventBooking extends EditRecord
{
    protected static string $resource = EventBookingResource::class;

    protected function getHeaderActions(): array
    {
        $isDetailTypeIn = function (DetailType $dt, EventBooking $eventBooking) {
            $eventDetails = $eventBooking->eventDetails()->get();
            return $eventDetails->filter(function (EventDetail $eventDetail) use ($dt) {
                return $dt == $eventDetail->detail_type;
            })->count() > 0;
        };
        return [
            Action::make('UpdateAmount')->action(
                function (EventBooking $eventBooking) {
                    TotalAmountUpdated::dispatch($eventBooking);
                    BalanceUpdated::dispatch($eventBooking);
                }
            )->button()->outlined()->icon('heroicon-o-arrow-path'),
            Action::make('GenerateInvoice')->action(
                fn (EventBooking $eventBooking) =>
                EventBookingInvoiceGenerated::dispatch($eventBooking)
            )->button()->outlined()->color('info')
                ->icon('heroicon-o-printer')
                ->visible(function (EventBooking $eventBooking) use ($isDetailTypeIn) {
                    return !$isDetailTypeIn(DetailType::GeneratedInvoiceUrl, $eventBooking);
                }),
            Action::make('uploadMarriageCertificate')
                ->model($this->getRecord())
                ->form([
                    SpatieMediaLibraryFileUpload::make('marriageCertificate')
                        ->disk('public')
                        ->directory('mcertificates')
                        ->collection('marriage-certificates')
                        ->uploadingMessage('Uploading marriage certificates...')
                ])
                ->visible(fn (EventBooking $eventBooking) => EventType::Marriage->name == $eventBooking->type_of_event),
            Actions\DeleteAction::make(),
            Actions\ForceDeleteAction::make(),
            Actions\RestoreAction::make(),
        ];
    }

    protected function afterSave(): void
    {
        $this->dispatch('updateAuditsRelationManager');
    }
}
