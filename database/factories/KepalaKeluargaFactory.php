<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class KepalaKeluargaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $gender = $this->faker->randomElement(['male']);

        return [
            'name' => $this->faker->name($gender, 20),
        ];
    }
}
