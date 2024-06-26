<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\MaterialInward\MaterialInwardCollection;
use App\Models\MaterialInward;
use App\Models\MaterialInwardItem;
use App\Models\MaterialInwardPlate;
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

class MaterialInwardController extends Controller
{
   
    public function index(Request $request){
       
        if ($request->ajax()) {
            $datas = MaterialInward::orderBy('created_at', 'desc')->with(['vendor']);
            $totaldata = $datas->count();

            $search = $request->search['value'];

            if ($search) {
                $datas->where('receipt_no', 'like', '%'.$search.'%');
                $datas->orWhere('material_order_no', 'like', '%'.$search.'%');
            }

            if($request->vendor){
                $datas->where('vendor_id', $request->vendor);
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new MaterialInwardCollection($datas));
            
           
        }
        return view('admin.material-inward.list');
    }

    public function create(){
        return view('admin.material-inward.create');
    }



    public function store(Request $request) {

        //return $request->all();
        $user = Auth::guard('admin')->user();
        $this->validate($request, [
            'material_order_no' => 'required',
            'vendor' => 'required',
            'bill_no' => 'required',
            'bill_date' => 'required',
            'kt_docs_repeater_advanced' => 'required|array',
            'kt_docs_repeater_advanced.*.product' => 'required',
            'kt_docs_repeater_advanced.*.quantity' => 'required', 
            'kt_docs_repeater_advanced.*.item_per_packet' => 'required', 
            'kt_docs_repeater_advanced.*.total_item' => 'required', 
            'kt_docs_repeater_advanced.*.rate_on' => 'required', 
            'kt_docs_repeater_advanced.*.gst' => 'required',
        ],
        [
            'kt_docs_repeater_advanced.*.product.required' => 'product is required.',
            'kt_docs_repeater_advanced.*.quantity.required' => 'quantity is required.',
            'kt_docs_repeater_advanced.*.item_per_packet.required' => 'item per packet is required.',
            'kt_docs_repeater_advanced.*.total_item.required' => 'total item is required.',
            'kt_docs_repeater_advanced.*.rate_on.required' => 'rate_on is required.',
            'kt_docs_repeater_advanced.*.gst.required' => 'gst is required.',
        ]);

        $material_inward = new MaterialInward;
        $material_inward->vendor_id = $request->vendor;
        $material_inward->material_order_no = $request->material_order_no;
        $material_inward->bill_no = $request->bill_no;
        $material_inward->bill_date = Carbon::parse($request->job_card_date)->format('Y-m-d');

        $subtotal = 0; 
        $total_gst = 0; 
        $total = 0;

        if($material_inward->save()){ 
            $inputs = $request->input('kt_docs_repeater_advanced');
            foreach ($inputs as $input) {
                $product = Product::find($input['product']);
                $item = new MaterialInwardItem;
                $item->material_inward_id = $material_inward->id;
                $item->category_id = $product->category_id;
                $item->product_id = $product->id;
                $item->item_name = $product->name;
                $item->hsn = $product->hsn;
                $item->quantity = $input['quantity'];
                $item->item_per_packet = $input['item_per_packet'];
                $item->weight_per_piece = $input['weight_per_piece'];
                $item->total_item = $input['total_item'];
                $item->total_weight = $input['total_weight'];
                $item->unit = $input['unit'];
                $item->rate_on = $input['rate_on'];
                $item->rate = $input['rate'];
                $item->gst = $input['gst'];
                $item->gst_amount = $input['gst_amount'];
                $item->amount = $input['amount'];
                $item->save();

                $subtotal += $input['rate'];
                $total_gst += $input['rate']*$input['gst']/100;
                $total += $input['rate'] + $input['rate']*$input['gst']/100;

                $transaction = new Transaction;
                $transaction->product_id = $product->id;
                $transaction->type = 'Credit';
                $transaction->current_quantity = $product->quantity;
                $transaction->new_quantity = $input['total_item'];
                $transaction->total_quantity = $product->quantity+$input['total_item'];
                $transaction->remarks = 'Product Inward';
                $transaction->trancation_by = $user->id;
                $transaction->material_inward_id = $material_inward->id;
                $transaction->save();

                $product->quantity = $product->quantity + $input['total_item'];
                $product->save();
            }
            $material_inward->subtotal = $subtotal;
            $material_inward->total_gst = $total_gst;
            $material_inward->total = $total;
            $material_inward->save();
            
            return redirect()->route('admin.material-inward.index')->with(['class'=>'success','message'=>'Paper Inward saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }


    public function edit($id){
        $material =  MaterialInward::where('id', $id)->with(['vendor', 'materialItems'])->first();
        return view('admin.material-inward.edit', compact('material'));
    }


    public function update(Request $request, $id) {
       // return $request->deleted;
        //return $request->all();
        $user = Auth::guard('admin')->user();
        $this->validate($request, [
            'material_order_no' => 'required',
            'vendor' => 'required',
            'bill_no' => 'required',
            'bill_date' => 'required',
            'kt_docs_repeater_advanced' => 'required|array',
            'kt_docs_repeater_advanced.*.product' => 'required',
            'kt_docs_repeater_advanced.*.quantity' => 'required', 
            'kt_docs_repeater_advanced.*.item_per_packet' => 'required', 
            'kt_docs_repeater_advanced.*.total_item' => 'required', 
            'kt_docs_repeater_advanced.*.rate_on' => 'required', 
            'kt_docs_repeater_advanced.*.gst' => 'required',
        ],
        [
            'kt_docs_repeater_advanced.*.product.required' => 'product is required.',
            'kt_docs_repeater_advanced.*.quantity.required' => 'quantity is required.',
            'kt_docs_repeater_advanced.*.item_per_packet.required' => 'item per packet is required.',
            'kt_docs_repeater_advanced.*.total_item.required' => 'total item is required.',
            'kt_docs_repeater_advanced.*.rate_on.required' => 'rate_on is required.',
            'kt_docs_repeater_advanced.*.gst.required' => 'gst is required.',
        ]);

        $material_inward = MaterialInward::find($id);
        $material_inward->material_order_no = $request->material_order_no;
        $material_inward->vendor_id = $request->vendor;
        $material_inward->bill_no = $request->bill_no;
        $material_inward->bill_date = Carbon::parse($request->job_card_date)->format('Y-m-d');

        $subtotal = 0; 
        $total_gst = 0; 
        $total = 0;

        if($material_inward->save()){ 
            $inputs = $request->input('kt_docs_repeater_advanced');
            foreach ($inputs as $input) {
                $product = Product::find($input['product']);

                if($input['item'] != null && $input['item'] != ''){
                    $item = MaterialInwardItem::find($input['item']);
                    $old_quantity = $input['old_quantity'];
                    $old_total_item = $input['old_total_item'];
                    $changeQuantity =  $input['quantity'] - $old_quantity;
                    $changeTotalItem =  $input['total_item'] - $old_total_item;
                    $item->quantity = $input['quantity'];
                    $item->total_item += $changeTotalItem;

                    if($changeTotalItem != 0){
                        $transaction = new Transaction;
                        $transaction->product_id = $product->id;
                        $transaction->type = $changeQuantity > 0 ?'Credit':'Debit';
                        $transaction->current_quantity = $product->quantity;
                        $transaction->new_quantity = $changeTotalItem;
                        $transaction->total_quantity = $product->quantity + $changeTotalItem;
                        $transaction->remarks = 'Product Inward Update';
                        $transaction->trancation_by = $user->id;
                        $transaction->material_inward_id = $material_inward->id;
                        $transaction->save();

                        $product->quantity = $product->quantity + $changeTotalItem;
                        $product->save();
                    }

                }
                else{
                    $item = new MaterialInwardItem;
                    $item->quantity = $input['quantity'];
                    $item->total_item = $input['total_item'];

                    if($input['quantity'] != 0){
                        $transaction = new Transaction;
                        $transaction->product_id = $product->id;
                        $transaction->type = 'Credit';
                        $transaction->current_quantity = $product->quantity;
                        $transaction->new_quantity = $input['total_item'];
                        $transaction->total_quantity = $product->quantity+$input['total_item'];
                        $transaction->remarks = 'Product Inward';
                        $transaction->trancation_by = $user->id;
                        $transaction->material_inward_id = $material_inward->id;
                        $transaction->save();

                        $product->quantity = $product->quantity + $input['total_item'];
                        $product->save();
                    }

                }

               

                $item->material_inward_id = $material_inward->id;
                $item->category_id = $product->category_id;
                $item->product_id = $product->id;
                $item->item_name = $product->name;
                $item->hsn = $product->hsn;

                

                $item->item_per_packet = $input['item_per_packet'];
                $item->weight_per_piece = $input['weight_per_piece'];

                $item->weight_per_piece = $input['weight_per_piece'];
                $item->total_weight = $input['total_weight'];
                $item->unit = $input['unit'];
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
            $material_inward->subtotal = $subtotal;
            $material_inward->total_gst = $total_gst;
            $material_inward->total = $total;
            $material_inward->save();
            if($request->deleted){
                foreach($request->deleted as $id){
                    $deleted_item = MaterialInwardItem::find($id);
                    $product = Product::find($deleted_item->product_id);
                    

                    $transaction = new Transaction;
                    $transaction->product_id = $product->id;
                    $transaction->type = 'Debit';
                    $transaction->current_quantity = $product->quantity;
                    $transaction->new_quantity = $deleted_item->quantity;
                    $transaction->total_quantity = $product->quantity - $deleted_item->quantity;
                    $transaction->remarks = 'Product Inward Deleted';
                    $transaction->trancation_by = $user->id;
                    $transaction->material_inward_id = $material_inward->id;
                    $transaction->save();

                    $product->quantity = $product->quantity - $deleted_item->quantity;
                    $product->save();

                }
                MaterialInwardItem::whereIn('id', $request->deleted)->delete();
            }
            
            
            return redirect()->route('admin.material-inward.index')->with(['class'=>'success','message'=>'Paper Inward saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }




    public function destroy($id)
    {
       
        $paper_inward = MaterialInward::find($id);
        if($paper_inward->delete()){
            
            return response()->json(['message'=>'Dye Details  deleted successfully ...', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }

    
}
