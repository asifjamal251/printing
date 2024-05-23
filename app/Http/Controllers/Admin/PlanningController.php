<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Planning\PlanningCollection;
use App\Models\Designing;
use App\Models\DyeDetails;
use App\Models\JobCard;
use App\Models\JobCardItem;
use App\Models\JobCardPaper;
use App\Models\Media;
use App\Models\Planning;
use App\Models\PlanningPlate;
use App\Models\PurchaseOrderItem;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;

class PlanningController extends Controller
{
   
    public function index(Request $request){
        //return Planning::orderBy('created_at', 'desc')->with(['dyeDetails', 'PO', 'POItems'])->get();
        if ($request->ajax()) {
            $user = Auth::guard('admin')->user();
            $datas = Planning::orderByRaw("CASE
                    WHEN status_id = 2 THEN 1
                    WHEN status_id = 5 THEN 2
                    ELSE 3
                    END")
                ->orderBy('created_at', 'desc')->with(['dyeDetails', 'oldDyeDetails','POItems','PO'=>function($query){
                $query->with(['client']);
            }]);

            $client = request()->input('client');
            if($client != null){
                $datas->whereHas('PO', function ($query) use ($client) {
                    $query->where('client_id', $client);
                });
            }

            $coating = request()->input('coating');
            if($coating != null){
                $datas->whereHas('POItems', function ($query) use ($coating) {
                    $query->where('coating_type_id', $coating);
                });
            }

            $other_coating = request()->input('other_coating');
            if($other_coating != null){
                $datas->whereHas('POItems', function ($query) use ($other_coating) {
                    $query->where('other_coating_type_id', $other_coating);
                });
            }


            $paper = request()->input('paper');
            if($paper != null){
                $datas->whereHas('POItems', function ($query) use ($paper) {
                    $query->where('paper_type_id', $paper);
                });
            }


            $search = $request->search['value'];
            if ($search) {
                $datas->whereHas('PO', function ($query) use ($search) {
                    $query->where('po_no', 'like', '%' . $search . '%');
                })->orWhereHas('POItems', function ($query) use ($search) {
                    $query->where('carton_size', 'like', '%' . $search . '%');
                    $query->orWhere('carton_name', 'like', '%'.$search.'%');
                    $query->orWhere('quantity', 'like', '%'.$search.'%');
                });
            }


           

            // if($user->role_id == 4){
            //     $datas->where('status_id', 2)->where('designer', auth('admin')->user()->id);
            // }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new PlanningCollection($datas));
            
           
        }
        return view('admin.planning.list');
    }

    public function create(){
        return view('admin.planning.create');
    }



    public function store(Request $request) {
       

        $this->validate($request,[
            'dye_no'=>'required',  
            'length'=>'required',  
            'width'=>'required',  
            'height'=>'required',  
            'ups'=>'required',  
            'sheet_size'=>'required',  
            'automatic_menual'=>'required',  
        ]);

        $planning = new Planning;
        $planning->dye_no = $request->dye_no;
        $planning->length = $request->length;
        $planning->width = $request->width;
        $planning->height = $request->height;
        $planning->ups = $request->ups;
        $planning->automatic = $request->automatic_menual;
        $planning->sheet_size = $request->sheet_size;
        $planning->carton_size = $request->length.'X'.$request->width.'X'.$request->height;
       

        if($planning->save()){ 
            return redirect()->route('admin.planning.index')->with(['class'=>'success','message'=>'Dye Details saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }


    public function edit($id){
        $planning = Planning::find($id);
        return view('admin.planning.edit', compact('dye_details'));
    }


    public function update(Request $request, $id) {
        $this->validate($request,[
            'dye_no'=>'required',  
            'length'=>'required',  
            'width'=>'required',  
            'height'=>'required',  
            'ups'=>'required',  
            'sheet_size'=>'required',  
            'automatic_menual'=>'required',  
        ]);

        $planning = Planning::find($id);
        $planning->dye_no = $request->dye_no;
        $planning->length = $request->length;
        $planning->width = $request->width;
        $planning->height = $request->height;
        $planning->ups = $request->ups;
        $planning->automatic = $request->automatic_menual;
        $planning->sheet_size = $request->sheet_size;
        $planning->carton_size = $request->length.'X'.$request->width.'X'.$request->height;

        if($planning->save()){ 
            return redirect()->route('admin.planning.index')->with(['class'=>'success','message'=>'Dye Details  updated successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }




    public function destroy($id)
    {
       
        $planning = Planning::find($id);
        $purchase_order_item = PurchaseOrderItem::find($planning->purchase_order_item_id);
        $purchase_order_item->status_id = 2;
        $purchase_order_item->save();
        if($planning->delete()){
            
            return response()->json(['message'=>'Planning  deleted successfully ...', 'class'=>'success' ]);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }




    public function makeJobCard(Request $request){
        //return $request->data;
        $user = Auth::guard('admin')->user();
        $planning_items = [];
        foreach ($request->data as $item) {
             $planning_items[] = $item['ids'];
        }


        $check_paper_type_pl = Planning::whereIn('id', $planning_items)->pluck('purchase_order_item_id');
        $check_paper_type_poi = PurchaseOrderItem::whereIn('id', $check_paper_type_pl)->pluck('paper_type_id');

        if (count(array_unique($check_paper_type_poi->toArray())) === 1) {
        } else {
            return response()->json(['message'=>'Paper type not same', 'class'=>'error', 'error'=>true]);
            exit();
        }


        $job_card_planning_items = JobCardItem::whereIn('planning_id', $planning_items)->get();
        if($job_card_planning_items->count() > 0){
            $job_card = JobCard::find($job_card_planning_items[0]->job_card_id);
        }
        else{

            $job_card = new JobCard;
            $job_card->planning_by = $user->id;
            $job_card->save();
        }

        $po_items_ids = [];

        foreach ($request->data as $item) {
            $planning = Planning::find($item['ids']);
            $dye_details = DyeDetails::find($planning->dye_detail_id);
            $po_item = PurchaseOrderItem::find($planning->purchase_order_item_id);

            $job_card_item = JobCardItem::firstOrNew(['job_card_id'=>$job_card->id, 'planning_id'=>$planning->id]);
            $job_card_item->purchase_order_item_id = $po_item->id;
            $job_card_item->purchase_order_id = $po_item->purchase_order_id;
            $job_card_item->ups = $item['ups'];
            $job_card_item->quantity = $po_item->quantity;
            $job_card->planning_by = $planning->designer;
            $po_items_ids[] = $po_item->id;

            $planning->ups = $item['ups'];
            $planning->status_id = 5;
            $planning->save();

            if($item['mix'] == 'yes'){
                $job_card->mix = 0;
            }else{
                $job_card->mix = 1;
                $job_card->sheet_size = $dye_details?$dye_details->sheet_size:null;
                $job_card->dye_details_id = $dye_details?$dye_details->id:null;
                $job_card->dye_details = $dye_details?$dye_details->dye_no.'/'.$dye_details->ups.'-'.$dye_details->dye_lock:'New';
            }
            $job_card_item->save();
            $job_card->save();
            
        }
        $designing = Designing::firstOrNew(['job_card_id'=>$job_card->id]);
        $designing->save();
        PurchaseOrderItem::whereIn('id', $po_items_ids)->update(['status_id' => 12 ]);

        $total_quantity = JobCardItem::where(['job_card_id'=>$job_card->id])->sum('quantity');
        $total_ups = JobCardItem::where(['job_card_id'=>$job_card->id])->sum('ups');

        $required_sheet = $total_quantity / $total_ups;

        JobCard::where(['id'=>$job_card->id])->update(['required_sheet' => $required_sheet]);

        $job_card_paper = JobCardPaper::firstOrNew(['job_card_id'=>$job_card->id]);
        $job_card_paper->sheet_size = $dye_details?$dye_details->sheet_size:null;
        $job_card_paper->required_sheet = $required_sheet;
        $job_card_paper->save();

        return response()->json(['message'=>'Planning created successfully', 'class'=>'success', 'error'=>false]);

        // PurchaseOrderItem::
        // $job_card = new JobCard;
    }




    public function updateJobCard(Request $request, $job_card){
        $user = Auth::guard('admin')->user();
        $planning_items = [];
        foreach ($request->data as $item) {
             $planning_items[] = $item['ids'];
        }

   
        $check_paper_type_pl = Planning::whereIn('id', $planning_items)->pluck('purchase_order_item_id');
        $check_paper_type_poi = PurchaseOrderItem::whereIn('id', $check_paper_type_pl)->pluck('paper_type_id');

        if (count(array_unique($check_paper_type_poi->toArray())) === 1) {
        } else {
            return response()->json(['message'=>'Paper type not same', 'class'=>'error', 'error'=>true]);
            exit();
        }

        $job_card = JobCard::find($job_card);
    

        $po_items_ids = [];

        foreach ($request->data as $item) {
            $planning = Planning::find($item['ids']);
            $dye_details = DyeDetails::find($planning->dye_detail_id);
            $po_item = PurchaseOrderItem::find($planning->purchase_order_item_id);

            $job_card_item = JobCardItem::firstOrNew(['job_card_id'=>$job_card->id, 'planning_id'=>$planning->id]);
            $job_card_item->purchase_order_item_id = $po_item->id;
            $job_card_item->purchase_order_id = $po_item->purchase_order_id;
            $job_card_item->ups = $item['ups'];
            $po_items_ids[] = $po_item->id;

            $planning->ups = $item['ups'];
            $planning->status_id = 5;
            $planning->save();

           
            $job_card->sheet_size = $dye_details?$dye_details->sheet_size:null;
            $job_card->dye_details_id = $dye_details?$dye_details->id:null;
            $job_card->dye_details = $dye_details?$dye_details->dye_no.'/'.$dye_details->ups:null;
            
            $job_card_item->save();
            $job_card->save();
            
        }
        $designing = Designing::firstOrNew(['job_card_id'=>$job_card->id]);
        $designing->save();
        PurchaseOrderItem::whereIn('id', $po_items_ids)->update(['status_id' => 12 ]);
        return response()->json(['message'=>'Planning created successfully', 'class'=>'success', 'error'=>false]);
    }


    public function changeStatus(Request $request){ 

    }

    
}
