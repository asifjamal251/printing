<?php

namespace App\Http\Resources\Admin\Client;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
class ClientResource extends JsonResource
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
            'name'=>$this->name, 
            'mobile_no'=>$this->mobile, 
            'email'=>$this->email,
            'company_name'=>$this->company_name??'NA',
            'avatar'=>$this->media_id?'<img class="avatar-img img-fluid d-block avatar-sm img-thumbnail rounded img-fluid d-block" src="'.asset($this->media->file).'">':'<div class="avatar-sm"><span class="avatar-title rounded bg-'.$this->color.'-subtle  text-'.$this->color.' fs-14">'.Str::upper(Str::limit($this->first_name, 1,'').Str::limit($this->last_name, 1,'')).'</span></div>'
        ];
    }
}
