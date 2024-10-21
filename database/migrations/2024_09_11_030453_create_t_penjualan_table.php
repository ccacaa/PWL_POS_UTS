<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('t_penjualan', function (Blueprint $table) {
            $table->id('penjualan_id');
            $table->unsignedBigInteger('user_id')->index(); //index untuk foreignkey
            $table->string('pembeli', 50);
            $table->string('penjualan_kode', 20)->unique(); //unique untuk memastikan tidak ada ... yang sama
            $table->datetime('penjualan_tanggal');
            $table->timestamps();

            //mendefinisiman FK pada kolom ... mengacu pada kolom ... di tabel ...
            $table->foreign('user_id')->references('user_id')->on('m_user');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('t_penjualan');
    }
};