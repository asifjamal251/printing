<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\LogOptions;

class MaterialOrder extends Model
{

    use HasFactory,SoftDeletes;

    protected $fillable = ['id', 'status_id'];
    protected $casts = [
        'mo_date' => 'datetime',
    ];

    public function vendor(){
        return $this->hasOne(Vendor::class,'id','vendor_id');
    }
    public function madeBy(){
        return $this->hasOne(Admin::class,'id','admin_id');
    }

    public function status(){
        return $this->hasOne(Status::class,'id','status_id');
    }

    public function materialItems(){
        return $this->hasMany(MaterialOrderItem::class,'material_order_id','id');
    }

    public function MOItems(){
        return $this->hasMany(PurchaseOrderItem::class,'purchase_order_id','id');
    }


    protected static function boot()
    {
        parent::boot();

        static::creating(function ($receiptNo) {
            $receiptNo->order_no = 'MO' . static::generateSerialNumber();
        });
    }

    protected static function generateSerialNumber()
    {
        return str_pad(static::max('id') + 1, 4, '0', STR_PAD_LEFT);
    }

}
