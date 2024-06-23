<?php

namespace Database\Factories;

use App\Models\EventCustomer;
use App\Models\User;
use App\Utils\InvoiceUtils;
use Illuminate\Database\Eloquent\Factories\Factory;


class EventBookingFactory extends Factory {
    public function definition(): array
    {
        $totalAmount = fake()->randomFloat(nbMaxDecimals: 2, min: 15000, max: 75000);
        $amountPaid = fake()->randomFloat(nbMaxDecimals: 2, min: 5000, max: 15000);
        $startDate = fake()->dateTimeBetween('+3 days', '+2 weeks');
        $endDate = fake()->dateTimeBetween($startDate, $startDate->format('Y-m-d H:i:s').' +7 days');
        $customerId = EventCustomer::all()->random()->id;
        $invoiceNumber = InvoiceUtils::generateInvoiceNumber();
        $regUserId = User::all(columns: ['id'])->random()->id;
        return [
            'name_of_the_event' => fake()->sentence(nbWords:3),
            'type_of_event' => fake()->randomElement(['Marriage','Birthday','Others']),
            'start_date' => $startDate,
            'end_date' => $endDate,
            'total_amount' => $totalAmount,
            'amount_paid' => $amountPaid,
            'invoice_number' => $invoiceNumber,
            'no_of_people_expected' => fake()->numberBetween(45, 500),
            'event_customer_id' => $customerId,
            'user_id' => $regUserId
        ];
    }
}
