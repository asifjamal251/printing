<?php

namespace App\Http\Resources\Admin\Issue;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
class IssueResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    
    public function toArray($request)
    {
        return [
            'sn'=>++$request->start,
            'id'=>$this->id,
            'issue_no'=>$this->issue_no, 
            'items'=>$this->issueItems->count(), 
            // 'job_card_no'=>$this->job_card_id?$this->jobCard->job_card_no:'N/A', 
            // 'product'=>$this->product->name, 
            // 'quantity'=>$this->quantity, 
            // 'unit'=>$this->unit, 
            // 'issue_type'=>$this->issue_type, 
            // 'issue_by'=>$this->issueBy->name, 
            // 'oprator_name'=>$this->oprator_name??'N/A', 
            // 'issue_for'=>$this->issue_for?$this->issueFor->name:'Inssued for a Job Card', 
            'created_at' => $this->created_at->format('d F, Y'),
        ];
    }
}
