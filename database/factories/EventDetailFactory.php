<?php

namespace Database\Factories;

use App\Models\EventBooking;
use Illuminate\Database\Eloquent\Factories\Factory;

class EventDetailFactory extends Factory {
    public function definition(): array
    {
        $detailType = fake()->randomElement([
            "Menu",
            "Material"
        ]);
        return [
            'detail_type' => $detailType,
            'details_value' => fake()->sentence(),
            'other_requirements' => fake()->sentences(asText: true),
            'amount' => $detailType == 'Material' ? fake()->randomFloat(nbMaxDecimals: 2, min: 150, max: 3000) : null,
            'event_booking_id' => EventBooking::all(columns:['id'])->random()->id
        ];
    }
}
