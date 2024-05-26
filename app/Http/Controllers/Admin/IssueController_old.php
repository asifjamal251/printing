<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Issue\IssueCollection;
use App\Models\Issue;
use App\Models\IssueItem;
use App\Models\Product;
use App\Models\Transaction;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;

class IssueController extends Controller
{
   
    public function index(Request $request){
        if ($request->ajax()) {
            $datas = Issue::orderBy('created_at', 'desc')->with(['issueItems']);
            $totaldata = $datas->count();

            $search = $request->search['value'];

            if ($search) {
                $datas->where('carton_size', 'like', '%'.$search.'%');
                $datas->orWhere('dye_no', 'like', '%'.$search.'%');
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
       
        $user = Auth::guard('admin')->user();
        $this->validate($request,[ 
            'product'=>'required',  
            'quantity'=>'required',  
            'unit'=>'required',  
            'issue_for'=>'required', 
        ]);
        $today = Carbon::now()->format('d-m');
        $product = Product::where('id', $request->product)->with('unit')->first();

        $issue = Issue::firstorNew(['issue_at' => $today]);
        $issue->save();

        $issue_item = new IssueItem;
        $issue_item->issue_id = $issue->id;
        $issue_item->product_id = $product->id;
        $issue_item->quantity = $request->quantity;
        $issue_item->unit = $product->unit->name;
        $issue_item->issue_for = $request->issue_for;
        $issue_item->issue_by = $user->id;
        $issue_item->issue_type = 1;
        $issue_item->oprator_name = $request->oprator_name;
       
        if($issue_item->save()){ 

            $transaction = new Transaction;
            $transaction->product_id = $product->id;
            $transaction->type = 'Debit';
            $transaction->current_quantity = $product->quantity;
            $transaction->new_quantity = $request->quantity;
            $transaction->total_quantity = $product->quantity - $request->quantity;
            $transaction->remarks = 'Manual Issued Item';
            $transaction->trancation_by = $user->id;
            $transaction->issue_item_id = $issue_item->id;
            $transaction->save();

            $product->quantity = $product->quantity - $request->quantity;
            $product->save();


            return redirect()->route('admin.issue.index')->with(['class'=>'success','message'=>'Issue saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }


    public function edit($id){
        $issue = IssueItem::find($id);
        return view('admin.issue.edit', compact('issue'));
    }

    public function show($id){
        $issue = Issue::where('id', $id)->with('issueItems')->first();
        return view('admin.issue.view', compact('issue'));
    }


    public function update(Request $request, $id) {
        $user = Auth::guard('admin')->user();
        $this->validate($request,[ 
            'product'=>'required',  
            'quantity'=>'required',  
            'unit'=>'required',  
            'issue_for'=>'required', 
        ]);

        $product = Product::where('id', $request->product)->with('unit')->first();
        $issue = IssueItem::find($id);
        $issue->product_id = $product->id;
        $issue->quantity = $request->quantity;
        $issue->unit = $product->unit->name;
        $issue->issue_for = $request->issue_for;
        $issue->issue_by = $user->id;
        $issue->issue_type = 1;
        $issue->oprator_name = $request->oprator_name;

        $changeQuantity = $request->quantity - $request->old_quantity;

        $tr_type = 0;
        $total_quantity = 0;
        if($request->quantity > $request->old_quantity){
            $tr_type = 'Debit';
            $total_quantity = $product->quantity - $changeQuantity;
        }else{
            $tr_type = 'Credit';
            $total_quantity = $product->quantity + $changeQuantity;
        }

        if($issue->save()){ 
            if($changeQuantity != 0){
                if($request->old_product_id == $product->id){
                    $transaction = Transaction::where('issue_id', $id)->first();
                    $transaction->product_id = $product->id;
                    $transaction->type = $tr_type;
                    $transaction->current_quantity = $product->quantity;
                    $transaction->new_quantity = $changeQuantity;
                    $transaction->total_quantity = $product->quantity - $changeQuantity;
                    $transaction->remarks = 'Manual Issued Item';
                    $transaction->trancation_by = $user->id;
                    $transaction->job_card_id = $job_card->id;
                    $transaction->save();

                    $product->quantity = $total_quantity;
                    $product->save();

                }
                else{
                    $transaction = Transaction::where('issue_id', $id)->first();
                    $transaction->product_id = $product->id;
                    $transaction->type = 'Debit';
                    $transaction->current_quantity = $product->quantity;
                    $transaction->new_quantity = $request->quantity;
                    $transaction->total_quantity = $product->quantity - $request->quantity;
                    $transaction->remarks = 'Manual Issued Item';
                    $transaction->trancation_by = $user->id;
                    $transaction->issue_item_id = $issue->id;
                    $transaction->save();

                    $product->quantity = $product->quantity - $request->quantity;
                    $product->save();

                    $oldProduct = Product::find($request->old_quantity);
                    $oldProduct->quantity += $request->old_quantity;
                    $oldProduct->save();
                }
                
            }


            return redirect()->route('admin.issue.index')->with(['class'=>'success','message'=>'Issue saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }




    public function destroy($id)
    {
       
        $issue = Issue::where(['id'=>$id, 'issue_type'=>1])->first();
        if($issue != ''){
            $transaction = Transaction::where('issue_id', $id)->first();
            $product = Product::where('id', $issue->product_id)->first();
            $product->quantity += $issue->quantity;
            $product->save();
            if($issue->delete()){
                $transaction->delete();
                return response()->json(['message'=>'Dye Details  deleted successfully ...', 'class'=>'success']);  
            }
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
        }
        else{
            return response()->json(['message'=>'Product is auto isse by job card', 'class'=>'error']);
        }
    }

    
}
