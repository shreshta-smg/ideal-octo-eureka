<?php
namespace App\Events;

use App\Models\EventBooking;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class BalanceUpdated {
    use Dispatchable, InteractsWithSockets, SerializesModels;
    public function __construct(public EventBooking $eventBooking)
    {
        //
    }
}
