<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Product\ProductCollection;
use App\Models\Category;
use App\Models\Media;
use App\Models\Product;
use App\Models\Transaction;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;

class ProductController extends Controller
{
   
    public function index(Request $request){
       //return Product::orderBy('created_at', 'desc')->with(['unit', 'productType'])->get();
        if ($request->ajax()) {

            if ($request->type === 'category') {
                $categories = Category::orderBy('name','asc')->get();
                $cat = array();
                foreach ($categories as $cat2) {
                    $cat[]=['id'=>$cat2->id,'text'=>$cat2->name,'a_attr'=>['href'=>adminRoute('index','category='.$cat2->id)],'parent'=>($cat2->parent)?$cat2->parent:'#'];
                }
                return response()->json($cat);
            }


            $datas = Product::orderBy('created_at', 'desc')->with(['unit', 'productType']);
            $totaldata = $datas->count();

            $search = $request->search['value'];

            if ($search) {
                $datas->where('name', 'like', '%'.$search.'%');
            }

            if($request->category != ''){
                $datas->when($request->category != '', function ($query) use ($request) {
                    $query->where('category_id', $request->category);
                });
            }

            // if($request->product_type){

            //     if($request->product_type == 1 || $request->product_type == '1'){
            //         $datas->where('type', 1);
            //     }

            //     if($request->product_type == 0 || $request->product_type == '0'){
            //         $datas->where('type', 0);
            //     }
            // }

            if($request->stock == 1 || $request->stock == '1'){
                $datas->whereColumn('quantity', '<=', 'in_hand_quantity');
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new ProductCollection($datas));
            
           
        }
        return view('admin.product.list');
    }

    public function create(Request $request){
        $type = $request->type;
        $category_id = $request->category;
        return view('admin.product.create', compact('type', 'category_id'));
    }



    public function store(Request $request) {
       $user = Auth::guard('admin')->user();

       if($request->id != ''){
            $this->validate($request,[
                'product_code'=>'required',  
                'product_type'=>'required',  
                'category'=>'required',  
                'product_name'=>'required',   
                'weight_per_piece'=>'required',  
                'unit'=>'required',     
            ]);
       }else{

            $this->validate($request,[
                'product_code'=>'required',  
                'product_type'=>'required',  
                'category'=>'required',  
                'product_name'=>'required|unique:products,name',   
                'weight_per_piece'=>'required',  
                'unit'=>'required',     
            ]);
        }

        $product = Product::firstOrNew(['id'=>$request->id]);
        $product->code = $request->product_code;
        $product->name = $request->product_name;
        $product->unit_id = $request->unit;
        $product->category_id = $request->category;
        $product->hsn = $request->hsn;
        $product->weight_per_piece = $request->weight_per_piece;
        $product->quantity = $request->quantity??0;
        $product->product_type_id = $request->product_type;
        $product->item_per_packet = 1;
       

        if($product->save()){ 

            $transaction = new Transaction;
            $transaction->product_id = $product->id;
            $transaction->type = 'Opening Balance';
            $transaction->current_quantity = 0;
            $transaction->new_quantity = $product->quantity;
            $transaction->total_quantity = $product->quantity;
            $transaction->remarks = 'New product Added';
            $transaction->trancation_by = $user->id;
            $transaction->save();
            return response()->json(['message'=>'Profile  Updated', 'class'=>'success', 'error'=>false]);
        }

        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
    }



