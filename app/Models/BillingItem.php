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
<<<<<<< HEAD
<<<<<<< HEAD

    public function billing(){
        return $this->hasOne(Billing::class, 'id', 'billing_id');
    }

=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
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
