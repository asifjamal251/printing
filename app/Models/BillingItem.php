<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BillingItem extends Model
{
    protected $fillable = [
	    'id', 'job_card_id','status_id', 'job_card_item_id', 'purchase_order_item_id', 'purchase_order_id','billing_id'
	];

	public function jobCard(){
    	return $this->hasMany(JobCard::class, 'id', 'job_card_id');
    }
    public function jobCardItem(){
    	return $this->hasOne(JobCardItem::class, 'id', 'job_card_item_id');
    }
    public function POItem(){
    	return $this->hasOne(PurchaseOrderItem::class, 'id', 'purchase_order_item_id');
    }

    public function PO(){
    	return $this->hasOne(PurchaseOrder::class, 'id', 'purchase_order_id');
    }

    public function COA(){
        return $this->hasOne(Coa::class,'billing_item_id','id');
    }
}
