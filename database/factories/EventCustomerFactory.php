<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class EventCustomerFactory extends Factory {

    public function definition(): array
    {
        return [
            'full_name' => fake()->firstName() . ' ' . fake()->lastName(),
            'address' => fake()->address(),
            'email_id' => fake()->safeEmail(),
            'contact_number' => fake()->e164PhoneNumber(),
            'alternate_number' => fake()->phoneNumber()
        ];
    }
}



