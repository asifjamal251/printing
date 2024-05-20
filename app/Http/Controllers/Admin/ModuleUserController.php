<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\ModuleUser\ModuleUserCollection;
use App\Models\ModuleUser;
use Illuminate\Http\Request;

class ModuleUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->wantsJson()) {
            $datas = ModuleUser::orderBy('created_at','desc')->with('module');
            
            $search = $request->search['value'];
            if ($search) {
                $datas->where('name', 'like', '%'.$search.'%');
              
            }
            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();
            return response()->json(new ModuleUserCollection($datas));
           
        }

        return view('admin.module-user.list');
    }

   

    public function store(Request $request) {

        $this->validate($request,[
            'name'=>'required|string|max:255',    
            'module'=>'required',    
            'status'=>'required',    
        ]);

        $user = new ModuleUser;
        $user->name = $request->name;
        $user->module_id = $request->module;
        $user->status = $request->status?1:0;
        if($user->save()){ 
            return redirect()->route('admin.module-user.index')->with(['class'=>'success','message'=>'User Created successfully.']);
        }
        return response()->json(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }
        

    public function edit(Request $request, $id)
    {
       $user = ModuleUser::where('id', $id)->with('module')->first();
       return view('admin.module-user.edit', compact('user'));
    }

 
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'name'=>'required|string|max:255',    
            'module'=>'required',    
            'status'=>'required',    
        ]);

        $user = ModuleUser::find($id);
        $user->name = $request->name;
        $user->module_id = $request->module;
        $user->status = $request->status?1:0;
        if($user->save()){ 
            return redirect()->route('admin.module-user.index')->with(['class'=>'success','message'=>'User Created successfully.']);
        }
        return response()->json(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }

   
}
