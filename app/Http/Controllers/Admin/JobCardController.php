<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\JobCard\JobCardCollection;
use App\Models\Admin;
use App\Models\ChemicalCoating;
use App\Models\Cutting;
use App\Models\Designing;
use App\Models\DyeBreaking;
use App\Models\DyeCutting;
use App\Models\Embossing;
use App\Models\Issue;
use App\Models\IssueItem;
use App\Models\JobCard;
use App\Models\JobCardHistory;
use App\Models\JobCardItem;
use App\Models\JobCardPaper;
use App\Models\JobCardUser;
use App\Models\Lamination;
use App\Models\Leafing;
use App\Models\Media;
use App\Models\PaperWarehouse;
use App\Models\Pasting;
use App\Models\Planning;
use App\Models\Printing;
use App\Models\Product;
use App\Models\PurchaseOrderItem;
use App\Models\SpotUv;
use App\Models\Transaction;
use Auth;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;

class JobCardController extends Controller
{
   
    public function index(Request $request){

        if ($request->ajax()) {

            $datas = JobCard::orderByRaw("CASE
                WHEN status_id = 2 THEN 1
                WHEN status_id = 1 THEN 2
                WHEN status_id = 3 THEN 25
                ELSE 4
            END")->whereNotIn('status_id', [99])->with(['planningBy', 'deyDetail', 'jobCardHistory', 'jobCardPapers', 'jobCardItems'=>function($query){
                        $query->with(['PO', 'POItem']);
                    },
                    'jobCardUser' => function ($query2) {
                        $query2->with('module', 'moduleUser');
                    }
                ]);


            $totaldata = $datas->count();
            $search = $request->search['value'];

             if ($search) {
                $datas->where(function ($query) use ($search) {
                    $query->where('job_card_no', 'like', '%' . $search . '%');
                    $query->orWhere('set_no', 'like', '%' . $search . '%')
                          ->orWhereHas('jobCardItems.POItem', function ($subQuery) use ($search) {
                              $subQuery->where('carton_size', 'like', '%'.$search.'%')
                                       ->orWhere('carton_name', 'like', '%'.$search.'%')
                                       ->orWhere('quantity', 'like', '%'.$search.'%');
                          });
                });
            }

            if($request->status_id){
                $datas->where('status_id', $request->status_id);
            }

