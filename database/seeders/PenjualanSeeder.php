<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class PenjualanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        $data=[
            [
                'user_id' => $faker->numberBetween(1,3),
                'pembeli' => $faker->name,
                'penjualan_kode' => 'PNJ1',
                'penjualan_tanggal' => '2024-09-14 00:00:00'
            ],
            [
                'user_id' => 1,
                'pembeli' => $faker->name,
                'penjualan_kode' => 'PNJ2',
                'penjualan_tanggal' => '2024-09-14 00:00:00'
            ],
            [
                'user_id' => 1,
                'pembeli' => $faker->name,
                'penjualan_kode' => 'PNJ3',
                'penjualan_tanggal' => '2024-09-14 00:00:00'
            ],
            [
                'user_id' => 1,
                'pembeli' => $faker->name,
                'penjualan_kode' => 'PNJ4',
                'penjualan_tanggal' => '2024-09-14 00:00:00'
            ],
            [
                'user_id' => 1,
                'pembeli' => $faker->name,
                'penjualan_kode' => 'PNJ5',
                'penjualan_tanggal' => '2024-09-14 00:00:00'
            ],
            [
                'user_id' => 2,
                'pembeli' => $faker->name,
                'penjualan_kode' => 'PNJ6',
                'penjualan_tanggal' => '2024-09-14 00:00:00'
            ],
            [
                'user_id' => 2,
                'pembeli' => $faker->name,
                'penjualan_kode' => 'PNJ7',
                'penjualan_tanggal' => '2024-09-14 00:00:00'
            ],
            [
                'user_id' => 3,
                'pembeli' => $faker->name,
                'penjualan_kode' => 'PNJ8',
                'penjualan_tanggal' => '2024-09-14 00:00:00'
            ],
            [
                'user_id' => 3,
                'pembeli' => $faker->name,
                'penjualan_kode' => 'PNJ9',
                'penjualan_tanggal' => '2024-09-14 00:00:00'
            ],
            [
                'user_id' => 3,
                'pembeli' => $faker->name,
                'penjualan_kode' => 'PNJ10',
                'penjualan_tanggal' => '2024-09-14 00:00:00'
            ],
        ];
        DB::table('t_penjualan')->insert($data);
    }
}