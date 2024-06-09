<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateObatPenyakitTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('obat_penyakit', function (Blueprint $table) {
            $table->integer('id_penyakit');
            $table->integer('id_obat');
            $table->foreign('id_penyakit')->references('id')->on('penyakit')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('id_obat')->references('id')->on('obat')->onDelete('cascade')->onUpdate('cascade');
            $table->index(['id_penyakit', 'id_obat']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('obat_penyakit');
    }
}
