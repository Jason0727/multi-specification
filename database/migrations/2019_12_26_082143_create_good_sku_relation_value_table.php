<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGoodSkuRelationValueTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('good_sku_relation_value', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('sku_id')->comment('外键，关联SKU ID');
            $table->bigInteger('attr_value_id')->comment('外键，关联属性值ID');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('good_sku_relation_value');
    }
}
