<?php

namespace App\Listeners;

use App\Enums\DetailType;
use App\Events\BalanceUpdated;
use App\Models\EventDetail;
use Filament\Notifications\Notification;

class UpdateBalance {

    public function __construct()
    {
        //
    }

    public function handle(BalanceUpdated $balanceUpdated): void {
        $eventBooked = $balanceUpdated->eventBooking;
        $eventDetails = $eventBooked->eventDetails()->get();
        $apForEvent = floatval($eventBooked->amount_paid);
        $calculatedTAQuery = $eventDetails->firstWhere('detail_type', '==', DetailType::CalculatedTotalAmount->value);
        $calculatedBQuery = $eventDetails->firstWhere('detail_type', '==', DetailType::CalculatedBalance->value);
        $cbForEvent = floatval($calculatedBQuery->amount ?? 0);
        $calculatedTotalAmount = floatval($calculatedTAQuery->amount);
        $calculatedBalance = $calculatedTotalAmount - $apForEvent;
        $this->updateBalance($eventBooked, $cbForEvent, $calculatedBalance, $calculatedBQuery);
    }

    private function updateBalance($eventBooked, $cbForEvent, $calculatedBalance, $calculatedBQuery)
    {
        info("CB: " . $cbForEvent);
        info('calculated: ' . $calculatedBalance);
        if ($cbForEvent == $calculatedBalance) {
            Notification::make()->title('Balance Already Updated!')
                ->warning()->seconds(2)->send();
        } else if ($calculatedBQuery != null && $cbForEvent != $calculatedBalance) {
            $calculatedBQuery->update(['amount' => $calculatedBalance]);
            Notification::make()->title('Updated Balance!')
                ->warning()->seconds(2)->send();
        } else {
            EventDetail::create([
                'detail_type' => DetailType::CalculatedBalance,
                'amount' => $calculatedBalance,
                'event_booking_id' => $eventBooked->id,
                'details_value' => 'Updated Balance'
            ]);
            Notification::make()->title('Updated Balance!')
                ->success()->seconds(2)->send();
        }
    }
}
