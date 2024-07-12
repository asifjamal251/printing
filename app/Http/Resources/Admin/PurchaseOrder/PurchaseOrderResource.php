<?php

namespace App\Http\Resources\Admin\PurchaseOrder;

use App\Models\Admin;
use App\Models\PurchaseOrderItem;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class PurchaseOrderResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    
    private function designer($designer, $id)
    {
        $options = '<option selected="" value="">Choose an Designer</option>';

        foreach (Admin::where("role_id", 4)->get() as $designerAll) {
            $options .= '<option value="' . $designerAll->id . '" ' . ($designer == $designerAll->id ? 'selected' : '') . '>' . $designerAll->name . '</option>';
        }

        return collect([
            'html' => '<div class="m-0 form-group">' .
                        '<select data-id="'. $id.'" class="form-contro form-select-sm form-control-sm designerSelect" aria-label=".form-select-sm example">' .
                            $options .
                        '</select>' .
                    '</div>',
        ]);
    }

     public function itemStatus($id){
        $itemsCountByState = PurchaseOrderItem::where('purchase_order_id', $id)
                            ->select('status_id', DB::raw('count(*) as count'))
                            ->groupBy('status_id')
                            ->get();

        $statusCounts = [];

        foreach ($itemsCountByState as $itemCount) {
            $statusCounts[$itemCount->status_id] = '<span>'.$itemCount->count. '-' .status($itemCount->status_id).'</span>';
        }

        return $statusCounts;
    }

    public function toArray($request)
    {
        $designerData = $this->designer($this->designer, $this->id);
        $remarksCounts = $this->POItems->map(function ($item) {
            return $item->remarks ? 1 : 0;
        });
        $remarksCount = $remarksCounts->sum();

        $itemStatus = $this->itemStatus($this->id);
        return [
            'sn' => ++$request->start,
            'id' => $this->id,
            'client' => $this->client->company_name, 
            'po_no' => $this->po_no, 
            'po_remarks' => $this->po_remarks??'N/A', 
            'po_item_remarks' => $remarksCount ? '<span class="badge bg-secondary-subtle text-secondary badge-border">' . $remarksCount . '</span>' : 'N/A', 
            'po_date' => $this->po_date->format('d F, Y'), 
            'made_by' => $this->madeBy->name, 
            'designer' => $designerData['html'],
            'item_status' => $itemStatus,
            'status_id' => $this->status_id,
            'status' => $this->status ? $this->status->status_badge : 'NA',
            'created_at' => $this->created_at->format('d F, Y'),
        ];
    }
}
