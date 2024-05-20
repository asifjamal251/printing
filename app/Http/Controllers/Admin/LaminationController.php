<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Lamination\LaminationCollection;
use App\Models\Cutting;
use App\Models\DieCutting;
use App\Models\DyeCutting;
use App\Models\Embossing;
use App\Models\JobCard;
use App\Models\JobCardHistory;
use App\Models\JobCardItem;
use App\Models\Lamination;
use App\Models\Leafing;
use App\Models\Project;
use App\Models\PurchaseOrderItem;
use App\Models\SpotUv;
use Carbon\Carbon;
use Illuminate\Http\Request;

class LaminationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
       
        if ($request->wantsJson()) {
            // if (auth('admin')->user()->role_id == 1 || auth('admin')->user()->role_id == 2){
            //     $whereStatus = [0,1,2,3];
            // } else{
            //     $whereStatus = [2];
            // }
            $datas = Lamination::orderBy('id','desc')
            ->with(['user', 'jobCard'=>function($query){
                $query->with(['paper', 'putPaperWarehouse', 'getPaperWarehouse', 'jobCardItems'=>function($query){
                    $query->with(['PO', 'POItem']);
                }]);
            }])->has('jobCard');

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

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();
            return response()->json(new LaminationCollection($datas));
        }
        return view('admin.lamination.list');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        $printing = Lamination::find($id);
        $printing->laminated_sheets = $request->printed_sheet;
        if($printing->save()){
            JobCard::where('id', $printing->job_card_id)->update(['laminated_sheets'=>$printing->laminated_sheets]);
            return response()->json(['message'=>'Laminated Sheets updated successfully', 'class'=>'success', 'error'=>false]);     
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error', 'error'=>true]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(Lamination::where('id',$id)->delete()){
         return response()->json(['message'=>ucfirst(str_singular(request()->segment(2))).' Successfully Deleted', 'class'=>'success']); 
        }
        return back()->with(array('message' => 'Something Wrong', 'class' => 'error')); 
    }

        public function changeStatus(Request $request)
    { 
        //return $request->all();
        $job_card = JobCard::find($request->job_card_id);
        $lamination = Lamination::where(['id'=>$request->id])->first(); 
        if($lamination->laminated_sheets == ''){
            return response()->json(['message'=>'Laminated Sheet required.', 'class'=>'error']);
        }


        if(($job_card->coating_machine == "matt lamination") && ($job_card->other_coating_machine == "spot uv" || $job_card->other_coating_machine == "none") && ($job_card->embossing_leafing == "Leafing" || $job_card->embossing_leafing == "Both")) {

            if($request->status == 2){
                $check_jobcard = Leafing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Leafing.', 'class'=>'error']);
                }else{
                    Leafing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Lamination::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Leafing'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>15]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Leafing', 'class'=>'succss']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Leafing']);
            $history->job_card_in = now();
            $history->counter = $job_card->laminated_sheets;
            $history->save();

            $leafing = Leafing::firstorNew(['job_card_id'=>$request->job_card_id]);
            $leafing->status_id = 2;
            if ($leafing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>17]); 
                Lamination::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>17]);
                return response()->json(['message'=>'Job Card Assigned to lamination.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }




        if(($job_card->coating_machine == "gloss lamination") && ($job_card->other_coating_machine == "spot uv") && ($job_card->embossing_leafing == "Leafing" || $job_card->embossing_leafing == "None")) {

            if($request->status == 2){
                $check_jobcard = SpotUv::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Spot Uv.', 'class'=>'error']);
                }else{
                    SpotUv::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Lamination::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Spot Uv'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>15]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Spot Uv', 'class'=>'succss']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination']);
            $old_history->counter = $job_card->laminated_sheets;
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Spot Uv']);
            $history->job_card_in = now();
            $history->counter = $job_card->laminated_sheets;
            $history->save();

            $spot_uv = SpotUv::firstorNew(['job_card_id'=>$request->job_card_id]);
            $spot_uv->status_id = 2;
            if ($spot_uv->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>20]); 
                Lamination::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>20]);
                return response()->json(['message'=>'Job Card Assigned to lamination.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }




        if(($job_card->coating_machine == "matt lamination") && ($job_card->other_coating_machine == "spot uv") && ($job_card->embossing_leafing == "None")) {

            if($request->status == 2){
                $check_jobcard = SpotUv::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Spot Uv.', 'class'=>'error']);
                }else{
                    SpotUv::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Lamination::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Spot Uv'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>15]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Spot Uv', 'class'=>'succss']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination']);
            $old_history->counter = $job_card->laminated_sheets;
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Spot Uv']);
            $history->job_card_in = now();
            $history->counter = $job_card->laminated_sheets;
            $history->save();

            $spot_uv = SpotUv::firstorNew(['job_card_id'=>$request->job_card_id]);
            $spot_uv->status_id = 2;
            if ($spot_uv->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>20]); 
                Lamination::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>20]);
                return response()->json(['message'=>'Job Card Assigned to lamination.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }







        if(($job_card->coating_machine == "gloss lamination" || $job_card->coating_machine == "matt lamination") && ($job_card->other_coating_machine == "spot uv") && ($job_card->embossing_leafing == "Embossing" || $job_card->embossing_leafing == "Both")) {

            if($request->status == 2){
                $check_jobcard = SpotUv::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Spot Uv.', 'class'=>'error']);
                }else{
                    SpotUv::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Lamination::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Spot Uv'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>15]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Spot Uv', 'class'=>'succss']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination']);
            $old_history->counter = $job_card->laminated_sheets;
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Spot Uv']);
            $history->job_card_in = now();
            $history->counter = $job_card->laminated_sheets;
            $history->save();

            $embossing = SpotUv::firstorNew(['job_card_id'=>$request->job_card_id]);
            $embossing->status_id = 2;
            if ($embossing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>20]); 
                Lamination::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>20]);
                return response()->json(['message'=>'Job Card Assigned to lamination.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }







        if(($job_card->coating_machine == "gloss lamination" || $job_card->coating_machine == "matt lamination" || $job_card->coating_machine == "chemical coating") && ($job_card->other_coating_machine == "metallic" || $job_card->other_coating_machine == "both") && ($job_card->embossing_leafing == "Embossing" || $job_card->embossing_leafing == "Leafing" || $job_card->embossing_leafing == "Both" || $job_card->embossing_leafing == "None")) {

            if($request->status == 2){
                $check_jobcard = Cutting::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5, 'metalic_status' => 1])->latest()->first(); 
                if($check_jobcard != ''){
                    return response()->json(['message'=>'JobCard Has Completed On Cutting.', 'class'=>'error']);
                }else{
                    Cutting::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2, 'metalic_status' => 1])->delete(); 
                    Lamination::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Cutting', 'job_card_out' => null])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>15]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Cutting', 'class'=>'succss']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination']);
            $old_history->counter = $job_card->laminated_sheets;
            $old_history->job_card_out = now();
            $old_history->save();

            $history = new JobCardHistory;
            $history->job_card_id = $request->job_card_id;
            $history->machine = 'Cutting';
            $history->job_card_in = now();
            $history->counter = $job_card->laminated_sheets;
            $history->save();

            $cutting = Cutting::firstorNew(['job_card_id'=>$request->job_card_id, 'metalic_status'=>1]);
            $cutting->status_id = 2;
            if ($cutting->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>13]); 
                Lamination::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>13]);
                return response()->json(['message'=>'Job Card Assigned to lamination.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }





        if(($job_card->coating_machine == "gloss lamination" || $job_card->coating_machine == "matt lamination") && ($job_card->other_coating_machine == "none") && ($job_card->embossing_leafing == "Leafing" || $job_card->embossing_leafing == "None")) {

            if($request->status == 2){
                $check_jobcard = DyeCutting::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Dye Cutting.', 'class'=>'error']);
                }else{
                    DyeCutting::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Lamination::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Dye Cutting'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>15]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Dye Cutting', 'class'=>'succss']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination']);
            $old_history->counter = $job_card->laminated_sheets;
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Dye Cutting']);
            $history->job_card_in = now();
            $history->counter = $job_card->laminated_sheets;
            $history->save();

            $cutting = DyeCutting::firstorNew(['job_card_id'=>$request->job_card_id]);
            $cutting->status_id = 2;
            if ($cutting->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>19]); 
                Lamination::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>19]);
                return response()->json(['message'=>'Job Card Assigned to lamination.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }




        if(($job_card->coating_machine == "gloss lamination" || $job_card->coating_machine == "matt lamination") && ($job_card->other_coating_machine == "none") && ($job_card->embossing_leafing == "Embossing" || $job_card->embossing_leafing == "Both")) {


            if($request->status == 2){
                $check_jobcard = Embossing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Embossing.', 'class'=>'error']);
                }else{
                    Embossing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Lamination::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Embossing'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>15]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Embossing', 'class'=>'succss']);
                }
            }

             $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination']);
             $old_history->counter = $job_card->laminated_sheets;
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Embossing']);
            $history->job_card_in = now();
            $history->counter = $job_card->laminated_sheets;
            $history->save();
            
            $cutting = Embossing::firstorNew(['job_card_id'=>$request->job_card_id]);
            $cutting->status_id = 2;
            if ($cutting->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>18]); 
                Lamination::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>18]);
                return response()->json(['message'=>'Job Card Assigned to lamination.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }

        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);

    }

    public function oprator(Request $request)
    {
        $module = Lamination::find($request->id);
        if($request->user_id != ''){
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
