<?php

namespace App\Http\Resources\Admin\Transaction;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
use App\Models\Admin;

class TransactionResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    function quantityStatus($quabtity, $type){
        if($type == 'Debit' or $type == 'debit'){
            return '<span class="badge bg-white text-danger mb-0 fs-6"><i class="ri-arrow-down-line align-middle"></i> -'.$quabtity.'</span>';
        }

        if($type == 'Credit' or $type == 'credit'){
            return '<span class="badge bg-white text-success mb-0 fs-6"><i class="ri-arrow-up-line align-middle"></i> +'.$quabtity.'</span>';
        }
    }

    function transactionFor($jobCard, $materialInward){
        if(@$jobCard != ''){
            return 'Job card No. '.@$jobCard;
        }
        if($materialInward != ''){
            return 'Bill No. '.$materialInward;
        }
    }

    public function toArray($request)
    {
        return [
            'sn' => ++$request->start,
            'id' => $this->id,
            'type' => $this->type,
            'product' => $this->product->name,
            'current' => $this->current_quantity,
            'new' => $this->quantityStatus($this->new_quantity, $this->type),
            'total' => $this->total_quantity,
            'transaction_by' => $this->trancationBy->name,
            'transaction_for' => $this->transactionFor(@$this->job_card_id?@$this->jobCard->job_card_no:null, $this->material_inward_id?$this->materialInward->bill_no:null),
            'remark' => $this->remarks,
            'created_at' => $this->created_at->format('d M Y'),
        ];
    }
}
