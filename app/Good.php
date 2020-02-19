<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Good extends Model
{
    /**
     * 关联商品SKU模型
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function goodSku()
    {
        return $this->hasMany(GoodSku::class, 'good_id', 'id');
    }

    /**
     * 商品属性
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function goodAttr()
    {
        return $this->hasMany(GoodAttr::class, 'good_id', 'id');
    }
}
