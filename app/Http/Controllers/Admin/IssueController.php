<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Issue\IssueCollection;
use App\Models\Issue;
use App\Models\IssueItem;
use App\Models\Product;
use App\Models\ProductTransaction;
use App\Models\Transaction;
use Auth;
use Carbon\Carbon;
use Illuminate\Http\Request;

class IssueController extends Controller
{
   
    public function index(Request $request){
       
        if ($request->ajax()) {
            $datas = Issue::orderBy('created_at', 'desc')->with(['issueItems']);
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

            return response()->json(new IssueCollection($datas));
            
           
        }
        return view('admin.issue.list');
    }

    public function create(){
        return view('admin.issue.create');
    }



    public function store(Request $request) {

       // return $request->all();
        $user = Auth::guard('admin')->user();
        $this->validate($request, [
            'kt_docs_repeater_advanced' => 'required|array',
            'kt_docs_repeater_advanced.*.product' => 'required',
            'kt_docs_repeater_advanced.*.quantity' => 'required', 
            'kt_docs_repeater_advanced.*.unit' => 'required', 
            'kt_docs_repeater_advanced.*.issue_for' => 'required', 
        ],
        [
            'kt_docs_repeater_advanced.*.product.required' => 'product is required.',
            'kt_docs_repeater_advanced.*.quantity.required' => 'quantity is required.',
            'kt_docs_repeater_advanced.*.unit.required' => 'unit is required.',
            'kt_docs_repeater_advanced.*.issue_for.required' => 'issue for is required.',
        ]);

        $issue = new Issue;
        $issue->issue_type = 0;
        $issue->user_id = auth('admin')->user()->id;

        if($issue->save()){ 
            $inputs = $request->input('kt_docs_repeater_advanced');
            foreach ($inputs as $input) {
                $product = Product::find($input['product']);
                $item = new IssueItem;
                $item->issue_id = $issue->id;
                $item->product_id = $product->id;
                $item->quantity = $input['quantity'];
                $item->issue_for = $input['issue_for'];
                $item->unit = $input['unit'];
                $item->save();

                $transaction = new Transaction;
                $transaction->product_id = $product->id;
                $transaction->type = 'Debit';
                $transaction->current_quantity = $product->quantity;
                $transaction->new_quantity = $request->quantity;
                $transaction->total_quantity = $product->quantity - $request->quantity;
                $transaction->remarks = 'Manual Issued Item';
                $transaction->trancation_by = $user->id;
                $transaction->issue_item_id = $item->id;
                $transaction->save();

                $product->quantity = $product->quantity - $input['quantity'];
                $product->save();
            }
            
            return redirect()->route('admin.issue.index')->with(['class'=>'success','message'=>'Paper Inward saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }


    public function show($id){
        $material =  Issue::where('id', $id)->with(['user', 'issueItems'=>function($query){
            $query->with(['product', 'issueFor']);
        }])->first();
        return view('admin.issue.view', compact('material'));
    }


    public function edit($id){
        $material =  Issue::where('id', $id)->with(['issueItems'])->first();
        return view('admin.issue.edit', compact('material'));
    }


    public function update(Request $request, $id) {
       // return $request->deleted;
        //return $request->all();
        $user = Auth::guard('admin')->user();
        $this->validate($request, [
            'kt_docs_repeater_advanced' => 'required|array',
            'kt_docs_repeater_advanced.*.product' => 'required',
            'kt_docs_repeater_advanced.*.quantity' => 'required', 
            'kt_docs_repeater_advanced.*.unit' => 'required', 
            'kt_docs_repeater_advanced.*.issue_for' => 'required', 
        ],
        [
            'kt_docs_repeater_advanced.*.product.required' => 'product is required.',
            'kt_docs_repeater_advanced.*.quantity.required' => 'quantity is required.',
            'kt_docs_repeater_advanced.*.unit.required' => 'unit is required.',
            'kt_docs_repeater_advanced.*.issue_for.required' => 'issue for is required.',
        ]);

        $issue = Issue::find($id);
        if($issue->save()){ 
            $inputs = $request->input('kt_docs_repeater_advanced');
            foreach ($inputs as $input) {
                $product = Product::find($input['product']);

                if($input['item'] != null && $input['item'] != ''){
                    $item = IssueItem::find($input['item']);
                    $item->product_id = $product->id;
                    $item->requisition_id = $input['issue_for'];
                    $item->unit = $input['unit'];
                    $item->quantity = $input['quantity'];
                    $item->save();


                    $old_quantity = $input['old_quantity'];
                    $changeQuantity = $old_quantity - $input['quantity'];


                    $transaction = new ProductTransaction;
                    $transaction->product_id = $product->id;
                    $transaction->type = 'Debit';
                    $transaction->current_quantity = $product->quantity;
                    $transaction->new_quantity += abs($changeQuantity);
                    $transaction->total_quantity = $product->quantity+$changeQuantity;
                    $transaction->remarks = 'Product Inward Update';
                    $transaction->trancation_by = $user->id;
                    $transaction->issue_item_id = $item->id;
                    $transaction->save();


                    $product->quantity += $changeQuantity;
                    $product->save();

                }
                else{
                    $item = new IssueItem;
                    $item->product_id = $product->id;
                    $item->requisition_id = $input['issue_for'];
                    $item->unit = $input['unit'];
                    $item->quantity = $input['quantity'];
                    $item->issue_id = $issue->id;
                    $item->deleted_at = null;
                    $item->save();

                    $transaction = new ProductTransaction;
                    $transaction->product_id = $product->id;
                    $transaction->type = 'Debit';
                    $transaction->current_quantity = $product->quantity;
                    $transaction->new_quantity = $input['quantity'];
                    $transaction->total_quantity = $product->quantity-$input['quantity'];
                    $transaction->remarks = 'Product issue';
                    $transaction->trancation_by = $user->id;
                    $transaction->issue_item_id = $item->id;
                    $transaction->save();

                    $product->quantity = $product->quantity - $input['quantity'];
                    $product->save();
                    

                }

            }
            if($request->deleted){
                foreach($request->deleted as $id){
                    $deleted_item = IssueItem::find($id);
                    $product = Product::find($deleted_item->product_id);

                    $product->quantity = $product->quantity + $deleted_item->quantity;
                    $product->save();

                }
                IssueItem::whereIn('id', $request->deleted)->delete();
            }
            
            
            return redirect()->route('admin.issue.index')->with(['class'=>'success','message'=>'Paper Inward saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }




    public function destroy($id)
    {
       
        $paper_inward = Issue::find($id);
        if($paper_inward->delete()){
            
            return response()->json(['message'=>'Dye Details  deleted successfully ...', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }

    
}
