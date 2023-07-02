<?php

namespace Database\Factories;

use App\Models\Team;
use App\Models\Jabatan;
use Illuminate\Database\Eloquent\Factories\Factory;

class EmployeesFactory extends Factory
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
            'nama' => $this->faker->name($gender, 20),
            'usia' => $this->faker->randomDigit(25, 50),
            'tanggal_lahir' => $this->faker->dateTimeBetween($startDate = '-30 years', $endDate = 'now', $timezone = null),
            'alamat' => $this->faker->address(),
            'gaji' => $this->faker->creditCardNumber(),
            'm_kerja' => $this->faker->dateTimeBetween($startDate = '-4 years', $endDate = 'now', $timezone = null),
            's_kerja' => $this->faker->dateTime($max = 'now', $timezone = null),
            'jabatan_id' => Jabatan::inRandomOrder()->first()->id,
            'team_id' => Team::inRandomOrder()->first()->id,
        ];
    }
}
