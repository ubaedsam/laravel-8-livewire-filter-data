<?php

namespace Database\Seeders;

use App\Models\Employees;
use App\Models\Keluarga;
use App\Models\KepalaKeluarga;
use App\Models\Product;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        // Employees::factory(30)->create();
        // Product::factory(20)->create();
        // KepalaKeluarga::factory(10)->create();
        Keluarga::factory(30)->create();
    }
}
