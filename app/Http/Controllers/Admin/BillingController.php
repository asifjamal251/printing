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
        // Fetch the BillingItem with related data
        $billing = BillingItem::with(['PO', 'POItem'=>function($query){
            $query->with('paperType');
        }])->findOrFail($id);
         $job_card = JobCardItem::where('purchase_order_item_id', $billing->POItem->id)->with(['jobCard'=>function($query){
            $query->with('paper');
        }])->first();

        $gsm = Str::of($job_card->jobCard->paper->name)->explode('-')->last();

        // Check if a Coa record exists for the BillingItem
        $coa = Coa::firstOrNew(['billing_item_id' => $billing->id]);

        // If the Coa record doesn't exist, populate and save it
        if (!$coa->exists) {
            $coa->title = 'COLOUR IMPRESSIONS';
            $coa->address = 'KALKA LINK ROAD, SHAMDO, CHANDIGARH ROAD, RAJPURA';
            $coa->manufacturing_date = $billing->created_at;
            $coa->product_code = $billing->POItem->art_code;
            $coa->product = $billing->POItem->carton_name;
            $coa->client = $billing->PO->client->company_name;
            $coa->save();

            // Define CoaItem data and save each CoaItem
            $coaItemsData = [
                ['parameter' => 'SUBSTRACT', 'specification' => $billing->POItem->paperType->type, 'result' => $gsm.' GSM ( +-5%)'],
                ['parameter' => 'COLOUR', 'specification' => $job_card->jobCard->color, 'result' => 'OK'],
                ['parameter' => 'SIZE', 'specification' => $billing->POItem->carton_size.' MM', 'result' => '+-1MM'],
                ['parameter' => 'COATING', 'specification' => $billing->POItem->coatingType->type, 'result' => 'OK'],
                ['parameter' => 'STYLE', 'specification' => 'RTF', 'result' => 'OK'],
                ['parameter' => 'EMBOSS', 'specification' => 'NA', 'result' => 'OK'],
                ['parameter' => 'SCUFF TEST', 'specification' => '--', 'result' => 'OK'],
                ['parameter' => 'PRODUCT TEST', 'specification' => '--', 'result' => 'OK'],
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

        // Pass the data to the view
        return view('admin.billing.coa', compact('billing'));
    }

     public function caoUpdate(Request $request, $id){
        $coa = Coa::find($id);
        $coa->expiry_date = Carbon::parse($request->expiry_date)->format('Y-m-d');
        $coa->manufacturing_date = Carbon::parse($request->manufacturing_date)->format('Y-m-d');
        $coa->save();

        // Assuming coa_id exists in the Billing model and corresponds to the id of the Coa record
        $coa = Coa::where('id', $id)->with(['coaItems'])->first();

        $pdf = PDF::loadView('admin.pdf.coa', compact('coa'));

        // Download the PDF
        return $pdf->download($coa->product.'.pdf');

        // Redirect back to the admin.index route
       // return "ok";

     }


   
}
