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
        Schema::create('t_stok', function (Blueprint $table) {
            $table->id('stok_id');
            $table->unsignedBigInteger('supplier_id')->index(); //index untuk foreign key
            $table->unsignedBigInteger('barang_id')->index(); //index untuk foreignkey
            $table->unsignedBigInteger('user_id')->index(); //index untuk foreign key
            $table->datetime('stok_tanggal');
            $table->integer('stok_jumlah');
            
            $table->timestamps();

            //mendefinisiman FK pada kolom ... mengacu pada kolom ... di tabel ....
            $table->foreign('supplier_id')->references('supplier_id')->on('m_supplier');
            $table->foreign('barang_id')->references('barang_id')->on('m_barang');
            $table->foreign('user_id')->references('user_id')->on('m_user');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('t_stok');
    }
};