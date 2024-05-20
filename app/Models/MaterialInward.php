<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class MaterialInward extends Model
{

    use HasFactory,SoftDeletes;
    use LogsActivity;
    protected $table = 'material_inwards';
    protected $casts = [
        'bill_date' => 'datetime',
    ];

    public function vendor(){
        return $this->hasOne(Vendor::class,'id','vendor_id');
    }

    public function materialItems(){
        return $this->hasMany(MaterialInwardItem::class,'material_inward_id','id');
    }

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($receiptNo) {
            $receiptNo->receipt_no = 'REC' . static::generateSerialNumber();
        });
    }

    protected static function generateSerialNumber()
    {
        return str_pad(static::max('id') + 1, 4, '0', STR_PAD_LEFT);
    }

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->useLogName('Material Inward')
        ->setDescriptionForEvent(fn(string $eventName) => "Material Inward has been {$eventName}")
        ->logOnly(['*']);
        // Chain fluent methods for configuration options
    }
}
