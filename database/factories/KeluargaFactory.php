<?php

namespace Database\Factories;

use App\Models\KepalaKeluarga;
use Illuminate\Database\Eloquent\Factories\Factory;

class KeluargaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $gender = $this->faker->randomElement(['male', 'female']);

        return [
            'name' => $this->faker->name($gender, 20),
            'kk_id' => KepalaKeluarga::inRandomOrder()->first()->id,
        ];
    }
}
