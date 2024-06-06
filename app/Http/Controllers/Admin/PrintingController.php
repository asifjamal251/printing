<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Printing\PrintingCollection;
use App\Models\ChemicalCoating;
use App\Models\JobCard;
use App\Models\JobCardHistory;
use App\Models\JobCardItem;
use App\Models\JobCardUser;
use App\Models\Lamination;
use App\Models\Leafing;
use App\Models\Media;
use App\Models\Printing;
use App\Models\PrintingPlate;
use App\Models\PurchaseOrderItem;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;

class PrintingController extends Controller
{
   
    public function index(Request $request){
        
        if ($request->ajax()) {
            $datas = Printing::orderBy('id', 'desc')->whereNotIn('status_id', [0])
                ->with(['jobCard' => function ($query) {
                    $query->with(['paper', 'jobCardItems'=>function($query){
                    $query->with(['PO', 'POItem']);
                },
                'jobCardHistory', 'jobCardUser']);
                }])
                ->has('jobCard');

            // if (auth('admin')->user()->role_id != 1 && auth('admin')->user()->role_id != 2) {
            //     $datas->whereNotIn('status_id', [5])
            //         ->whereHas('jobCard', function ($query) {
            //             $query->whereHas('jobCardUser', function ($query2) {
            //                 $query2->where('printing', auth('admin')->user()->id);
            //             });
            //         });
            // }

            $search = $request->search['value'];
            if ($search) {
                $datas->where(function($query) use ($search) {
                    $query->whereHas('jobCard.jobCardItems.POItem', function ($query) use ($search) {
                        $query->where('carton_size', 'like', '%'.$search.'%')
                              ->orWhere('carton_name', 'like', '%'.$search.'%')
                              ->orWhere('quantity', 'like', '%'.$search.'%');
                    })
                    ->orWhereHas('jobCard', function ($query) use ($search) {
                        $query->where('job_card_no', 'like', '%'.$search.'%');
                    });
                });
            }

            if($request->user_id){
                $datas->where('user_id', $request->user_id);
            }

            $getDate = request()->input('datefilter');
            if($getDate != '' && $getDate != 'All'){ //|| $getDate != 'all' || $getDate != 'All'
                $filterDate = explode(' - ', $getDate);
                $startDate = Carbon::parse($filterDate[0])->format('Y-m-d');
                $endDate = Carbon::parse($filterDate[1])->format('Y-m-d');

                $datas->when($getDate != '', function ($query) use ($startDate, $endDate) {
                    $query->whereBetween('created_at', [$startDate . ' 00:00:00', $endDate . ' 23:59:59']);
                });
            }
            
            $totaldata = $datas->count();

            $request->merge(['recordsTotal' => $totaldata, 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new PrintingCollection($datas));
        }

        return view('admin.printing.list');
    }

    public function create(){
        return view('admin.printing.create');
    }



    public function store(Request $request) {
       

       

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }


    public function edit($id){
        $dye_details = Printing::find($id);
        return view('admin.printing.edit', compact('dye_details'));
    }


    public function update(Request $request, $id) {
        $printing = Printing::find($id);
        $printing->printed_sheet = $request->printed_sheet;
        if($printing->save()){
            JobCard::where('id', $printing->job_card_id)->update(['printed_sheets'=>$printing->printed_sheet]);
            return response()->json(['message'=>'Printed Shhets updated successfully', 'class'=>'success', 'error'=>false]);     
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
    }





    public function changeStatus(Request $request)
    { 
        $job_card = JobCard::find($request->job_card_id);

        $printing = Printing::where(['id'=>$request->id])->first(); 
        if($printing->printed_sheet == ''){
            return response()->json(['message'=>'Printed Sheet required.', 'class'=>'error']);
        }

        if(($job_card->coating_machine == "chemical coating") && ($job_card->embossing_leafing == "Embossing" || $job_card->embossing_leafing == "None")) {

            if($request->status == 2){
                $check_jobcard = ChemicalCoating::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Chemical Coating.', 'class'=>'error']);
                }else{
                    ChemicalCoating::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Printing::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Chemical Coating'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>14]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Chemical Coating', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Printing']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Chemical Coating']);
            $history->job_card_in = now();
            $history->counter = $job_card->printed_sheets;
            $history->save();


            $printing = ChemicalCoating::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;

            $user = JobCardUser::where(['job_card_id'=>$request->job_card_id, 'module_id'=>2])->first();
            $printing->user_id = $user->module_user_id;


            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>16]);  
                Printing::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>16]);
                return response()->json(['message'=>'Job Card Status Has Changed.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }



        if(($job_card->coating_machine == "chemical coating" || $job_card->coating_machine == "gloss lamination") && ($job_card->embossing_leafing == "Leafing" || $job_card->embossing_leafing == "Both")) {


            if($request->status == 2){
                $check_jobcard = Leafing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Leafing.', 'class'=>'error']);
                }else{
                    Leafing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Printing::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Leafing'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>14]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Leafing', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Printing']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Leafing']);
            $history->job_card_in = now();
            $history->counter = $job_card->printed_sheets;
            $history->save();

            $printing = Leafing::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;

            $user = JobCardUser::where(['job_card_id'=>$request->job_card_id, 'module_id'=>5])->first();
            $printing->user_id = $user->module_user_id;

            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>17]);  
                Printing::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>17]);
                return response()->json(['message'=>'Job Card Status Has Changed.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }




        if(($job_card->coating_machine == "matt lamination") && ($job_card->embossing_leafing == "Leafing" || $job_card->embossing_leafing == "Both")) {

            if($request->status == 2){
                $check_jobcard = Lamination::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Lamination.', 'class'=>'error']);
                }else{
                    Lamination::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Printing::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>14]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Lamination', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Printing']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination']);
            $history->job_card_in = now();
            $history->counter = $job_card->printed_sheets;
            $history->save();

            $printing = Lamination::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;

            $user = JobCardUser::where(['job_card_id'=>$request->job_card_id, 'module_id'=>3])->first();
            $printing->user_id = $user->module_user_id;

            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>15]);  
                Printing::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>15]);
                return response()->json(['message'=>'Job Card Status Has Changed.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }



        if(($job_card->coating_machine == "matt lamination") && ($job_card->embossing_leafing == "Leafing" || $job_card->embossing_leafing == "Both")) {

            if($request->status == 2){
                $check_jobcard = Leafing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Leafing.', 'class'=>'error']);
                }else{
                    Leafing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Printing::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Leafing'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>14]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Leafing', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Printing']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Leafing']);
            $history->job_card_in = now();
            $history->counter = $job_card->printed_sheets;
            $history->save();

            $printing = Leafing::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;

            $user = JobCardUser::where(['job_card_id'=>$request->job_card_id, 'module_id'=>5])->first();
            $printing->user_id = $user->module_user_id;

            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>17]);  
                Printing::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>17]);
                return response()->json(['message'=>'Job Card Status Has Changed.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }




        if(($job_card->coating_machine == "matt lamination" || $job_card->coating_machine == "gloss lamination") && ($job_card->embossing_leafing == "Embossing" || $job_card->embossing_leafing == "None")) {

            if($request->status == 2){
                $check_jobcard = Lamination::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Lamination.', 'class'=>'error']);
                }else{
                    Lamination::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Printing::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>14]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Lamination', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Printing']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination']);
            $history->job_card_in = now();
            $history->counter = $job_card->printed_sheets;
            $history->save();


            $printing = Lamination::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;

            $user = JobCardUser::where(['job_card_id'=>$request->job_card_id, 'module_id'=>3])->first();
            $printing->user_id = $user->module_user_id;

            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>15]);  
                Printing::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>15]);
                return response()->json(['message'=>'Job Card Status Has Changed.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }


        
 

        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);

    }



    public function oprator(Request $request)
    {
        $module = Printing::find($request->id);
        if($request->user_id != ''){
            JobCardUser::where(['module_id' => 10, 'job_card_id' => $request->job_card_id])->update(['module_user_id' => $request->user_id]);
            $module->user_id = $request->user_id;
        }else{
            $module->user_id = null;
        }
        if($module->save()){
             return response()->json(['message'=>'Oprator assign successfully ...', 'class'=>'success']);  
        } 
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    
    }


    
}
