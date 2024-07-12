<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PaperWarehouse extends Model
{
    use HasFactory;
    protected $fillable = ['put_job_card_id','get_job_card_id'];
}
