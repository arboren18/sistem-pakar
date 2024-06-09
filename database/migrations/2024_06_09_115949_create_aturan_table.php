<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAturanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('aturan', function (Blueprint $table) {
            $table->integer('id_penyakit');
            $table->integer('id_gejala');
            $table->foreign('id_gejala')->references('id')->on('gejala')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('id_penyakit')->references('id')->on('penyakit')->onDelete('cascade')->onUpdate('cascade');
            $table->index(['id_gejala', 'id_penyakit']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('aturan');
    }
}
