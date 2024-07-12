<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class PurchaseOrder extends Model
{

    use HasFactory,SoftDeletes;
    use LogsActivity;
    protected $table = 'purchase_orders';
    protected $fillable = ['id', 'status_id'];
    protected $casts = [
        'po_date' => 'datetime',
    ];

    public function client(){
        return $this->hasOne(Client::class,'id','client_id');
    }
    public function madeBy(){
        return $this->hasOne(Admin::class,'id','made_by');
    }

    public function status(){
        return $this->hasOne(Status::class,'id','status_id');
    }

    public function purchaseOrderItems(){
        return $this->hasMany(PurchaseOrderItem::class,'purchase_order_id','id');
    }

    public function POItems(){
        return $this->hasMany(PurchaseOrderItem::class,'purchase_order_id','id');
    }

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->useLogName('Purchase Order')
        ->setDescriptionForEvent(fn(string $eventName) => "Purchase Order has been {$eventName}")
        ->logOnly(['*']);
        // Chain fluent methods for configuration options
    }
}
