<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class JobCard extends Model
{

    use HasFactory,SoftDeletes;
    use LogsActivity;
    protected $table = 'job_cards';
    protected $casts = [
        'bill_date' => 'datetime',
        'job_card_created_at' => 'datetime',
    ];

    protected $fillable = [
        'id', 'required_sheet','status_id','product_id','set_no', 'job_card_created_at'
    ];
    
    public function mediaFiles(){
        return $this->belongsToMany('App\Models\Media','job_card_medias');
    }

    public function jobCardItems(){
        return $this->hasMany(JobCardItem::class,'job_card_id','id');
    }

    public function jobCardPapers(){
        return $this->hasMany(JobCardPaper::class,'job_card_id','id');
    }

    public function putPaperWarehouse(){
        return $this->hasOne(PaperWarehouse::class,'put_job_card_id','id');
    }

    public function getPaperWarehouse(){
        return $this->hasOne(PaperWarehouse::class,'get_job_card_id','id');
    }

    public function planningBy(){
        return $this->hasOne(Admin::class,'id','planning_by');
    }

    public function deyDetail(){
        return $this->hasOne(DyeDetails::class,'id','dye_details_id');
    }

    public function paper(){
        return $this->hasOne(Product::class,'id','product_id');
    }

    public function cutting(){
        return $this->hasOne('App\Models\Cutting', 'job_card_id', 'id');
    }

    public function printing(){
        return $this->hasOne('App\Models\Printing', 'job_card_id', 'id');
    }


    public function chemicalCoating(){
        return $this->hasOne('App\Models\ChemicalCoating', 'job_card_id', 'id');
    }

    public function lamination(){
        return $this->hasOne('App\Models\Lamination', 'job_card_id', 'id');
    }

    public function embossing(){
        return $this->hasOne('App\Models\Embossing', 'job_card_id', 'id');
    }


    public function leafing(){
        return $this->hasOne('App\Models\Leafing', 'job_card_id', 'id');
    }

    public function dyeCutting(){
        return $this->hasOne('App\Models\DyeCutting', 'job_card_id', 'id');
    }

    public function spotUv(){
        return $this->hasOne('App\Models\SpotUv', 'job_card_id', 'id');
    }

    public function pasting(){
        return $this->hasOne('App\Models\Pasting', 'job_card_id', 'id');
    }


    public function jobCardHistory(){
        return $this->hasMany(JobCardHistory::class,'job_card_id','id');
    }


    public function jobCardHistorySingle(){
        return $this->hasOne(JobCardHistory::class,'job_card_id','id');
    }

    public function jobCardUser(){
        return $this->hasMany(JobCardUser::class,'job_card_id','id');
    }


    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->useLogName('Job Card')
        ->setDescriptionForEvent(fn(string $eventName) => "Job Card has been {$eventName}")
        ->logOnly(['*']);
        // Chain fluent methods for configuration options
    }


    protected static function boot(){
        parent::boot();

        static::creating(function ($jobCard) {
            $jobCardNo = static::orderBy('id', 'desc')->first();
            $nextNumber = $jobCardNo ? intval($jobCardNo->job_card_no) + 1 : 1;
            $jobCard->job_card_no = str_pad($nextNumber, 3, '0', STR_PAD_LEFT);
        });
    }
}
