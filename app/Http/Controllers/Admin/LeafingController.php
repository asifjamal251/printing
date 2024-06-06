<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Leafing\LeafingCollection;
use App\Models\ChemicalCoating;
use App\Models\Dominant;
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

class LeafingController extends Controller
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
            $datas = Leafing::orderBy('id','desc')
            ->with(['user', 'jobCard'=>function($query){
                $query->with(['paper', 'jobCardHistory', 'jobCardItems'=>function($query){
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

            $getDate = request()->input('datefilter');
            if($getDate != '' && $getDate != 'All'){ //|| $getDate != 'all' || $getDate != 'All'
                $filterDate = explode(' - ', $getDate);
                $startDate = Carbon::parse($filterDate[0])->format('Y-m-d');
                $endDate = Carbon::parse($filterDate[1])->format('Y-m-d');

                $datas->when($getDate != '', function ($query) use ($startDate, $endDate) {
                    $query->whereBetween('created_at', [$startDate . ' 00:00:00', $endDate . ' 23:59:59']);
                });
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();
            return response()->json(new LeafingCollection($datas));
        }
        return view('admin.leafing.list');
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
        $printing = Leafing::find($id);
        $printing->leafing_counter = $request->printed_sheet;
        if($printing->save()){
            JobCard::where('id', $printing->job_card_id)->update(['leafing_counter'=>$printing->leafing_counter]);
            return response()->json(['message'=>'Printed Sheets updated successfully', 'class'=>'success', 'error'=>false]);     
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
        if(Leafing::where('id',$id)->delete()){
         return response()->json(['message'=>ucfirst(str_singular(request()->segment(2))).' Successfully Deleted', 'class'=>'success']); 
        }
        return back()->with(array('message' => 'Something Wrong', 'class' => 'error')); 
    }


    public function changeStatus(Request $request)
    {

        $job_card = JobCard::find($request->job_card_id);

        $leafing = Leafing::where(['id'=>$request->id])->first(); 
        if($leafing->leafing_counter == ''){
            return response()->json(['message'=>'Leafing Counter required.', 'class'=>'error']);
        }

        if(($job_card->coating_machine == "chemical coating") && ($job_card->other_coating_machine == "spot uv" || $job_card->other_coating_machine == "none" || $job_card->other_coating_machine == "both" || $job_card->other_coating_machine == "metallic") && ($job_card->embossing_leafing == "Leafing" || $job_card->embossing_leafing == "Both")) {


            if($request->status == 2){
                $check_jobcard = ChemicalCoating::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Chemical Coating.', 'class'=>'error']);
                }else{
                    ChemicalCoating::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Leafing::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Chemical Coating'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>17]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Chemical Coating', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Leafing']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Chemical Coating']);
            $history->job_card_in = now();
            $history->counter = $job_card->leafing_counter;
            $history->save();

            $printing = ChemicalCoating::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;
            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>16]);  
                Leafing::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>16]);
                return response()->json(['message'=>'Job Card Assigned to printing.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }




        if(($job_card->coating_machine == "gloss lamination") && ($job_card->other_coating_machine == "spot uv" || $job_card->other_coating_machine == "none" || $job_card->other_coating_machine == "both" || $job_card->other_coating_machine == "metallic") && ($job_card->embossing_leafing == "Leafing" || $job_card->embossing_leafing == "Both")) {

            if($request->status == 2){
                $check_jobcard = Lamination::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Lamination.', 'class'=>'error']);
                }else{
                    Lamination::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Leafing::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>17]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Lamination', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Leafing']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Lamination']);
            $history->job_card_in = now();
            $history->counter = $job_card->leafing_counter;
            $history->save();


            $printing = Lamination::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;
            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>15]);  
                Leafing::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>15]);
                return response()->json(['message'=>'Job Card Assigned to printing.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }





        if(($job_card->coating_machine == "matt lamination") && ($job_card->other_coating_machine == "spot uv" || $job_card->other_coating_machine == "both" || $job_card->other_coating_machine == "metallic") && ($job_card->embossing_leafing == "Leafing" || $job_card->embossing_leafing == "Both")) {

            if($request->status == 2){
                $check_jobcard = SpotUv::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Spot Uv.', 'class'=>'error']);
                }else{
                    SpotUv::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Leafing::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Spot Uv'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>17]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Spot Uv', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Leafing']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Spot Uv']);
            $history->job_card_in = now();
            $history->counter = $job_card->leafing_counter;
            $history->save();

            $printing = SpotUv::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;
            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>20]);  
                Leafing::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>20]);
                return response()->json(['message'=>'Job Card Assigned to printing.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }




        if(($job_card->coating_machine == "matt lamination") && ($job_card->other_coating_machine == "none") && ($job_card->embossing_leafing == "Both")) {

            if($request->status == 2){
                $check_jobcard = Embossing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Embossing.', 'class'=>'error']);
                }else{
                    Embossing::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Leafing::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Embossing'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>17]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Embossing', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Leafing']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Embossing']);
            $history->job_card_in = now();
            $history->counter = $job_card->leafing_counter;
            $history->save();

            $printing = Embossing::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;
            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>18]);  
                Leafing::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>18]);
                return response()->json(['message'=>'Job Card Assigned to printing.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }




        if(($job_card->coating_machine == "matt lamination") && ($job_card->other_coating_machine == "none") && ($job_card->embossing_leafing == "Leafing")) {

            if($request->status == 2){
                $check_jobcard = DyeCutting::where(['job_card_id'=>$request->job_card_id, 'status_id' => 5])->get(); 
                if($check_jobcard->count() > 0){
                    return response()->json(['message'=>'JobCard Has Completed On Dye Cutting.', 'class'=>'error']);
                }else{
                    DyeCutting::where(['job_card_id'=>$request->job_card_id, 'status_id' => 2])->delete(); 
                    Leafing::where(['id'=>$request->id])->update(['status_id'=>2]); 
                    JobCardHistory::where(['job_card_id'=>$request->job_card_id, 'machine'=>'Dye Cutting'])->delete();
                    JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>17]); 
                    return response()->json(['message'=>'Jobcard Cancelled From Dye Cutting', 'class'=>'error']);
                }
            }

            $old_history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Leafing']);
            $old_history->job_card_out = now();
            $old_history->save();

            $history = JobCardHistory::firstorNew(['job_card_id'=>$request->job_card_id, 'machine'=>'Dye Cutting']);
            $history->job_card_in = now();
            $history->counter = $job_card->leafing_counter;
            $history->save();

            $printing = DyeCutting::firstorNew(['job_card_id'=>$request->job_card_id]);
            $printing->status_id = 2;
            if ($printing->save()) {
                JobCard::where(['id'=>$request->job_card_id])->update(['status_id'=>19]);  
                Leafing::where(['id'=>$request->id])->update(['status_id'=>5]);  
                $purchase_order_item_ids = JobCardItem::where(['job_card_id'=>$request->job_card_id])->pluck('purchase_order_item_id'); 
                PurchaseOrderItem::whereIn('id', $purchase_order_item_ids)->update(['status_id'=>19]);
                return response()->json(['message'=>'Job Card Assigned to printing.', 'class'=>'success']);
            }
        
            return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
            
        }


        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);

    }

    public function oprator(Request $request)
    {
        $module = Leafing::find($request->id);
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
