<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Warehouse\WarehouseCollection;
use App\Models\AddToCart;
use App\Models\Billing;
use App\Models\BillingItem;
use App\Models\JobCard;
use App\Models\JobCardHistory;
use App\Models\JobCardItem;
use App\Models\Project;
use App\Models\PurchaseOrder;
use App\Models\PurchaseOrderItem;
use App\Models\Warehouse;
use Carbon\Carbon;
use Illuminate\Http\Request;

class WarehouseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
     
        if ($request->wantsJson()) {
            $datas = Warehouse::orderByRaw("CASE
                WHEN status_id = 2 THEN 1
                WHEN status_id = 23 THEN 2
                ELSE 3
            END")
            ->orderBy('updated_at', 'desc')
            ->where(function($query) {
                $query->where('new_quantity', '>', 0)
                      ->orWhere('old_quantity', '>', 0);
            })
            ->with(['PO', 'POItem']);

            


            if ($request->fromDate && $request->toDate) {
                $from = Carbon::parse($request->fromDate)->format('Y-m-d');
                $to = Carbon::parse($request->toDate)->format('Y-m-d');
                $datas->whereBetween('updated_at', [$from." 00:00:00", $to." 23:59:59"]);
            }

            $totaldata = $datas->count();
            $search = $request->search['value'];
            if ($search) {
                $datas->where('job_no', 'like', '%'.$search.'%');
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();
            return response()->json(new WarehouseCollection($datas));
        }
        return view('admin.warehouse.list');
    }



    function addToBill(Request $request, $id){
        $user = auth('admin')->user();
        $this->validate($request,[
            'quantity'=>'required',  
            'box'=>'required',  
            'id'=>'required',  
        ]);

        $warehouse = Warehouse::where('id', $id)->with(['PO', 'POItem'])->first();
        $total_quantity = $warehouse->old_quantity + $warehouse->new_quantity;
        if($request->quantity <= $total_quantity){

            $billing = Billing::firstorNew(['client_id' => $warehouse->PO->client->id, 'status_id' => 2]);
            $billing->save();

            $billing_item = BillingItem::firstorNew(['billing_id' => $billing->id, 'purchase_order_item_id'=>$warehouse->POItem->id]);
            $billing_item->purchase_order_id = $warehouse->PO->id;
            $billing_item->ready_quantity = $request->quantity;
            $billing_item->ready_box = $request->box;
            $billing_item->carton_name = $warehouse->POItem->carton_name;
            $billing_item->save(); 

            $total_quantity = $warehouse->old_quantity + $warehouse->new_quantity;
            $remain_quantity = $total_quantity - $billing_item->ready_quantity;
            $warehouse->old_quantity = $remain_quantity;
            $warehouse->new_quantity = 0;
            $warehouse->save();

            $po_item = PurchaseOrderItem::where('id', $warehouse->POItem->id)->first();
            if ($po_item) {
                if ($po_item->bill_no) {
                    $po_item->bill_no .= ', ' . $billing->bill_no;
                } else {
                    $po_item->bill_no = $billing->bill_no;
                }
                $po_item->save();
            }

            return response()->json(['message'=>'Item Added For Billing', 'class'=>'success']);
        }
        return response()->json(['message'=>'Check Total Quanty', 'class'=>'error']);
    }
}