           if ($request->client) {
                $datas->where(function ($query) use ($request) {
                    $query->orWhereHas('jobCardItems.PO', function ($subQuery) use ($request) {
                        $subQuery->whereHas('client', function ($clientQuery) use ($request) {
                            $clientQuery->where('id', '=', $request->client);
                        });
                    });
                });
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new JobCardCollection($datas));
            
           
        }
        return view('admin.job-card.list');
    }

    public function create(){
        return view('admin.job-card.create');
    }



    public function store(Request $request) {
       

    }


    public function edit($id){
        $job_card = JobCard::where('id', $id)->with(['mediaFiles', 'planningBy', 'deyDetail', 'jobCardPapers', 'jobCardItems'=>function($query){
                        $query->with(['PO', 'POItem']);
                    }])->first();
        return view('admin.job-card.edit', compact('job_card'));
    }


    public function update(Request $request, $id) {
        //return $request->all();

        $this->validate($request,[ 
            'coating_machine'=>'required',  
            'other_coating_machine'=>'required',  
            'coating_window_cutting'=>'required',  
            'dye_machine'=>'required', 
            'embossing_leafing'=>'required', 
            'kt_docs_repeater_advanced' => 'required|array',
        ]);

        
        $user = Auth::guard('admin')->user();
        $job_card = JobCard::find($id);
        //$job_card->product_id = $request->paper;
        // $job_card->wastage_sheet = $request->wastage_sheet;
        // $job_card->total_sheet = $request->total_sheets;
        $job_card->dye_machine = $request->dye_machine;
        // $job_card->paper_divide = $request->paper_divide;
        $job_card->coating_machine = $request->coating_machine;
        $job_card->coating_window_cutting = $request->coating_window_cutting;
        $job_card->embossing_leafing = $request->embossing_leafing;
        $job_card->roll_used = $request->roll_used??'';
        $job_card->other_coating_machine = $request->other_coating_machine;
        $job_card->status_id = $request->status_id==2?1:$request->status_id;
        //return $request->warehouse_type;
        if($job_card->save()){
            $job_card->mediaFiles()->sync($request->file); 
            
            //JobCardPaper::where(['job_card_id' => $job_card->id])->delete();
            $inputs = $request->input('kt_docs_repeater_advanced');
            foreach ($inputs as $input) {
                $product = Product::find($input['product']);
                $job_card_paper = JobCardPaper::firstorNew(['job_card_id' => $job_card->id, 'product_id' => $input['product']]);
                $job_card_paper->required_sheet = $input['required_sheet'];
                $job_card_paper->wastage_sheet = $input['wastage_sheet'];
                $job_card_paper->sheet_size = $input['sheet_size'];
                $job_card_paper->total_sheet = $input['total_sheets'];
                $job_card_paper->paper_divide = $input['paper_divide'];
                $job_card_paper->subtotal_sheet = $input['wastage_sheet'] + $input['required_sheet'];
                $job_card_paper->save();

                if($input['old_total_sheets']){
                    $changeQuantity = $input['total_sheets'] - $input['old_total_sheets'];
                }else{
                    $changeQuantity = $input['total_sheets'];
                }

                if($changeQuantity != 0){
                    $today = Carbon::now()->format('d-m');
                    $issue = Issue::firstorNew(['issue_at' => $today, 'issue_type'=>1]);
                    $issue->user_id = auth('admin')->user()->id;
                    $issue->save();

                    $issue_item = IssueItem::firstorNew(['product_id' => $product->id]);
                    $issue_item->issue_id = $issue->id;
                    $issue_item->job_card_id = $job_card->id;
                    $issue_item->job_card_id = $job_card->id;
                    $issue_item->quantity = $changeQuantity;
                    $issue_item->unit = $product->unit->name;
                    $issue_item->issue_for = 1;
                    $issue_item->save();

                    $transaction = new Transaction;
                    $transaction->product_id = $product->id;
                    $transaction->type = 'Debit';
                    $transaction->current_quantity = $product->quantity;
                    $transaction->new_quantity = $changeQuantity;
                    $transaction->total_quantity = $product->quantity - $changeQuantity;
                    $transaction->remarks = 'used in job card';
                    $transaction->trancation_by = $user->id;
                    $transaction->job_card_id = $job_card->id;
                    $transaction->issue_item_id = $issue_item->id;
                    $transaction->save();
                    $product->quantity = $product->quantity - $changeQuantity;
                    $product->save();

                }

                if($request->deleted){
                    $job_card_paper = JobCardPaper::whereIn('id', $request->deleted)->first();
                    $product = Product::find($job_card_paper->product_id);

                    $transaction = new Transaction;
                    $transaction->product_id = $product->id;
                    $transaction->type = 'Credit';
                    $transaction->current_quantity = $product->quantity;
                    $transaction->new_quantity = $job_card_paper->total_sheet;
                    $transaction->total_quantity = $product->quantity + $job_card_paper->total_sheet;
                    $transaction->remarks = 'remove from job card';
                    $transaction->trancation_by = $user->id;
                    $transaction->job_card_id = $job_card->id;
                    $transaction->issue_item_id = null;
                    $transaction->save();

                    $product->quantity = $product->quantity + $job_card_paper->total_sheet;
                    $product->save();
                    $job_card_paper->delete();
                    
                }
            }

            $total_sheets = JobCardPaper::where('job_card_id', $job_card->id)->sum('subtotal_sheet');
            $job_card->total_sheet = $total_sheets;
            $job_card->save();


            return redirect()->route('admin.job-card.index')->with(['class'=>'success','message'=>'Job Card saved successfully.']);
        }
        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);

    }


    public function show(Request $request, $id){
        $job_card = JobCard::where('id', $id)->with(['jobCardPapers'=>function($query){
            $query->with(['product' => function($query){
                $query->with(['productType']);
            } ]);
        }, 'mediaFiles', 'planningBy', 'deyDetail', 'jobCardItems'=>function($query){
            $query->with(['PO', 'POItem']);
        }])->first();
        return view('admin.job-card.view', compact('job_card'));
    }

    public function updatedAttchament(Request $request)
    {

        if($request->file != ''){
            $job_card = JobCard::find($request->job_card_id);
            $job_card->mediaFiles()->sync($request->file);
            return response()->json(['message'=>'File has upload.', 'class'=>'success','error'=>false]);
        }
        else{
            return response()->json(['message'=>'File is required.', 'class'=>'error','error'=>true]);
        }
   

    }


    public function zoomImage(Request $request, $id)
    {
        $project = JobCard::where('id',$id)->select('id','job_card_no')->with('mediaFiles')->first();
        if ($project) {
            return view('admin.job-card.ajax-media-files', compact('project'));
            return response()->json(['message'=>'Record Found', 'class'=>'success','data'=>$project]);
        }
        return response()->json(['message'=>'Record Not Found', 'class'=>'error','data'=>'']);
    }




    public function changeStatus(Request $request)
    { 
        $check_user = JobCardUser::where(['job_card_id' => $request->job_card_id, 'module_id' => 1])->get(); 
        if ($check_user->count() === 0) {
            return response()->json(['message' => 'Please Assign Cutting Machine', 'class' => 'error']);
        }
        //return $request->all();
        $job_card = JobCard::where(['id'=>$request->job_card_id])->first();  
        if($request->status == 2){
            $check = Cutting::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
            if($check->count() > 0){
                return response()->json(['message'=>'Cutting Has Completed Jobcard.', 'class'=>'error']);
            }else{
                Cutting::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Cutting'])->delete();
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>1]); 
                return response()->json(['message'=>'Jobcard Cancelled From Cutting', 'class'=>'error']);
            }
        }

        $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Cutting']);
        $history->job_card_in = now();
        $history->counter = $job_card->required_sheet + $job_card->wastage_sheet;
        $history->save();

        $user = JobCardUser::where(['job_card_id'=>$request->job_card_id, 'module_id'=>1])->first();

        $cutting = Cutting::firstorNew(['job_card_id'=>$request->job_card_id]);
        $cutting->status_id = 2;
        if(isset($user)){
            $cutting->user_id = $user->module_user_id;
        }else{
            $cutting->user_id = null;
        }
        if ($cutting->save()) {
            JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>13]);  
            $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
            PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>13]);
            return response()->json(['message'=>'Job Card Assigned to cutting', 'class'=>'success']);
        }
        
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);



    }


    public function track(Request $request, $id)
    {
         $job_card = JobCard::where('id', $id)->with(['jobCardItems', 'jobCardHistory'=>function($query){
            $query->orderBy('created_at', 'asc');
         }])->first();

         return view('admin.job-card.track', compact('job_card'));
    }

    public function userAssign(Request $request, $id)
    {
        $job_card = JobCard::where('id', $id)->with(['jobCardItems' => function($query){
                $query->with(['POItem']);
            }, 'jobCardUser'=>function($query){
            $query->with(['module', 'moduleUser']);
        }])->first();
        $user = Admin::orderBy('name', 'asc')->get();
        return view('admin.job-card.user', compact('job_card', 'user'));
    }

    public function userAssignUpdate(Request $request, $id)
    {
        //return $request->all();
        // $this->validate($request, [
        //     'item' => 'required|array',
        //     'item.*.module' => 'required',
        //     'item.*.module_machine' => 'required',         ],
        // [
        //     'item.*.module.required' => 'Module is required.',
        //     'item.*.module_machine.required' => 'Module Machine is required.',
        // ]);


        $inputs = $request->input('item');
        foreach ($inputs as $input) {
            $job_card_user = JobCardUser::firstorNew(['job_card_id'=>$id, 'module_id'=>$input['module']]);
            $job_card_user->module_user_id = $input['module_machine'];
            $job_card_user->save();

            if($job_card_user->module_id == 1){
                Cutting::where(['job_card_id'=>$id, 'status_id' => 2])->update(['user_id'=>$job_card_user->module_user_id]);
            } 


            if($job_card_user->module_id == 2){
                ChemicalCoating::where(['job_card_id'=>$id, 'status_id' => 2])->update(['user_id'=>$job_card_user->module_user_id]);
            }

            if($job_card_user->module_id == 3){
                Lamination::where(['job_card_id'=>$id, 'status_id' => 2])->update(['user_id'=>$job_card_user->module_user_id]);
            }

            if($job_card_user->module_id == 4){
                Embossing::where(['job_card_id'=>$id, 'status_id' => 2])->update(['user_id'=>$job_card_user->module_user_id]);
            }

            if($job_card_user->module_id == 5){
                Leafing::where(['job_card_id'=>$id, 'status_id' => 2])->update(['user_id'=>$job_card_user->module_user_id]);
            }

            if($job_card_user->module_id == 6){
                SpotUv::where(['job_card_id'=>$id, 'status_id' => 2])->update(['user_id'=>$job_card_user->module_user_id]);
            }

            if($job_card_user->module_id == 7){
                DyeCutting::where(['job_card_id'=>$id, 'status_id' => 2])->update(['user_id'=>$job_card_user->module_user_id]);
            }

            if($job_card_user->module_id == 8){
                Pasting::where(['job_card_id'=>$id, 'status_id' => 2])->update(['user_id'=>$job_card_user->module_user_id]);
            }

            if($job_card_user->module_id == 9){
                DyeBreaking::where(['job_card_id'=>$id, 'status_id' => 2])->update(['user_id'=>$job_card_user->module_user_id]);
            }

            if($job_card_user->module_id == 10){
                Printing::where(['job_card_id'=>$id, 'status_id' => 2])->update(['user_id'=>$job_card_user->module_user_id]);
            }

             
        }
        return redirect()->route('admin.job-card.index')->with(['class'=>'success','message'=>'Job Card saved successfully.']);
    }


    public function userAssignSingle(Request $request, $id)
    {
        return $request->all();
        $module = Printing::firstorNew(['job_card_id'=>$id]);
        $module->status_id = $module->status_id??0;
        $module->save();
        if($request->user != ''){
            $module->user_id = $request->user;
        }else{
            $module->user_id = null;
        }
        if($module->save()){
             return response()->json(['message'=>'Oprator assign successfully ...', 'class'=>'success']);  
        } 
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }


    public function cancel(Request $request, $id)
    {
        $user = Auth::guard('admin')->user();
        $job_card_papers = JobCardPaper::where(['job_card_id' => $id])->get();
        $job_card = JobCard::where('id', $id)->first();

        if($job_card_papers->count() > 0){
            foreach($job_card_papers as $paper){
                $product = Product::find($paper->product_id);
                $transaction = new Transaction;
                $transaction->product_id = $product->id;
                $transaction->type = 'Credit';
                $transaction->current_quantity = $product->quantity;
                $transaction->new_quantity = $paper->total_sheet;
                $transaction->total_quantity = $product->quantity + $paper->total_sheet;
                $transaction->remarks = 'remove from job card';
                $transaction->trancation_by = $user->id;
                $transaction->job_card_id = $job_card->id;
                $transaction->issue_item_id = null;
                $transaction->save();

                $product->quantity = $product->quantity + $paper->total_sheet;
                $product->save();

                $paper->delete();
            }
        }

        
        $job_card->status_id = 3;
        if($job_card->save()){
            $po_item_ids = JobCardItem::where('job_card_id', $id)->pluck('purchase_order_item_id'); 
            JobCardItem::where('job_card_id', $id)->update(['status_id'=>3]); 
            Designing::where('job_card_id', $id)->delete(); 
            Planning::whereIn('purchase_order_item_id', $po_item_ids)->delete(); 
            PurchaseOrderItem::whereIn('id', $po_item_ids)->update(['status_id'=>2]); 
            return response()->json(['message'=>'Your Job card has Cancelled', 'class'=>'success']);
        }
        
    }


    
}
