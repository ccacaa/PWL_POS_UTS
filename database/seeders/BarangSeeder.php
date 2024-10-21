<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BarangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data=[
            // [
            //     'barang_id' => 1,
            //     'kategori_id' => 2,
            //     'barang_kode' => 'ELC0001KB',
            //     'barang_nama' => 'kabel',
            //     'harga_beli' => 10000,
            //     'harga_jual' => 25000
            // ],
            // [
            //     'barang_id' => 2,
            //     'kategori_id' => 2,
            //     'barang_kode' => 'ELC0002OL',
            //     'barang_nama' => 'oven listrik',
            //     'harga_beli' => 550000,
            //     'harga_jual' => 700000
            // ],
            // [
            //     'barang_id' => 3,
            //     'kategori_id' => 2,
            //     'barang_kode' => 'ELC0003HP',
            //     'barang_nama' => 'handphone',
            //     'harga_beli' => 5000000,
            //     'harga_jual' => 5500000
            // ],
            // [
            //     'barang_id' => 4,
            //     'kategori_id' => 2,
            //     'barang_kode' => 'ELC0004LP',
            //     'barang_nama' => 'laptop',
            //     'harga_beli' => 14000000,
            //     'harga_jual' => 14500000
            // ],
            // [
            //     'barang_id' => 5,
            //     'kategori_id' => 2,
            //     'barang_kode' => 'ELC0005MS',
            //     'barang_nama' => 'mouse',
            //     'harga_beli' => 85000,
            //     'harga_jual' => 100000
            // ],
            // [
            //     'barang_id' => 6,
            //     'kategori_id' => 1,
            //     'barang_kode' => 'RT0001KR',
            //     'barang_nama' => 'kursi',
            //     'harga_beli' => 75000,
            //     'harga_jual' => 90000
            // ],
            // [
            //     'barang_id' => 7,
            //     'kategori_id' => 1,
            //     'barang_kode' => 'RT0002MJ',
            //     'barang_nama' => 'meja',
            //     'harga_beli' => 70000,
            //     'harga_jual' => 85000
            // ],
            // [
            //     'barang_id' => 8,
            //     'kategori_id' => 1,
            //     'barang_kode' => 'RT0003TF',
            //     'barang_nama' => 'teflon',
            //     'harga_beli' => 40000,
            //     'harga_jual' => 55000
            // ],
            // [
            //     'barang_id' => 9,
            //     'kategori_id' => 1,
            //     'barang_kode' => 'RT0004KM',
            //     'barang_nama' => 'kompor',
            //     'harga_beli' => 150000,
            //     'harga_jual' => 175000
            // ],
            // [
            //     'barang_id' => 10,
            //     'kategori_id' => 1,
            //     'barang_kode' => 'RT0005SP',
            //     'barang_nama' => 'sapu',
            //     'harga_beli' => 20000,
            //     'harga_jual' => 35000
            // ],
            // [
            //     'barang_id' => 11,
            //     'kategori_id' => 5,
            //     'barang_kode' => 'PKN0001KMJ',
            //     'barang_nama' => 'kemeja',
            //     'harga_beli' => 100000,
            //     'harga_jual' => 150000
            // ],
            // [
            //     'barang_id' => 12,
            //     'kategori_id' => 5,
            //     'barang_kode' => 'PKN0002CLN',
            //     'barang_nama' => 'celana',
            //     'harga_beli' => 120000,
            //     'harga_jual' => 135000
            // ],
            // [
            //     'barang_id' => 13,
            //     'kategori_id' => 5,
            //     'barang_kode' => 'PKN0003JK',
            //     'barang_nama' => 'jaket',
            //     'harga_beli' => 250000,
            //     'harga_jual' => 270000
            // ],
            // [
            //     'barang_id' => 14,
            //     'kategori_id' => 5,
            //     'barang_kode' => 'PKN0004HJ',
            //     'barang_nama' => 'hijab',
            //     'harga_beli' => 25000,
            //     'harga_jual' => 40000
            // ],
            // [
            //     'barang_id' => 15,
            //     'kategori_id' => 5,
            //     'barang_kode' => 'PKN0002MKN',
            //     'barang_nama' => 'mukena',
            //     'harga_beli' => 100000,
            //     'harga_jual' => 115000
            // ],
            [
                'barang_id' => 16,
                'kategori_id' => 6,
                'barang_kode' => 'SBK-001',
                'barang_nama' => 'Beras Cap Jago (5kg)',
                'harga_beli' => 65000,
                'harga_jual' => 68000
            ],
            [
                'barang_id' => 17,
                'kategori_id' => 6,
                'barang_kode' => 'SBK-002',
                'barang_nama' => 'Beras Bramo Cap Lele',
                'harga_beli' => 80000,
                'harga_jual' => 83000
            ],
            [
                'barang_id' => 18,
                'kategori_id' => 7,
                'barang_kode' => 'SNK-001',
                'barang_nama' => 'Happy Tos',
                'harga_beli' => 10500,
                'harga_jual' => 11000
            ],
            [
                'barang_id' => 19,
                'kategori_id' => 7,
                'barang_kode' => 'SNK-002',
                'barang_nama' => 'Oreo',
                'harga_beli' => 7200,
                'harga_jual' => 7800
            ],
            [
                'barang_id' => 20,
                'kategori_id' => 8,
                'barang_kode' => 'MND-001',
                'barang_nama' => 'Sabun Lifebouy',
                'harga_beli' => 4250,
                'harga_jual' => 5000
            ],
            [
                'barang_id' => 21,
                'kategori_id' => 8,
                'barang_kode' => 'MND-002',
                'barang_nama' => 'Pasta Gigi Pepsoden',
                'harga_beli' => 6750,
                'harga_jual' => 7500
            ],
            [
                'barang_id' => 22,
                'kategori_id' => 9,
                'barang_kode' => 'BAY-001',
                'barang_nama' => 'Susu SGM Coklat 900gr',
                'harga_beli' => 92500,
                'harga_jual' => 95000
            ],
            [
                'barang_id' => 23,
                'kategori_id' => 9,
                'barang_kode' => 'BAY-002',
                'barang_nama' => 'Popok Mamy Poko',
                'harga_beli' => 56000,
                'harga_jual' => 58000
            ],
            [
                'barang_id' => 24,
                'kategori_id' => 10,
                'barang_kode' => 'MNM-001',
                'barang_nama' => 'Aqua 600ml',
                'harga_beli' => 3700,
                'harga_jual' => 4500
            ],
            [
                'barang_id' => 25,
                'kategori_id' => 10,
                'barang_kode' => 'MNM-002',
                'barang_nama' => 'Le Mineral',
                'harga_beli' => 3500,
                'harga_jual' => 4000
            ]
        ];
        DB::table('m_barang')->insert($data);
    }
}