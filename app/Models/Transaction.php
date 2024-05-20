<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Transaction extends Model
{
    use HasFactory, SoftDeletes;

    public function product(){
        return $this->hasOne(Product::class,'id','product_id');
    }

    public function jobCard(){
        return $this->hasOne(JobCard::class,'id','job_card_id');
    }


    public function materialInward(){
        return $this->hasOne(MaterialInward::class,'id','material_inward_id');
    }

    public function issueItem(){
        return $this->hasOne(IssueItem::class,'id','issue_item_id');
    }


    // public function materialIssue(){
    //     return $this->hasOne(MaterialIssue::class,'id','material_issue_id');
    // }


    public function trancationBy(){
        return $this->hasOne(Admin::class,'id','trancation_by');
    }
}
