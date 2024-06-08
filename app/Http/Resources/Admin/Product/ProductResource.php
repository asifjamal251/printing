<?php

namespace App\Http\Resources\Admin\Product;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */

    function totalweight($wt_pc, $qty) {
        if (is_float($wt_pc) || (is_string($wt_pc) && preg_match('/\.\d*[1-9]/', $wt_pc))) {
            $formattedwt_pc = $wt_pc;
            $formattedqty = (float)$qty;
        } else {
            $formattedwt_pc = (int)$wt_pc;
            $formattedqty = (int)$qty;
        }

        $result = $formattedwt_pc * $formattedqty;

        // Format result to have two digits after the decimal point
        $result = number_format($result, 2);

        return $result;
    }

    function paperType($paperType){
        if($paperType == 1){
            return 'White';
        }

        if($paperType == 1){
            return 'Yellow';
        }

        if($paperType == ''){
            return 'N/A';
        }
    }

    
    public function toArray($request)
    {
        return [
            'sn'=>++$request->start,
            'id'=>$this->id,
            'product'=>$this->name, 
            'product_type'=>@$this->productType->type, 
            'paper_type'=>$this->paperType($this->paper_type), 
            'hsn'=>$this->hsn, 
            'code'=>$this->code, 
            'gsm'=>$this->gsm?'paper':'other', 
            'quantity'=>$this->quantity, 
            'wt_pc'=>$this->weight_per_piece, 
            'total_weight'=>$this->totalweight($this->weight_per_piece, $this->quantity), 
            'unit'=>$this->unit->name, 
            //'product_type'=>$this->gsm?'paper':'other', 
            'created_at' => $this->created_at->format('d F, Y'),
        ];
    }
}
