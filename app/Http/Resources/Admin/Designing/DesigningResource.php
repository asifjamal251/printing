<?php

namespace App\Http\Resources\Admin\Designing;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
class DesigningResource extends JsonResource
{
    /**
     * Transform the resource into an array.->PO->client->company_name
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */

    private function getCartonNames($items){
        $cartonElements = [];
        
        foreach ($items as $item) {
            $cartonElements[] = '<p class="carton-list"> <span data-id="' . @$item->POItem->id . '" class="remove-planning"><i class="ri-close-line fs-15"></i></span>' . @$item->POItem->carton_name . '-['. @$item->POItem->art_work .']</p>';
        }

        return implode('', $cartonElements);
    }



    private function getCartonQuantity($items){
        $cartonElements = [];
        
        foreach ($items as $item) {
            $cartonElements[] = '<p class="carton-list">' . $item->quantity . '</p>';
        }

        return implode('', $cartonElements);
    }


    private function getClientName($items){
        $clientNames = [];
        foreach ($items as $item) {
            $clientNames[] = $item->PO->client->company_name;
        }

        $uniqueClientNames = array_unique($clientNames);
        return implode('</p><p> ', $uniqueClientNames);
    }

    private function cartonUPS($items, $status){
        $eachCartonUPS = [];
        foreach ($items as $item) {
            if($status == 5){
                 $eachCartonUPS[] = '<input type="number" data-id="'.@$item->POItem->id.'" readonly="readonly" class="form-control text-center form-control-sm ups-input" name="ups" value="'. $item->ups .'" placeholder="UPS" style="max-width:40px;margin-bottom:3px;">';
            }else{
                 $eachCartonUPS[] = '<input type="number" data-id="'.@$item->POItem->id.'"  class="form-control text-center form-control-sm ups-input" name="ups" value="'. $item->ups .'" placeholder="UPS" style="max-width:40px;margin-bottom:3px;">';
            }
           
        }
        return implode('', $eachCartonUPS);
    }
    
    public function toArray($request)
    {
        return [
            'sn'=>++$request->start,
            'id'=>$this->id,
            'job_card_id'=>$this->job_card_id,
            'carton_name'=>$this->job_card_id?$this->getCartonNames(@$this->jobCard->jobCardItems):'',
            'quantity'=>$this->job_card_id?$this->getCartonQuantity($this->jobCard->jobCardItems):'',
            'job_card_no'=>$this->job_card_id?$this->jobCard->mix?$this->jobCard->job_card_no:$this->jobCard->job_card_no.' (Mix)':'',
            'client'=>$this->job_card_id?$this->getClientName($this->jobCard->jobCardItems):'',
            'ups'=>$this->job_card_id?$this->cartonUPS($this->jobCard->jobCardItems, $this->status_id):'',
            'dye_details'=>$this->job_card_id?$this->jobCard->dye_details??'NEW':'',
            'total_sheet'=>$this->job_card_id?$this->jobCard->required_sheet??'':'',
            'sheets_size'=>$this->job_card_id?$this->jobCard->sheet_size??'':'',
            'paper_type'=>$this->job_card_id?$this->jobCard->jobCardItems[0]->POItem->paperType->type:'',
            'gsm'=>$this->job_card_id?$this->jobCard->jobCardItems[0]->POItem->gsm:'N/A',
            'paper_type'=>@$this->job_card_id?@$this->jobCard->jobCardItems[0]->POItem->paperType->type:'',
            'color'=>$this->job_card_id?$this->jobCard->color??'':'',
            'set_no'=>$this->set_no??'',
            'status'=> status($this->status_id),
            'status_id'=> $this->status_id,
        ];
    }
}
