<?php

namespace App\Http\Resources\Admin\Planning;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
class PlanningResource extends JsonResource
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
            'id'=>@$this->id,
            'po_no'=>@$this->PO->po_no,
            'client'=>@$this->PO->client->company_name,
            'carton_name'=>@$this->POItems->carton_name,
            'art_work'=>@$this->POItems->art_work,
            'carton_size'=>@$this->POItems->carton_size,
            'coating'=>@$this->POItems->coatingType->type,
            'other_coating'=>@$this->POItems->otherCoatingType->type,
            'quantity'=>@$this->POItems->quantity,
            'emb_leaf'=>embossingLeafing(@$this->POItems->embossing_leafing),
            'dye_no'=>@$this->dyeDetails?@$this->dyeDetails->dye_no.'/'.@$this->dyeDetails->ups.'-'.@$this->dyeDetails->dye_lock:'NEW',
            'sheet_size'=>@$this->dyeDetails?@$this->dyeDetails->sheet_size:'N/A',
            'paper'=>@$this->POItems->paperType->type,
            'ups'=>@$this->ups??'',
            'status_id'=>@$this->status_id,
            'created_at' => @$this->created_at->format('d F, Y'),
        ];
    }
}
