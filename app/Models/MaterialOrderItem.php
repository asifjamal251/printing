<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class MaterialOrderItem extends Model
{

    use HasFactory,SoftDeletes;
    use LogsActivity;
    protected $fillable = ['id', 'status_id', 'quantity'];


    public function status(){
        return $this->hasOne(Status::class,'id','status_id');
    }

    public function coatingType(){
        return $this->hasOne(CoatingType::class,'id','coating_type_id');
    }

    public function otherCoatingType(){
        return $this->hasOne(OtherCoatingType::class,'id','other_coating_type_id');
    }


    public function paperType(){
        return $this->hasOne(ProductType::class,'id','paper_type_id');
    }

    public function jobCardItems(){
        return $this->hasOne(JobCardItem::class,'purchase_order_item_id','id');
    }

    public function product(){
        return $this->hasOne(Product::class, 'id', 'product_id');
    }

    public function unit(){
        return $this->hasOne(Unit::class,'id','unit_id');
    }


    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->useLogName('Purchase Order Item')
        ->setDescriptionForEvent(fn(string $eventName) => "Purchase Order Item has been {$eventName}")
        ->logOnly(['*']);
        // Chain fluent methods for configuration options
    }
}
