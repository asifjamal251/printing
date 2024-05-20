<?php

namespace App\Http\Resources\Admin\MaterialInward;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
class MaterialInwardResource extends JsonResource
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
            'receipt_no'=>$this->receipt_no, 
            'vendor'=>$this->vendor->name, 
            'bill_no'=>$this->bill_no, 
            'bill_date'=>$this->bill_date->format('d F, Y'), 
            'subtotal'=>$this->subtotal, 
            'total_gst'=>$this->total_gst, 
            'total'=>$this->total, 
            'created_at' => $this->created_at->format('d F, Y'),
        ];
    }
}
