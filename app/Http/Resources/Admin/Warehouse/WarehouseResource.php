<?php
namespace App\Http\Resources\Admin\Warehouse;
use App\Models\Admin;
use Illuminate\Http\Resources\Json\JsonResource;

class WarehouseResource extends JsonResource

{
 



    public function toArray($request)

    {
        
        return [
            'sn' => ++$request->start,
            'id' => $this->id,            
            'pasting_ready_box' => $this->pasting_ready_box,
            'carton_name' => $this->POItem->carton_name,
            'po_quantity' => $this->POItem->quantity,
            'client' => $this->PO->client->company_name, 
            'old_quantity' => $this->old_quantity??0, 
            'new_quantity' => $this->new_quantity??0, 
            'total_quantity' => $this->old_quantity + $this->new_quantity, 
            'status'=> status($this->status_id),
            'status_id'=>$this->status_id,
            'billing_quantity'=>$this->addToCart?$this->addToCart->quantity:'',
            'billing_box'=>$this->addToCart?$this->addToCart->box:'',
            'add_to_cart'=>$this->addToCart?true:false,
        ];

    }

}

