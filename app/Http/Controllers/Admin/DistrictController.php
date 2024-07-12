<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\District\DistrictCollection;
use App\Models\District;
use Illuminate\Http\Request;

class DistrictController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->wantsJson()) {
            $datas = District::join('states', 'districts.state_id', '=', 'states.id')
                    ->orderBy('states.name', 'asc') // Order by state name
                    ->orderBy('districts.created_at', 'desc') // Secondary order by created_at in descending order
                    ->with(['state']) // Eager load the state relationship
                    ->select('districts.*');
            
            $search = $request->search['value'];
            if ($search) {
                $datas->where('districts.name', 'like', '%'.$search.'%');
              
            }

            if($request->state){
                $datas->where('state_id', $request->state);
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();
            return response()->json(new DistrictCollection($datas));
           
        }

        return view('admin.district.list');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request )
    {
        return view('admin.district.create');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, Employee $employee )
    {   
       
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
        public function store(Request $request) {

            $this->validate($request,[
                'name'=>'required',    
                'state'=>'required',    
            ]);

            $district = new District;
            $district->name = $request->name;
            $district->state_id = $request->state;
            if($district->save()){ 
                return response()->json(['class'=>'success','message'=>'District Created Successfuly.']);
            }

            return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
        }
        
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, District $district)
    {
        return view('admin.district.edit', compact('district')); 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
                'name'=>'required',
                'state'=>'required',    
            ]);

            $district = District::find($id);
            $district->name = $request->name;
            $district->state_id = $request->state;
            if($district->save()){ 
                return response()->json(['class'=>'success','message'=>'District Created Successfuly.']);
            }

            return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        $district = District::find($id);
        if($district->delete()){
            return response()->json(['message'=>'District deleted Successfully ...', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }
}
