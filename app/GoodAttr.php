<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GoodAttr extends Model
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
     * 关联属性值模型
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function attrValue()
    {
        return $this->hasMany(GoodAttrValue::class, 'attr_id', 'id');
    }
}
