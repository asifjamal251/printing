<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class IssueItem extends Model
{
    protected $fillable = [
	    'id', 'job_card_id','status_id','product_id'
	];

    public function issue(){
        return $this->hasOne(Issue::class, 'id', 'issue_id');
    }

	public function jobCard(){
    	return $this->hasOne(JobCard::class, 'id', 'job_card_id');
    }

    public function product(){
        return $this->hasOne(Product::class, 'id', 'product_id');
    }

    public function issueBy(){
        return $this->hasOne(Admin::class,'id','issue_by');
    }

    public function issueFor(){
        return $this->hasOne(Requisition::class,'id','issue_for');
    }

}
