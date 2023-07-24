<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKeluargaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('keluarga', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->bigInteger('kk_id')->unsigned()->nullable();
            $table->timestamps();
            $table->foreign('kk_id')->references('id')->on('kepala_keluarga')->onDelete('cascade'); //menghubungkan ke dalam tabel kepala keluarga
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('keluarga');
    }
}
