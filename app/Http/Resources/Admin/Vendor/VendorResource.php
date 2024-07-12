<?php

namespace App\Http\Resources\Admin\Vendor;

use Illuminate\Http\Resources\Json\JsonResource;
class VendorResource extends JsonResource
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
            'sn' => ++$request->start,
            'id' => $this->id,
            'name' => $this->name,
            'email' => $this->email,
            'phone_no' => $this->phone_no,
            'city' => $this->city_id?$this->city->name:'N/A',
            'address' => $this->address,
            'created_at' => $this->created_at->format('d M Y'),
        ];
    }
}
