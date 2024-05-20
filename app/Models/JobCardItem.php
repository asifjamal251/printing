<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class JobCardItem extends Model
{

    use HasFactory,SoftDeletes;
    use LogsActivity;
    protected $fillable = ['id', 'job_card_id', 'planning_id', 'sheet_size', 'total_sheet'];
    protected $table = 'job_card_items';

    public function POItem(){
        return $this->hasOne(PurchaseOrderItem::class,'id','purchase_order_item_id');
    }
    public function PO(){
        return $this->hasOne(PurchaseOrder::class,'id','purchase_order_id');
    }
    public function jobCard(){
        return $this->hasOne(JobCard::class,'id','job_card_id');
    }

    


    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->useLogName('Job CardI tem')
        ->setDescriptionForEvent(fn(string $eventName) => "Job Card Item has been {$eventName}")
        ->logOnly(['*']);
        // Chain fluent methods for configuration options
    }
}
