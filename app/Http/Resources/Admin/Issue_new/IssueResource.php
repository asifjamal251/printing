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
            'total'=>$this->issueItems->count(), 
            'user'=>$this->user->name, 
            'created_at' => $this->created_at->format('d F, Y'),
        ];
    }
}
