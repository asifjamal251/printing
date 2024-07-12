<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Billing\BillingCollection;
use App\Models\Billing;
use App\Models\BillingItem;
use App\Models\Coa;
use App\Models\CoaItem;
use App\Models\JobCard;
use App\Models\JobCardItem;
use App\Models\Pasting;
use App\Models\Project;
use App\Models\PurchaseOrderItem;
use App\Models\Warehouse;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use PDF;


class BillingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        if ($request->wantsJson()) {
            $datas = Billing::orderByRaw("CASE
                WHEN status_id = 2 THEN 1
                WHEN status_id = 5 THEN 2
                ELSE 3
            END")->orderBy('created_at', 'desc')
                ->with('client');

            $search = $request->search['value'];

            if ($search) {
                $datas->whereHas('billingItems', function ($query) use ($search) {
                    $query->where('carton_name', 'like', '%' . $search . '%');
                });
            }


            if (auth('admin')->user()->role_id == 1 || auth('admin')->user()->role_id == 2){
                $datas->whereIn('status_id', $request->status?[$request->status]:[2,5]);
            } else{
                $datas->whereIn('status_id', $request->status?[$request->status]:[2]);
            }

            if ($request->fromDate && $request->toDate) {
                $from = Carbon::parse($request->fromDate)->format('Y-m-d');
                $to = Carbon::parse($request->toDate)->format('Y-m-d');
                $datas->whereBetween('updated_at', [$from." 00:00:00", $to." 23:59:59"]);
            }

            $totaldata = $datas->count();
           

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();
            return response()->json(new BillingCollection($datas));
        }
        return view('admin.billing.list');
    }


    public function show($id)
    {
       $billing = Billing::where('id', $id)->with(['billingItems'=>function($query){
        $query->with(['PO','POItem']);
       }])->first();
       return view('admin.billing.view', compact('billing'));
    }


    public function edit($id)
    {
        $billing = Billing::where('id', $id)->with('billingItems')->first();
        return view('admin.billing.edit', compact('billing'));
    }


    public function update(Request $request)
    {
       

        $this->validate($request, [
            'billing_items' => 'required|array',
            'billing_items.*.carton_name' => 'required', 
            'billing_items.*.ready_quantity' => 'required|less_than_old_quantity', 
            'billing_items.*.ready_box' => 'required', 
        ],
        [
            'billing_items.*.carton_name.required' => 'This field is required.',
            'billing_items.*.ready_quantity.required' => 'This field is required.',
            'billing_items.*.ready_quantity.less_than_old_quantity' => 'Quantity less than or equal to old quantity.',
            'billing_items.*.ready_box.required' => 'This field is required.',
        ]);

       // return $request->all();

        $inputs = $request->input('billing_items');
        foreach ($inputs as $input){
            $billing_item = BillingItem::find($input['id']);
            $billing_item->carton_name = $input['carton_name'];
            $billing_item->ready_quantity = $input['ready_quantity'];
            $billing_item->ready_box = $input['ready_box'];
            $billing_item->save();

            $warehouse = Warehouse::where(['client_id'=>$request->client_id, 'carton_name' => $billing_item->carton_name])->first();
            $warehouse->old_quantity = $input['old_quantity'] - $input['ready_quantity'];
            $warehouse->save();
        }
       return redirect()->route('admin.billing.index')->with(['class'=>'success','message'=>'Billing and Warehouse Updated Successfully.']);
    }
    public function changeStatus(Request $request)
    {
       if($request->data){
            foreach($request->data as $item){
                $billing = Billing::find($item['id']);
                $billing->status_id = 5;
                $billing->save();
            }
            return response()->json(['message'=>'Billing data updated successfully', 'class'=>'success']);
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }

    public function cao(Request $request, $id){
<<<<<<< HEAD
        $billing = BillingItem::with(['billing', 'PO', 'POItem'=>function($query){
=======
        $billing = BillingItem::with(['PO', 'POItem'=>function($query){
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
            $query->with('paperType');
        }])->findOrFail($id);

        $job_card = JobCardItem::where('purchase_order_item_id', $billing->POItem->id)->with(['jobCard'=>function($query){
            $query->with('paper');
        }])->first();
        $gsm = $billing->POItem->gsm;
        $coa_check = Coa::where(['billing_item_id' => $billing->id])->get();
        

        // If the Coa record doesn't exist, populate and save it
        if ($coa_check->count() > 0){

        }
        else{
            $coa = Coa::firstOrNew(['billing_item_id' => $billing->id]);
<<<<<<< HEAD
            $coa->invoice_date = $billing->created_at;
=======
            $coa->mfg_date = $billing->created_at;
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
            $coa->product_code = $billing->POItem->art_work;
            $coa->product = $billing->POItem->carton_name;
            $coa->client = $billing->PO->client->company_name;
            $coa->quantity = $billing->ready_quantity;
            $coa->save();

            // Define CoaItem data and save each CoaItem
            $coaItemsData = [
                ['parameter' => 'SUBSTRACT', 'specification' => $billing->POItem->paperType->type, 'result' => 'OK'],
                ['parameter' => 'GSM', 'specification' => $gsm, 'result' => 'OK'],
                ['parameter' => 'GRAIN', 'specification' => '', 'result' => ''],
                ['parameter' => 'BURSTING STRENGTH', 'specification' => 'AS PER BURST TEST', 'result' => 'OK'],
                ['parameter' => 'MOISTURE IN BOARD/PAPER', 'specification' => 'AS PER OVEN TEST', 'result' => 'OK'],
                ['parameter' => 'CRUSH TEST', 'specification' => 'GOOD FIBER TEAR', 'result' => 'OK'],
                ['parameter' => 'TEXT MATTER & DESIGN', 'specification' => $billing->POItem->carton_size, 'result' => 'OK'],
                ['parameter' => 'CARTON SIZE', 'specification' => 'AS PER PRINT PROOF', 'result' => 'OK'],
                ['parameter' => 'CARTON TYPE', 'specification' => '', 'result' => ''],
                ['parameter' => 'COLOUR', 'specification' => $job_card->jobCard->color, 'result' => 'OK'],
                ['parameter' => 'SPOT', 'specification' => 'AS PER QUALITY CHECK', 'result' => 'OK'],
                ['parameter' => 'COATING', 'specification' => $billing->POItem->coatingType->type, 'result' => 'OK'],
                ['parameter' => 'SCUFF TEST', 'specification' => '500 SCUFF', 'result' => 'OK'],
                ['parameter' => 'EMBOSSING', 'specification' => 'N/A', 'result' => 'OK'],
                ['parameter' => 'LEAFING', 'specification' => 'N/A', 'result' => 'OK'],
                ['parameter' => 'SPOT UV', 'specification' => 'AS PER ARTWORK', 'result' => 'OK'],
                ['parameter' => 'LAMINATION TEST/GLOSS/MATT/METALLIC', 'specification' => '', 'result' => 'OK'],
                ['parameter' => 'PACKING/BUNDLING-RUBBER <br> BEND OR CRAFT PAPER', 'specification' => 'AS PER INSTRUCTION', 'result' => 'OK'],
            ];

            foreach ($coaItemsData as $coaItemData) {
                $coaItem = new CoaItem($coaItemData);
                $coa->coaItems()->save($coaItem);
            }
        }

        // Fetch the updated BillingItem with related data
        $billing = BillingItem::with(['PO', 'POItem', 'COA'=>function($query){
            $query->with('COAItem');
        }])->findOrFail($id);

        $coa = Coa::where('billing_item_id', $id)->with(['coaItems'])->first();
        // Pass the data to the view
        return view('admin.billing.coa', compact('billing', 'coa'));
    }

     public function caoUpdate(Request $request, $id){
        //return $request->all();
<<<<<<< HEAD
        
        $coa = Coa::where('id', $id)->with(['coaItems'])->first();

        $billing = BillingItem::where('id', $coa->billing_item_id)->with(['PO', 'POItem'=>function($query){
            $query->with('paperType');
        }])->first();

        $coa->invoice_date = Carbon::parse($request->invoice_date)->format('Y-m-d');
        $coa->po_date = Carbon::parse($request->po_date)->format('Y-m-d');
        $coa->product_code = $billing->POItem->art_code;
        $coa->product = $billing->POItem->carton_name;
        $coa->batch_no = $request->batch_no;
        $coa->invoice_no = $request->invoice_no;
        $coa->quantity = $request->quantity;
        $coa->remarks = $request->remarks;
=======
        $billing = BillingItem::with(['PO', 'POItem'=>function($query){
            $query->with('paperType');
        }])->findOrFail($id);
        
        Coa::where('billing_item_id', $id)->with(['coaItems'])->first();

        $coa->mfg_date = Carbon::parse($request->mfg_date)->format('Y-m-d');
        $coa->exp_date = Carbon::parse($request->exp_date)->format('Y-m-d');
        $coa->product_code = $billing->POItem->art_code;
        $coa->product = $billing->POItem->carton_name;
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
        $coa->client = $billing->PO->client->company_name;
        $coa->save();

        $inputs = $request->input('item');
        foreach ($inputs as $key => $input) {
            $coaItem = CoaItem::find($key);
            $coaItem->parameter = $input['parameter'];
            $coaItem->specification = $input['specification'];
            $coaItem->result = $input['result'];
            $coaItem->save();
        }

        $coa = Coa::where('id', $id)->with(['coaItems'])->first();
        $pdf = PDF::loadView('admin.pdf.coa', compact('coa', 'billing'));

        return $pdf->download($coa->product.'.pdf');

     }

<<<<<<< HEAD
     public function invoiceUpdate(Request $request){
        //return $request->all();
        $billing = Billing::find($request->id);
        $billing->invoice_no = $request->invoice_no;
        $billing->status_id = 5;

        if($request->invoice_no == ''){
            return response()->json(['message'=>'Please Enter Invoice No.', 'class'=>'error', 'error'=>true]); 
        }

        if($billing->save()){
            $items = BillingItem::where('billing_id', $billing->id)->get();
            foreach($items as $item){
                $purchase = PurchaseOrderItem::find($item->purchase_order_item_id);
                $purchase->invoice_no = $billing->invoice_no;
                $purchase->status_id = 9;
                $purchase->save();
            }
            return response()->json(['message'=>'Invoice Number Updated', 'class'=>'success', 'error'=>false]); 
        }
        return response()->json(['message'=>'Please Select Job Card No.', 'class'=>'error', 'error'=>true]); 
     }

=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af

   
}
