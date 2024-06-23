<?php

namespace App\Listeners;

use App\Enums\DetailType;
use App\Models\EventDetail;
use Carbon\Carbon;
use App\Events\TotalAmountUpdated;
use App\Utils\InvoiceUtils;
use Filament\Notifications\Notification;

class UpdateTotalAmount
{

    public function __construct()
    {
        //
    }
    /**
     * Handle the event.
     */
    public function handle(TotalAmountUpdated $event): void
    {
        $eventBooked = $event->eventBooking;
        $eventDetails = $eventBooked->eventDetails()->get();
        $numberOfDays = ceil(Carbon::parse($eventBooked->end_date)->diffInDays(Carbon::parse($eventBooked->start_date)));
        $allMaterialsForEvent = $eventDetails->where('detail_type', '==', DetailType::Material->name);
        $amtFromMaterials = $allMaterialsForEvent->map(fn(EventDetail $ed) => floatval($ed->amount) ?? 0 * $numberOfDays)->reduce(fn($a, $b) => $a + $b, 0);
        $taForEvent = floatval($eventBooked->total_amount);
        $calculatedTAQuery = $eventDetails->firstWhere('detail_type', '==', DetailType::CalculatedTotalAmount->value);
        $ctaForEvent = floatval($calculatedTAQuery->amount ?? 0);
        $txQuery = $eventDetails->firstWhere('detail_type', '==', DetailType::Tax->value);
        $tr = floatval($txQuery->amount ?? 0);
        $calculatedTotalAmount = $taForEvent + $amtFromMaterials;
        info("Before TAX: " . $calculatedTotalAmount);
        $calculatedTotalAmount = InvoiceUtils::taxCalcualtion($tr, $calculatedTotalAmount) + $calculatedTotalAmount;
        info("After TAX: " . $calculatedTotalAmount);
        $this->updateTotalAmount($eventBooked, $ctaForEvent, $calculatedTotalAmount, $calculatedTAQuery);
    }

    private function updateTotalAmount($eventBooked, $ctaForEvent, $calculatedTotalAmount, $calculatedTAQuery)
    {
        info("CTA: " . $ctaForEvent);
        info('calculated: ' . $calculatedTotalAmount);
        if ($ctaForEvent == $calculatedTotalAmount) {
            Notification::make()->title('TotalAmount Already Updated!')->warning()->seconds(2)->send();
        } else if ($calculatedTAQuery != null && $ctaForEvent != $calculatedTotalAmount) {
            $calculatedTAQuery->update(['amount' => $calculatedTotalAmount]);
            Notification::make()->title('Updated TotalAmount!')->warning()->seconds(2)->send();
        } else {
            EventDetail::create([
                'detail_type' => DetailType::CalculatedTotalAmount,
                'amount' => $calculatedTotalAmount,
                'event_booking_id' => $eventBooked->id,
                'details_value' => 'Updated TotalAmount',
            ]);
            Notification::make()->title('Updated TotalAmount!')->success()->seconds(2)->send();
        }
    }
}
