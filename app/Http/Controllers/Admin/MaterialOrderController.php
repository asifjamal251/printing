<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\MaterialOrder\MaterialOrderCollection;
use App\Models\MaterialOrder;
use App\Mail\MaterialOrderConfirmatiom;
use App\Models\MaterialOrderItem;
use App\Models\MaterialOrderPlate;
use App\Models\Media;
use App\Models\PaperQuality;
use App\Models\PaperType;
use App\Models\Product;
use App\Models\Transaction;
use Auth;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Mail;

class MaterialOrderController extends Controller
{
   
    public function index(Request $request){
       
        if ($request->ajax()) {
            $datas = MaterialOrder::orderBy('created_at', 'desc')->with(['vendor']);
            $totaldata = $datas->count();

            $search = $request->search['value'];

            if ($search) {
                $datas->where('receipt_no', 'like', '%'.$search.'%');
            }

            if($request->vendor){
                $datas->where('vendor_id', $request->vendor);
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new MaterialOrderCollection($datas));
            
           
        }
        return view('admin.material-order.list');
    }

    public function create(){
        return view('admin.material-order.create');
    }



    public function store(Request $request) {

        //return $request->all();
        $user = Auth::guard('admin')->user();
        $this->validate($request, [
            'vendor' => 'required',
            'mo_date' => 'required',
            'kt_docs_repeater_advanced' => 'required|array',
            'kt_docs_repeater_advanced.*.product' => 'required',
            'kt_docs_repeater_advanced.*.unit' => 'required',
            'kt_docs_repeater_advanced.*.quantity' => 'required', 
            'kt_docs_repeater_advanced.*.item_per_packet' => 'required', 
            'kt_docs_repeater_advanced.*.total_item' => 'required', 
            'kt_docs_repeater_advanced.*.rate_on' => 'required', 
            'kt_docs_repeater_advanced.*.gst' => 'required',
        ],
        [
            'kt_docs_repeater_advanced.*.unit.required' => 'Unit is required.',
            'kt_docs_repeater_advanced.*.product.required' => 'product is required.',
            'kt_docs_repeater_advanced.*.quantity.required' => 'quantity is required.',
            'kt_docs_repeater_advanced.*.item_per_packet.required' => 'item per packet is required.',
            'kt_docs_repeater_advanced.*.total_item.required' => 'total item is required.',
            'kt_docs_repeater_advanced.*.rate_on.required' => 'rate_on is required.',
            'kt_docs_repeater_advanced.*.gst.required' => 'gst is required.',
        ]);

        $material_order = new MaterialOrder;
        $material_order->admin_id = $user->id;
        $material_order->vendor_id = $request->vendor;
        $material_order->mo_date = Carbon::parse($request->mo_date)->format('Y-m-d');

        $subtotal = 0; 
        $total_gst = 0; 
        $total = 0;

        if($material_order->save()){ 
            $inputs = $request->input('kt_docs_repeater_advanced');
            foreach ($inputs as $input) {
                $product = Product::find($input['product']);
                $item = new MaterialOrderItem;
                $item->material_order_id = $material_order->id;
                $item->category_id = $product->category_id;
                $item->product_id = $product->id;
                $item->item_name = $product->name;
                $item->hsn = $product->hsn;
                $item->quantity = $input['quantity'];
                $item->item_per_packet = $input['item_per_packet'];
                $item->weight_per_piece = $input['weight_per_piece'];
                $item->total_item = $input['total_item'];
                $item->total_weight = $input['total_weight'];
                $item->unit_id = $input['unit'];
                $item->rate_on = $input['rate_on'];
                $item->rate = $input['rate'];
                $item->gst = $input['gst'];
                $item->gst_amount = $input['gst_amount'];
                $item->amount = $input['amount'];
                $item->save();

                $subtotal += $input['rate'];
                $total_gst += $input['rate']*$input['gst']/100;
                $total += $input['rate'] + $input['rate']*$input['gst']/100;

                
            }
            $material_order->subtotal = $subtotal;
            $material_order->total_gst = $total_gst;
            $material_order->total = $total;
            $material_order->save();
            
            return redirect()->route('admin.material-order.index')->with(['class'=>'success','message'=>'Paper Inward saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }


    public function edit($id){
        $material =  MaterialOrder::where('id', $id)->with(['vendor', 'materialItems'])->first();
        return view('admin.material-order.edit', compact('material'));
    }


    public function show($id){
        $material =  MaterialOrder::where('id', $id)->with(['madeBy', 'vendor', 'materialItems'=>function($query){
            $query->with(['product', 'unit']);
        }])->first();
        return view('admin.material-order.view', compact('material'));
    }


    public function update(Request $request, $id) {
       // return $request->deleted;
        //return $request->all();
        $user = Auth::guard('admin')->user();
        $this->validate($request, [
            'vendor' => 'required',
            'bill_no' => 'required',
            'bill_date' => 'required',
            'kt_docs_repeater_advanced' => 'required|array',
            'kt_docs_repeater_advanced.*.unit' => 'required',
            'kt_docs_repeater_advanced.*.product' => 'required',
            'kt_docs_repeater_advanced.*.quantity' => 'required', 
            'kt_docs_repeater_advanced.*.item_per_packet' => 'required', 
            'kt_docs_repeater_advanced.*.total_item' => 'required', 
            'kt_docs_repeater_advanced.*.rate_on' => 'required', 
            'kt_docs_repeater_advanced.*.gst' => 'required',
        ],
        [
            'kt_docs_repeater_advanced.*.unit.required' => 'Unit is required.',
            'kt_docs_repeater_advanced.*.product.required' => 'product is required.',
            'kt_docs_repeater_advanced.*.quantity.required' => 'quantity is required.',
            'kt_docs_repeater_advanced.*.item_per_packet.required' => 'item per packet is required.',
            'kt_docs_repeater_advanced.*.total_item.required' => 'total item is required.',
            'kt_docs_repeater_advanced.*.rate_on.required' => 'rate_on is required.',
            'kt_docs_repeater_advanced.*.gst.required' => 'gst is required.',
        ]);

        $material_order = MaterialOrder::find($id);
        $material_order->vendor_id = $request->vendor;
        $material_order->bill_no = $request->bill_no;
        $material_order->bill_date = Carbon::parse($request->job_card_date)->format('Y-m-d');

        $subtotal = 0; 
        $total_gst = 0; 
        $total = 0;

        if($material_order->save()){ 
            $inputs = $request->input('kt_docs_repeater_advanced');
            foreach ($inputs as $input) {
                $product = Product::find($input['product']);

                if($input['item'] != null && $input['item'] != ''){
                    $item = MaterialOrderItem::find($input['item']);
                    $old_quantity = $input['old_quantity'];
                    $old_total_item = $input['old_total_item'];
                    $changeQuantity =  $input['quantity'] - $old_quantity;
                    $changeTotalItem =  $input['total_item'] - $old_total_item;
                    $item->quantity += $changeTotalItem;
                    $item->total_item += $changeTotalItem;

                }
                else{
                    $item = new MaterialOrderItem;
                    $item->quantity = $input['quantity'];
                    $item->total_item = $input['total_item'];
                }

               

                $item->material_order_id = $material_order->id;
                $item->category_id = $product->category_id;
                $item->product_id = $product->id;
                $item->item_name = $product->name;
                $item->hsn = $product->hsn;

                

                $item->item_per_packet = $input['item_per_packet'];
                $item->weight_per_piece = $input['weight_per_piece'];

                $item->weight_per_piece = $input['weight_per_piece'];
                $item->total_weight = $input['total_weight'];
                $item->unit_id = $input['unit'];
                $item->rate_on = $input['rate_on'];
                $item->rate = $input['rate'];
                $item->gst = $input['gst'];
                $item->gst_amount = $input['gst_amount'];
                $item->amount = $input['amount'];
                $item->save();

                $subtotal += $input['rate'];
                $total_gst += $input['rate']*$input['gst']/100;
                $total += $input['rate'] + $input['rate']*$input['gst']/100;


            }
            $material_order->subtotal = $subtotal;
            $material_order->total_gst = $total_gst;
            $material_order->total = $total;
            $material_order->save();
            if($request->deleted){
                foreach($request->deleted as $id){
                    $deleted_item = MaterialOrderItem::find($id);

                }
                MaterialOrderItem::whereIn('id', $request->deleted)->delete();
            }
            
            
            return redirect()->route('admin.material-order.index')->with(['class'=>'success','message'=>'Paper Inward saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }




    public function destroy($id)
    {
       
        $paper_inward = MaterialOrder::find($id);
        if($paper_inward->delete()){
            
            return response()->json(['message'=>'Dye Details  deleted successfully ...', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }


     public function statusChange(Request $request, $id)
    {
        $materialData = MaterialOrder::where('id', $id)->with(['madeBy', 'vendor', 'materialItems' => function($query) {
            $query->with(['product', 'unit']);
        }])->first();

        if (!$materialData) {
            return response()->json(['error' => 'Material order not found'], 404);
        }

        $itemsData = $materialData->materialItems;

        $items = $itemsData->toArray();
        $material = $materialData->toArray();

        //$pdf = PDF::loadView('emails.order-confirmation', compact('material', 'items'))->setPaper('a4', 'portrait')->output();
        $pdf = PDF::loadView('emails.order-confirmation', compact('material', 'items'))
            ->setPaper('A4', 'portrait') // Ensure A4 paper size in portrait mode
            ->setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true]) // Enable HTML5 and remote options
            ->output();

        // Define recipients and CC addresses
        $toAddresses = ['asifjamal251@gmail.com', 'asif@artechnology.in', 'asif.sanix@gmail.com'];
        $ccAddresses = ['rajeev@artechnology.in', 'rajeev.evorapkg@gmail.com', 'rajeevbhardwaj14311@gmail.com'];

        // Send Email
        Mail::send(new MaterialOrderConfirmatiom($pdf, $toAddresses, $ccAddresses, $material, $items));

        return response()->json(['success' => 'Email sent successfully'], 200);
    }

    
}
