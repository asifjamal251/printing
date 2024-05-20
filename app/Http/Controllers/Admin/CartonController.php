<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Carton\CartonCollection;
use App\Models\Carton;
use App\Models\Media;
use App\Rules\UniqueCombination;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;

class CartonController extends Controller
{
   
    public function index(Request $request){
       
        if ($request->ajax()) {
            $datas = Carton::orderBy('created_at', 'asc')->with(['client']);
            $totaldata = $datas->count();

            $search = $request->search['value'];

            if ($search) {
                $datas->where('carton_size', 'like', '%'.$search.'%');
                $datas->orWhere('dye_no', 'like', '%'.$search.'%');
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();

            return response()->json(new CartonCollection($datas));
            
           
        }
        return view('admin.carton.list');
    }

    public function create(){
        return view('admin.carton.create');
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


        $carton = new Carton;
        $carton->length = $request->length;
        $carton->width = $request->width;
        $carton->height = $request->height;
        $carton->ups = $request->ups;
        $carton->automatic = $request->automatic_manual;
        $carton->sheet_size = $request->sheet_size;
        $carton->dye_lock = $request->dye_lock;
        $carton->carton_size = $request->length.'X'.$request->width.'X'.$request->height;
       

        if($carton->save()){ 
            return redirect()->route('admin.carton.index')->with(['class'=>'success','message'=>'Dye Details saved successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }


    public function edit($id){
        $carton = Carton::find($id);
        return view('admin.carton.edit', compact('dye_details'));
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

        $carton = Carton::find($id);
        $carton->length = $request->length;
        $carton->width = $request->width;
        $carton->height = $request->height;
        $carton->ups = $request->ups;
        $carton->automatic = $request->automatic_manual;
        $carton->sheet_size = $request->sheet_size;
        $carton->dye_lock = $request->dye_lock;
        $carton->carton_size = $request->length.'X'.$request->width.'X'.$request->height;

        if($carton->save()){ 
            return redirect()->route('admin.carton.index')->with(['class'=>'success','message'=>'Dye Details  updated successfully.']);
        }

        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }




    public function destroy($id)
    {
       
        $carton = Carton::find($id);
        if($carton->delete()){
            
            return response()->json(['message'=>'Dye Details  deleted successfully ...', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }

    
}
