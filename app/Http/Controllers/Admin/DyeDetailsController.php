<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\DyeDetails\DyeDetailsCollection;
use App\Models\DyeDetails;
use App\Models\DyeDetailsPlate;
use App\Models\Media;
use App\Rules\UniqueCombination;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;

class DyeDetailsController extends Controller
{
   
    public function index(Request $request){
       
        if ($request->ajax()) {
            $datas = DyeDetails::orderBy('created_at', 'asc');
            $totaldata = $datas->count();

            $search = $request->search['value'];

            if ($search) {
                $datas->where('carton_size', 'like', '%'.$search.'%');
                $datas->orWhere('dye_no', 'like', '%'.$search.'%');
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new DyeDetailsCollection($datas));
            
           
        }
        return view('admin.dye-details.list');
    }

    public function create(){
        return view('admin.dye-details.create');
    }



    public function store(Request $request) {
       

       $this->validate($request, [
            'length' => [
                'required',
                new UniqueCombination('dye_details', [
                    'width' => $request->input('width'),
                    'height' => $request->input('height'),
                    'ups' => $request->input('ups'),
                    'sheet_size' => $request->input('sheet_size'),
                    'automatic' => $request->input('automatic_manual'),
                    'dye_lock' => $request->input('dye_lock'),
                ]),
            ],
            'width' => 'required',
            'height' => 'required',
            'ups' => 'required',
            'sheet_size' => 'required',
            'automatic_manual' => 'required',
            'dye_lock' => 'required',
        ]);


        $dye_details = new DyeDetails;
        $dye_details->dye_no = $request->dye_no;
        $dye_details->length = $request->length;
        $dye_details->width = $request->width;
        $dye_details->height = $request->height;
        $dye_details->ups = $request->ups;
        $dye_details->automatic = $request->automatic_manual;
        $dye_details->sheet_size = $request->sheet_size;
        $dye_details->dye_lock = $request->dye_lock;
        $dye_details->carton_size = $request->length.'X'.$request->width.'X'.$request->height;
       

        if($dye_details->save()){ 
            return redirect()->route('admin.dye-details.index')->with(['class'=>'success','message'=>'Dye Details saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }


    public function edit($id){
        $dye_details = DyeDetails::find($id);
        return view('admin.dye-details.edit', compact('dye_details'));
    }


    public function update(Request $request, $id) {
        $this->validate($request, [
            'length' => [
                'required',
                new UniqueCombination('dye_details', [
                    'width' => $request->input('width'),
                    'height' => $request->input('height'),
                    'ups' => $request->input('ups'),
                    'sheet_size' => $request->input('sheet_size'),
                    'automatic' => $request->input('automatic_manual'),
                    'dye_lock' => $request->input('dye_lock'),
                ], $id), // pass the ID of the current record
            ],
            'width' => 'required',
            'height' => 'required',
            'ups' => 'required',
            'sheet_size' => 'required',
            'automatic_manual' => 'required',
            'dye_lock' => 'required',
        ]);

        $dye_details = DyeDetails::find($id);
        $dye_details->dye_no = $request->dye_no;
        $dye_details->length = $request->length;
        $dye_details->width = $request->width;
        $dye_details->height = $request->height;
        $dye_details->ups = $request->ups;
        $dye_details->automatic = $request->automatic_manual;
        $dye_details->sheet_size = $request->sheet_size;
        $dye_details->dye_lock = $request->dye_lock;
        $dye_details->carton_size = $request->length.'X'.$request->width.'X'.$request->height;

        if($dye_details->save()){ 
            return redirect()->route('admin.dye-details.index')->with(['class'=>'success','message'=>'Dye Details  updated successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }




    public function destroy($id)
    {
       
        $dye_details = DyeDetails::find($id);
        if($dye_details->delete()){
            
            return response()->json(['message'=>'Dye Details  deleted successfully ...', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }

    
}
