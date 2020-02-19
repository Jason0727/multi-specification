<?php

use Illuminate\Support\Facades\Route;
use App\GoodSku;
use App\Good;
use Illuminate\Support\Facades\Log;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('test', function () {
    $goods = Good::with(['goodSku.goodAttrValue.attr'])->where('id', 1)->first()->toArray();
    $data = [];
    foreach ($goods['good_sku'] as $goodSku) {
        $tmp = [];
        foreach ($goodSku['good_attr_value'] as $goodAttrValue) {
            $tmp[$goodAttrValue['attr']['name']] = $goodAttrValue['value'];
        }
        $tmp['skuId'] = $goodSku['id'];
        $data[] = $tmp;
    }

     return ['data' => json_encode($data, JSON_UNESCAPED_UNICODE)];
});
