<?php
namespace App\Http\Resources\Admin\Billing;
use Illuminate\Http\Resources\Json\JsonResource;

class BillingResource extends JsonResource

{
    function sheetSize($sheet_size, $warehouse_paper){
        if($warehouse_paper != ''){
            return '<p class=border-bottom "m-0">'.$sheet_size.'</p><p class="m-0 text-danger">'.$warehouse_paper.'</p>';
        }
        return $sheet_size;
    }



    public function toArray($request)

    {

        return [

            'sn' => ++$request->start,
            'id' => $this->id,            
            'client_id' => $this->client->id,
            'client_name' => $this->client->company_name,
            'city' => $this->client->city,
            'reference_no' => $this->bill_no,
<<<<<<< HEAD
<<<<<<< HEAD
            'invoice_no' => $this->invoice_no??'N/A',
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af

            'status'=> status($this->status_id),
            'status_id'=>$this->status_id,
            'job_card_id'=>$this->job_card_id,
        ];

    }

}