    public function storePaper(Request $request) {
        $user = Auth::guard('admin')->user();

        $product_name = $this->makeProductName($request->paper_length, $request->paper_width, $request->paper_gsm);

        if($request->id == ''){
            if(Product::where(['name'=>$product_name, 'category_id'=>$request->category])->count() > 0){
                return response()->json(['message'=>'This paper type is already exist', 'class'=>'error', 'error'=>true]);
            }
        }

        $this->validate($request,[
            'product_code'=>'required',     
            'category'=>'required',     
            'paper_length'=>'required',     
            'paper_width'=>'required',     
            'paper_gsm'=>'required',     
            'product_type'=>'required',     
            'paper_packet_weight'=>'required',     
            'sheet_per_packet'=>'required',     
            'weight_per_sheet'=>'required',     
            'paper_unit'=>'required',     
        ]);

        $product = Product::firstOrNew(['id'=>$request->id]);
        $product->name = $product_name;
        $product->category_id = $request->category;
        $product->code = $request->product_code;
        $product->length = $request->paper_length;
        $product->width = $request->paper_width;
        $product->gsm = $request->paper_gsm;
        $product->product_type_id = $request->product_type;
        $product->packet_weight = $request->paper_packet_weight;
        $product->item_per_packet = $request->sheet_per_packet;
        $product->weight_per_piece = $request->weight_per_sheet;
        $product->unit_id = $request->paper_unit;
        $product->hsn = $request->paper_hsn;
        $product->in_hand_quantity = $request->in_hand_quantity;
        $product->type = 1;
       
       

        if($product->save()){ 

            $transaction = new Transaction;
            $transaction->product_id = $product->id;
            $transaction->type = 'Opening Balance';
            $transaction->current_quantity = 0;
            $transaction->new_quantity = $product->quantity??0;
            $transaction->total_quantity = $product->quantity??0;
            $transaction->remarks = 'New Paper Added';
            $transaction->trancation_by = $user->id;
            $transaction->save();
            return response()->json(['message'=>'Paper Save Successfully.', 'class'=>'success', 'error'=>false]);
        }

        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
    }


    public function edit($id){
        $product = Product::find($id);
        return view('admin.product.edit', compact('product'));
    }


    public function show($id){
        $product = Product::where('id', $id)->with(['unit', 'productType', 'transaction'])->first();
        return $product->transaction;
        //return view('admin.product.edit', compact('product'));
    }


    public function update(Request $request, $id) {
        $user = Auth::guard('admin')->user();
        $this->validate($request,[
            'category'=>'required',  
            'product_name'=>'required',  
            'hsn'=>'required',  
            'weight_per_piece'=>'required',  
            'unit'=>'required', 
        ]);

        $changeQuantity = $request->quantity - $request->old_quantity;

        $product = Product::find($id);
        $product->name = $request->product_name;
        $product->unit_id = $request->unit;
        $product->category_id = $request->category;
        $product->hsn = $request->hsn;
        $product->weight_per_piece = $request->weight_per_piece;
        $product->quantity = $product->quantity + $changeQuantity;
        $product->product_type_id = $request->product_type;
       

        if($product->save()){ 

            $transaction = new Transaction;
            $transaction->product_id = $product->id;
            $transaction->type = $changeQuantity > 0 ?'Credit': 'Debit';
            $transaction->current_quantity = $request->old_quantity;
            $transaction->new_quantity = $request->quantity;
            $transaction->total_quantity = $product->quantity + $changeQuantity;
            $transaction->remarks = 'product updated';
            $transaction->trancation_by = $user->id;
            $transaction->save();

            return redirect()->route('admin.product.index')->with(['class'=>'success','message'=>'Product updated successfully.']);
        }

        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
    }




    public function destroy($id)
    {
       
        $product = Product::find($id);
        if($product->delete()){
            
            return response()->json(['message'=>'Dye Details  deleted successfully ...', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }



    function makeProductName($length, $width, $gsm) {
        if (is_float($length) || (is_string($length) && preg_match('/\.\d*[1-9]/', $length))) {
            $formattedLength = $length;
        } else {
            $formattedLength = (int)$length;
        }

        if (is_float($width) || (is_string($width) && preg_match('/\.\d*[1-9]/', $width))) {
            $formattedWidth = $width;
        } else {
            $formattedWidth = (int)$width;
        }

        $formattedGSM = $gsm;
        $result = $formattedLength . 'X' . $formattedWidth . '-' .$formattedGSM;

        return $result;
    }

    public function ledger(Request $request, $id)
    {
        $currentYear = now()->year;
        $transactions = Transaction::whereYear('created_at', $currentYear)->where('product_id', $id)->with(['issueItem'=>function($query){
            $query->with('issue');
        }, 
        'trancationBy', 'jobCard', 
        'materialInward'=>function($query){
            $query->with(['vendor']);
        }, 
        'product'=>function($query){
            $query->with(['category', 'unit', 'productType']);
        }])->get();


        $previousYear = now()->subYear()->year;
        $product = Product::where('id', $id)->with(['category', 'unit', 'productType'])->first();

        $open_balance = Transaction::whereYear('created_at', $previousYear)->where('product_id', $id)->latest()->first();
        return view('admin.product.ledger', compact('transactions', 'open_balance', 'product'));
    }


    
}
