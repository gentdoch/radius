<?php

namespace Database\Seeders;

use App\Models\Clients;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DummySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for ($i = 100; $i < 200; $i++) {

            Clients::create([
                'service' => '1019090' . $i,
                'name' => 'Robot' . $i,
                'address' => 'Tulungagung',
                'staff' => '5',
                'status' => '0',
            ]);
        }
    }
}
