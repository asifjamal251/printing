<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Billing extends Model
{
    protected $fillable = [
	    'id', 'job_card_id','status_id', 'job_card_item_id', 'purchase_order_item_id', 'purchase_order_id','client_id'
	];


    public function client(){
        return $this->hasOne(Client::class,'id','client_id');
    }


    public function billingItems(){
        return $this->hasMany(BillingItem::class,'billing_id','id');
    }




    protected static function boot()
    {
        parent::boot();

        static::creating(function ($billingNo) {
            $billingNo->bill_no = 'REF' . static::generateSerialNumber();
        });
    }

    protected static function generateSerialNumber()
    {
        return str_pad(static::max('id') + 1, 6, '0', STR_PAD_LEFT);
    }

}
