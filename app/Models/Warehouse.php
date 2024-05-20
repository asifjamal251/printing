<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Warehouse extends Model
{
    protected $fillable = [
	    'id', 'job_card_id','status_id','purchase_order_item_id', 'carton_name', 'carton_size', 'client_id'
	];

	public function jobCard(){
    	return $this->hasOne(JobCard::class, 'id', 'job_card_id');
    }
    public function POItem(){
        return $this->hasOne(PurchaseOrderItem::class,'id','purchase_order_item_id');
    }
    public function PO(){
        return $this->hasOne(PurchaseOrder::class,'id','purchase_order_id');
    }

    public function user(){
        return $this->hasOne(Admin::class,'id','user_id');
    }
}
