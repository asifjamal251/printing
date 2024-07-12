<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class Designing extends Model
{

    use HasFactory,SoftDeletes;
    use LogsActivity;
    protected $table = 'designings';

    protected $fillable = ['job_card_id', 'sheet_size', 'total_sheet', 'status_id'];

    public function jobCard(){
        return $this->hasOne(JobCard::class,'id','job_card_id');
    }


    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->useLogName('Designing')
        ->setDescriptionForEvent(fn(string $eventName) => "Designing has been {$eventName}")
        ->logOnly(['*']);
        // Chain fluent methods for configuration options
    }
}
