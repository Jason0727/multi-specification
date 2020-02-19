<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GoodSku extends Model
{
    /**
     * 关联商品模型
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function good()
    {
        return $this->belongsTo(Good::class, 'good_id', 'id');
    }

    /**
     * 关联SKU与属性值模型
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function goodSkuRelationValue()
    {
        return $this->hasMany(GoodSkuRelationValue::class, 'sku_id', 'id');
    }

    /**
     * 关联属性值模型
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function goodAttrValue()
    {
        return $this->belongsToMany(GoodAttrValue::class, GoodSkuRelationValue::class, 'sku_id', 'attr_value_id');
    }
}
