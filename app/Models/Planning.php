<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Planning extends Model
{
    use HasFactory;
    protected $fillable = ['purchase_order_item_id','status', 'ups'];

    public function dyeDetails(){
        return $this->hasOne(DyeDetails::class,'id','dye_detail_id');
    }

    public function oldDyeDetails(){
        return $this->hasOne(DyeDetails::class,'id','old_dye_detail_id');
    }

    public function PO(){
        return $this->hasOne(PurchaseOrder::class,'id','purchase_order_id');
    }

    public function POItems(){
        return $this->hasOne(PurchaseOrderItem::class,'id','purchase_order_item_id');
    }
}
