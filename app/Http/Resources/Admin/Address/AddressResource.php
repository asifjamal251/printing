<?php

namespace App\Http\Resources\Admin\Address;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
class AddressResource extends JsonResource
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
            'company_name'=>$this->company_name, 
            'email'=>$this->email, 
            'mobile_number'=>$this->mobile_number, 
            'gst'=>$this->gst, 
            'city'=>$this->city->name, 
            'created_at' => $this->created_at->format('d F, Y'),
        ];
    }
}
