<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGoodSkusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('good_skus', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('good_id')->comment('外键,关联商品ID');
            $table->integer('stock')->comment('库存');
            $table->integer('price')->comment('价格');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('good_skus');
    }
}
