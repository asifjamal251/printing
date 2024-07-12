<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class DyeDetails extends Model
{

    use HasFactory,SoftDeletes;
    use LogsActivity;
    protected $table = 'dye_details';


    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->useLogName('Dye Details')
        ->setDescriptionForEvent(fn(string $eventName) => "Dye Details has been {$eventName}")
        ->logOnly(['*']);
        // Chain fluent methods for configuration options
    }


    // protected static function boot(){
    //     parent::boot();

    //     static::creating(function ($jobCard) {
    //         $dyeNo = static::orderBy('id', 'desc')->first();
    //         $nextNumber = $dyeNo ? intval($dyeNo->dye_no) + 1 : 1;
    //         $nextNumberWithoutZeros = ltrim($nextNumber, '0');
    //         $jobCard->dye_no = $nextNumberWithoutZeros;
    //     });
    // }
}
