<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GoodAttrValue extends Model
{
    /**
     * 关联商品属性模型
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function attr()
    {
        return $this->belongsTo(GoodAttr::class, 'attr_id', 'id');
    }

    /**
     * 关联SKU与属性关联模型
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function goodSkuRelationValue()
    {
        return $this->hasMany(GoodSkuRelationValue::class, 'attr_value_id', 'id');
    }
}
