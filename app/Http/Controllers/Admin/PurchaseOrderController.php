<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\PurchaseOrder\PurchaseOrderCollection;
use App\Models\Carton;
use App\Models\CartonPrice;
use App\Models\DyeDetails;
use App\Models\Planning;
use App\Models\PurchaseOrder;
use App\Models\PurchaseOrderItem;
<<<<<<< HEAD
<<<<<<< HEAD
use App\Rules\UniquePoNumber;
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
use Auth;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PurchaseOrderController extends Controller
{
   
    public function index(Request $request){
       
        if ($request->ajax()) {
            $datas = PurchaseOrder::orderBy('created_at', 'desc')->with(['client', 'madeBy', 'POItems'])->whereHas('POItems');
            $totaldata = $datas->count();

            $search = $request->search['value'];

            if ($search) {
                $datas->where('po_no', 'like', '%'.$search.'%');
                $datas->orWhereHas('POItems', function ($query) use ($search) {
                    $query->where('carton_name', 'like', '%'.$search.'%');
                    $query->orWhere('art_work', 'like', '%'.$search.'%');
                });
            }

            // if (auth('admin')->user()->role_id != 1 && auth('admin')->user()->role_id != 2) {
            //    $datas->where('designer', auth('admin')->user()->id);
            // }

            if($request->client){
                $datas->where('client_id', $request->client);
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new PurchaseOrderCollection($datas));
            
           
        }
        return view('admin.purchase-order.list');
    }

    public function create(){
        return view('admin.purchase-order.create');
    }



    public function store(Request $request) {

        //return $request->all();
        $user = Auth::guard('admin')->user();
        $this->validate($request, [
            'client' => 'required',
<<<<<<< HEAD
<<<<<<< HEAD
            'po_no' => ['required', new UniquePoNumber($request->client)],
=======
            'po_no' => 'required',
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
            'po_no' => 'required',
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
            'po_date' => 'required',
            'kt_docs_repeater_advanced' => 'required|array',
            'kt_docs_repeater_advanced.*.carton_name' => 'required',
            'kt_docs_repeater_advanced.*.pre_carton_name' => 'required',
            'kt_docs_repeater_advanced.*.carton_size' => ['required', 'regex:/^[^\s]+$/'],
            'kt_docs_repeater_advanced.*.quantity' => 'required|integer', 
            'kt_docs_repeater_advanced.*.rate' => 'required|numeric', 
<<<<<<< HEAD
<<<<<<< HEAD
            'kt_docs_repeater_advanced.*.gsm' => 'required|numeric', 
            'kt_docs_repeater_advanced.*.art_work' => 'required', 
            'kt_docs_repeater_advanced.*.paper_type' => 'required', 
            'kt_docs_repeater_advanced.*.coating_type' => 'required', 
=======
            'kt_docs_repeater_advanced.*.gsm' => 'required', 
            'kt_docs_repeater_advanced.*.art_work' => 'required', 
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
            'kt_docs_repeater_advanced.*.gsm' => 'required', 
            'kt_docs_repeater_advanced.*.art_work' => 'required', 
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
        ],
        [
            'kt_docs_repeater_advanced.*.carton_name.required' => 'carton name is required.',
            'kt_docs_repeater_advanced.*.pre_carton_name.required' => 'carton name is required.',
            'kt_docs_repeater_advanced.*.carton_size.required' => 'carton size is required.',
            'kt_docs_repeater_advanced.*.carton_size.regex' => 'Carton size should not contain spaces.',
            'kt_docs_repeater_advanced.*.quantity.required' => 'quantity is required.',
            'kt_docs_repeater_advanced.*.quantity.integer' => 'quantity is must be integer.',
            'kt_docs_repeater_advanced.*.rate.required' => 'rate is required.',
            'kt_docs_repeater_advanced.*.rate.numeric' => 'rate is must be numeric.',
            'kt_docs_repeater_advanced.*.gsm.required' => 'gsm is required.',
<<<<<<< HEAD
<<<<<<< HEAD
            'kt_docs_repeater_advanced.*.gsm.numeric' => 'gsm is numeric.',
            'kt_docs_repeater_advanced.*.art_work.required' => 'Art Work is required.',
            'kt_docs_repeater_advanced.*.paper_type.required' => 'Paper Type is required.',
            'kt_docs_repeater_advanced.*.coating_type.required' => 'Coating_ Type is required.',
=======
            'kt_docs_repeater_advanced.*.art_work.required' => 'Art Work is required.',
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
            'kt_docs_repeater_advanced.*.art_work.required' => 'Art Work is required.',
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
        ]);

        $po = new PurchaseOrder;
        $po->client_id = $request->client;
        $po->po_no = $request->po_no;
        $po->po_remarks = $request->po_remarks;
        $po->made_by = $user->id;
        $po->designer = 3;
        $po->po_date = Carbon::parse($request->po_date)->format('Y-m-d');

        if($po->save()){ 
            $inputs = $request->input('kt_docs_repeater_advanced');
            foreach ($inputs as $input) {
                
                $item = new PurchaseOrderItem;
                $item->purchase_order_id = $po->id;
                $item->carton_name = $input['pre_carton_name'];
                $item->carton_size = Str::upper($input['carton_size']);
                $item->quantity = $input['quantity'];
                $item->rate = $input['rate'];
                $item->dye_details_id = $input['dye_details'];
                $item->coating_type_id = $input['coating_type'];
                $item->other_coating_type_id = $input['other_coating_type'];
                $item->embossing_leafing = $input['embossing_leafing'];
                $item->paper_type_id = $input['paper_type'];
                $item->gsm = $input['gsm'];
                $item->art_work = Str::upper($input['art_work']);
                $item->remarks = $input['remarks'];
                $item->back_print = $input['back_print'];
                $item->save();

                $carton = Carton::firstorNew(['client_id' => $request->client, 'carton_name' => $item->carton_name, 'carton_size' => $item->carton_size]);
                $carton->art_work = Str::upper($input['art_work']);
                $carton->rate = null;
                $carton->coating_type_id = $item->coating_type_id;
                $carton->other_coating_type_id = $item->other_coating_type_id;
                $carton->embossing_leafing = $item->embossing_leafing;
                $carton->paper_type_id = $item->paper_type_id;
                $carton->gsm = $item->gsm;
                $carton->save();

                $carton_price = CartonPrice::firstorNew(['carton_id' => $carton->id, 'price' => $item->rate, 'quantity' => $item->quantity]);
                $carton_price->save();

            }
            
            return redirect()->route('admin.purchase-order.index')->with(['class'=>'success','message'=>'Paper Inward saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }

    public function show(Request $request, $id){

       $po = PurchaseOrder::where('id', $id)->with(['client','madeBy', 'purchaseOrderItems'=>function($query){
                $query->with(['coatingType', 'otherCoatingType', 'paperType']);
                }])->first();

        if ($request->ajax()) {
            $datas =  PurchaseOrder::where('id', $id)->with(['client','madeBy', 'purchaseOrderItems'=>function($query){
                $query->with(['coatingType', 'otherCoatingType', 'paperType']);
            }]);
            $order = $datas->first();
            $totaldata = $order->purchaseOrderItems->count();
            $result["length"]= $request->length;
            $result["recordsTotal"]= $totaldata;
            $result["recordsFiltered"]= $datas->count();
            $records = $datas->limit($request->length)->offset($request->start)->first();

            $result['data'] = [];           
            foreach ($records->purchaseOrderItems as $data) {
                $result['data'][] =[
                    'sn'=>++$request->start, 
                    'id'=>$data->id,
                    'po_id'=>$id,
                    'remarks'=>$data->remarks??'N/A', 
                    'carton_name'=>$data->carton_name, 
                    'art_work'=>$data->art_work, 
                    'carton_size'=>$data->carton_size,
                    'coating_type'=>$data->coatingType->type, 
                    'other_coating_type'=>$data->otherCoatingType->type, 
                    'quantity'=>$data->quantity, 
                    'quantity_status'=>$data->quantity_status, 
                    'rate'=>$data->rate, 
                    'rate_status'=>$data->rate_status, 
                    'paper_type'=>$data->paperType->type, 
                    'embossing_leafing'=>embossingLeafing($data->embossing_leafing), 
                    'status'=>status($data->status_id), 
                    'status_id'=>$data->status_id, 
                    
                ];
            }
            return $result;
        }


        return view('admin.purchase-order.view', compact('po'));
    }


    public function edit($id){
        $po =  PurchaseOrder::where('id', $id)->with(['client','madeBy'])->first();
        return view('admin.purchase-order.edit', compact('po'));
    }


    public function update(Request $request, $id) {
        //return $request->deleted;
        //return $request->all();
        $user = Auth::guard('admin')->user();
        $this->validate($request, [
            'client' => 'required',
<<<<<<< HEAD
<<<<<<< HEAD
=======
            'po_no' => 'required',
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
            'po_no' => 'required',
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
            'po_date' => 'required',
            'kt_docs_repeater_advanced' => 'required|array',
            'kt_docs_repeater_advanced.*.carton_name' => 'required',
            'kt_docs_repeater_advanced.*.carton_size' => ['required', 'regex:/^[^\s]+$/'],
            'kt_docs_repeater_advanced.*.quantity' => 'required|integer', 
            'kt_docs_repeater_advanced.*.rate' => 'required|numeric', 
<<<<<<< HEAD
<<<<<<< HEAD
            'kt_docs_repeater_advanced.*.gsm' => 'required|numeric', 
            'kt_docs_repeater_advanced.*.art_work' => 'required', 
            'kt_docs_repeater_advanced.*.paper_type' => 'required', 
            'kt_docs_repeater_advanced.*.coating_type' => 'required', 
=======
            'kt_docs_repeater_advanced.*.gsm' => 'required',
            'kt_docs_repeater_advanced.*.art_work' => 'required',
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
            'kt_docs_repeater_advanced.*.gsm' => 'required',
            'kt_docs_repeater_advanced.*.art_work' => 'required',
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
        ],
        [
            'kt_docs_repeater_advanced.*.carton_name.required' => 'carton name is required.',
            'kt_docs_repeater_advanced.*.carton_size.required' => 'carton size is required.',
            'kt_docs_repeater_advanced.*.carton_size.regex' => 'Carton size should not contain spaces.',
            'kt_docs_repeater_advanced.*.quantity.required' => 'quantity is required.',
            'kt_docs_repeater_advanced.*.quantity.integer' => 'quantity is must be integer.',
<<<<<<< HEAD
<<<<<<< HEAD
            'kt_docs_repeater_advanced.*.rate.required' => 'rate is required.',
            'kt_docs_repeater_advanced.*.rate.numeric' => 'rate is must be numeric.',
            'kt_docs_repeater_advanced.*.gsm.required' => 'gsm is required.',
            'kt_docs_repeater_advanced.*.gsm.numeric' => 'gsm is numeric.',
            'kt_docs_repeater_advanced.*.art_work.required' => 'Art Work is required.',
            'kt_docs_repeater_advanced.*.paper_type.required' => 'Paper Type is required.',
            'kt_docs_repeater_advanced.*.coating_type.required' => 'Coating Type is required.',
=======
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
            'kt_docs_repeater_advanced.*.gsm.required' => 'GSM is required.',
            'kt_docs_repeater_advanced.*.art_work.required' => 'Art Work is required.',
            'kt_docs_repeater_advanced.*.rate.required' => 'rate is required.',
            'kt_docs_repeater_advanced.*.rate.numeric' => 'rate is must be numeric.',
<<<<<<< HEAD
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
        ]);

        $po = PurchaseOrder::find($id);
        $po->client_id = $request->client;
        $po->po_no = $request->po_no;
        $po->po_remarks = $request->po_remarks;
        $po->made_by = $user->id;
        $po->po_date = Carbon::parse($request->po_date)->format('Y-m-d');

        if($po->save()){ 
            $inputs = $request->input('kt_docs_repeater_advanced');
            foreach ($inputs as $input) {
                

                if($input['item'] != null && $input['item'] != ''){
                    $item = PurchaseOrderItem::find($input['item']);
                }
                else{
                    $item = new PurchaseOrderItem;
                }

                $item->quantity = $input['quantity'];
                $item->purchase_order_id = $po->id;
                $item->carton_name = $input['carton_name'];
                $item->carton_size = Str::upper($input['carton_size']);
                $item->rate = $input['rate'];
                $item->coating_type_id = $input['coating_type'];
                $item->dye_details_id = $input['dye_details'];
                $item->other_coating_type_id = $input['other_coating_type'];
                $item->embossing_leafing = $input['embossing_leafing'];
                $item->paper_type_id = $input['paper_type'];
                $item->gsm = $input['gsm'];
                $item->art_work = Str::upper($input['art_work']);
                $item->remarks = $input['remarks'];
                $item->back_print = $input['back_print'];
                $item->save();

                $carton = Carton::firstorNew(['client_id' => $request->client, 'carton_name' => $item->carton_name, 'carton_size' => $item->carton_size]);
                $carton->art_work = Str::upper($input['art_work']);
                $carton->rate = null;
                $carton->coating_type_id = $item->coating_type_id;
                $carton->other_coating_type_id = $item->other_coating_type_id;
                $carton->embossing_leafing = $item->embossing_leafing;
                $carton->paper_type_id = $item->paper_type_id;
                $carton->gsm = $item->gsm;
                $carton->save();

                $carton_price = CartonPrice::firstorNew(['carton_id' => $carton->id, 'price' => $item->rate, 'quantity' => $item->quantity]);
                $carton_price->save();

            }
        
            if($request->deleted){
                PurchaseOrderItem::whereIn('id', $request->deleted)->delete();
            }
            
            
            return redirect()->route('admin.purchase-order.index')->with(['class'=>'success','message'=>'Paper Inward saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }




    public function destroy($id)
    {
       
        $purchage_order = PurchaseOrder::where(['status_id' => 2, 'id' => $id])->first();
        if($purchage_order->delete()){
<<<<<<< HEAD
<<<<<<< HEAD
            PurchaseOrderItem::where('purchase_order_id', $id)->delete();
=======
            PurchaseOrderItem::whereIn('purchase_order_id', $purchage_order)->delete();
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
            PurchaseOrderItem::whereIn('purchase_order_id', $purchage_order)->delete();
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
            return response()->json(['message'=>'Dye Details  deleted successfully ...', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }

    public function assignDesigner(Request $request, $id)
    {
        $job_card = PurchaseOrder::find($id);
        if($request->designer != ''){
            $job_card->designer = $request->designer;
        }else{
            $job_card->designer = null;
        }
        if($job_card->save()){
             return response()->json(['message'=>'designer assign successfully ...', 'class'=>'success']);  
        } 
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }


    public function poItemsUpdate(Request $request){
        

        if($request->quantity_status){
            foreach ($request->quantity_status as $id){
                $item = PurchaseOrderItem::where('id', $id)->whereIn('status_id', [2])->first();
                if($item != ''){
                    $item->quantity_status = 1;
                    $item->save();
                } 
            }
        } 

        if($request->rate_status){
            foreach ($request->rate_status as $id){
                $item = PurchaseOrderItem::where('id', $id)->whereIn('status_id', [2])->first();
                if($item != ''){
                    $item->rate_status = 1;
                    $item->save();
                } 
            }
        }  

        if($request->quantity_status_not){
            foreach ($request->quantity_status_not as $id){
                $item = PurchaseOrderItem::where('id', $id)->whereIn('status_id', [2])->first();
                if($item != ''){
                    $item->quantity_status = 0;
                    $item->status_id = 2;
                    $item->save();
                    Planning::where('purchase_order_item_id', $id)->delete();  
                } 
            }
        } 


        if($request->rate_status_not){
            foreach ($request->rate_status_not as $id){
                $item = PurchaseOrderItem::where('id', $id)->whereIn('status_id', [2])->first();
                if($item != ''){
                    $item->rate_status = 0;
                    $item->status_id = 2;
                    $item->save();
                    Planning::where('purchase_order_item_id', $id)->delete();  
                } 
            } 
        }

        $purchaseOrderId = $request->po_id;
        $totalItems = PurchaseOrderItem::where('purchase_order_id', $purchaseOrderId)->count();
        $completedItems = PurchaseOrderItem::where('purchase_order_id', $purchaseOrderId)->where(['quantity_status' => 1, 'rate_status' => 1])->count();

        if ($totalItems == $completedItems) {
            PurchaseOrder::where('id', $purchaseOrderId)->update(['status_id' => 6]);
        }
        else{
            PurchaseOrder::where(['id' => $purchaseOrderId])->update(['status_id'=>7]);
        }
        return response()->json(['message'=>'PO Item Updated','error' => false, 'class'=>'success']);
        
    }

    public function rateQuantity(Request $request)
    {
        //return $request->all();
        if($request->type == 'quantity'){
            PurchaseOrderItem::where(where(['id', $request->id, 'status_id' => 2]))->update(['quantity'=>$request->data]);
        }
        if($request->type == 'rate'){
            PurchaseOrderItem::where(['id', $request->id, 'status_id' => 2])->update(['rate'=>$request->data]);
        }

        $purchaseOrderId = $request->po_id;
        $totalItems = PurchaseOrderItem::where('purchase_order_id', $purchaseOrderId)->count();
        $completedItems = PurchaseOrderItem::where('purchase_order_id', $purchaseOrderId)
            ->where(['quantity_status' => 1, 'rate_status' => 1])
            ->count();

        if ($totalItems == $completedItems) {
            PurchaseOrder::where('id', $purchaseOrderId)->update(['status_id' => 6]);
        }
        else{
            PurchaseOrder::where(['id' => $purchaseOrderId])->update(['status_id'=>7]);
        }
        return response()->json(['message'=>'PO Item Updated','error' => false, 'class'=>'success']);
    }



    public function assignToPlanning(Request $request){
        //return $request->all();
       
        $po = $request->po_id;
        $op = PurchaseOrder::where('id', $po)->first();
        if($op->designer == ''){
             return response()->json(['message'=>'Please select a designer','error' => true, 'assign' => false, 'class'=>'error']);
        }
        $count = 1;
        $count_not = 1;
        foreach ($request->ids as $id) {
            $item = PurchaseOrderItem::where('id', $id)->whereIn('status_id', [2,11])->first();
            if($item && $item->quantity_status != 0 && $item->rate_status != 0){
                $dye_details = DyeDetails::where('id', $item->dye_details_id)->first();
                $planning = Planning::firstOrNew(['purchase_order_item_id' => $item->id]);
                $planning->purchase_order_id = $item->purchase_order_id;
                $planning->dye_detail_id = $dye_details->id??null;
                $planning->old_jobcard_id = null;
                $planning->ups = $dye_details->ups??null;
                $planning->designer = $op->designer;
                $planning->save();

                $item->status_id = 11;
                $item->save();


                $purchaseOrderId = $item->purchase_order_id;

                $totalItems = PurchaseOrderItem::where('purchase_order_id', $purchaseOrderId)->count();
                $completedItems = PurchaseOrderItem::where('purchase_order_id', $purchaseOrderId)
                    ->where(['quantity_status' => 1, 'rate_status' => 1])
                    ->count();

                if ($totalItems == $completedItems) {
                    PurchaseOrder::where('id', $purchaseOrderId)->update(['status_id' => 6]);
                }

                else{
                    PurchaseOrder::where(['id' => $item->purchase_order_id])->update(['status_id'=>7]);
                }

                
            }else{
                $count_not++;
            }
            $count++;
        }
        if($count_not == $count){
            return response()->json(['message'=>'carton not assign to planning.','error' => false, 'assign' => true, 'class'=>'error']);
        }
        return response()->json(['message'=>'carton assign to planning.','error' => false, 'assign' => true, 'class'=>'success']);
        
    }



    
}
