<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Dominant\DominantCollection;
use App\Models\DieCutting;
use App\Models\Dominant;
use App\Models\Embossing;
use App\Models\Leafing;
use App\Models\Project;
use Carbon\Carbon;
use Illuminate\Http\Request;

class DominantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->wantsJson()) {
            if (auth('admin')->user()->role_id == 1 || auth('admin')->user()->role_id == 2) {
                $whereStatus = [0,1,2,3];
            } else{
                $whereStatus = [2];
            }
            $datas = Dominant::orderBy('id','desc')->whereIn('status',$whereStatus)
            ->with(['project'=>function($query){
                $query->select('id','cutsize','total_sheet','job_no','file','coating','icon','priority');
            }])
            ->has('project')
            ->select('id','job_no','project_id','status','updated_at');

            if (auth('admin')->user()->role_id == 1 || auth('admin')->user()->role_id == 2){
                $datas->whereIn('status', $request->status?[$request->status]:[1,2]);
            } else{
                $datas->whereIn('status', $request->status?[$request->status]:[2]);
            }

            if ($request->fromDate && $request->toDate) {
                $from = Carbon::parse($request->fromDate)->format('Y-m-d');
                $to = Carbon::parse($request->toDate)->format('Y-m-d');
                $datas->whereBetween('updated_at', [$from." 00:00:00", $to." 23:59:59"]);
            }

            $totaldata = $datas->count();
            $search = $request->search['value'];
            if ($search) {
                $datas->where('job_no', 'like', '%'.$search.'%');
            }

            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();
            return response()->json(new DominantCollection($datas));
        }
        return view('admin.dominant.list');
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
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(Dominant::where('id',$id)->delete()){
         return response()->json(['message'=>ucfirst(str_singular(request()->segment(2))).' Successfully Deleted', 'class'=>'success']); 
        }
        return back()->with(array('message' => 'Something Wrong', 'class' => 'error')); 
    }


    public function changeStatus(Request $request)
    { 
        //return $request->all();
        $project = Project::find($request->project_id);
        $dominant = Dominant::find($request->id);
 





        if($dominant->leafing == 1){
            if ($project->embossing_leafing == "both") {

                if ($request->status == 3){
                   
                    if(Embossing::where(['project_id'=>$request->project_id])->delete()){
                        if(Dominant::whereIn('id',((is_array($request->id))?$request->id:[$request->id]))->update(['status'=>2])){
                            return response()->json(['message'=>'Project Status Changed', 'class'=>'success']); 
                        } 
                    }
                }

                if($request->status == 1){

                    $embossing = new Embossing; 
                    $embossing->job_no = $project->job_no;
                    $embossing->project_id = $project->id;
                    $embossing->status = 2;
                    if($embossing->save()){
                        if(Dominant::whereIn('id',((is_array($request->id))?$request->id:[$request->id]))->update(['status'=>1])){
                            return response()->json(['message'=>'Project Status Changed', 'class'=>'success']); 
                        }
                    }

                }
                
            }

            else{

                if ($request->status == 3){
                   
                    if(DieCutting::where(['project_id'=>$request->project_id])->delete()){
                        if(Dominant::whereIn('id',((is_array($request->id))?$request->id:[$request->id]))->update(['status'=>2])){
                            return response()->json(['message'=>'Project Status Changed', 'class'=>'success']); 
                        } 
                    }
                }

                if($request->status == 1){

                    $diecutting = new DieCutting; 
                    $diecutting->job_no = $project->job_no;
                    $diecutting->project_id = $project->id;
                    $diecutting->status = 2;
                    if($diecutting->save()){
                        if(Dominant::whereIn('id',((is_array($request->id))?$request->id:[$request->id]))->update(['status'=>1])){
                            return response()->json(['message'=>'Project Status Changed', 'class'=>'success']); 
                        }
                    }

                }
                
            } 
        } 











        if($dominant->leafing == 0){
            if ($project->embossing_leafing == "embossing" || $project->embossing_leafing == "both") {

                if ($request->status == 3){
                   
                    if(Embossing::where(['project_id'=>$request->project_id])->delete()){
                        if(Dominant::whereIn('id',((is_array($request->id))?$request->id:[$request->id]))->update(['status'=>2])){
                            return response()->json(['message'=>'Project Status Changed', 'class'=>'success']); 
                        } 
                    }
                }

                if($request->status == 1){

                    $embossing = new Embossing; 
                    $embossing->job_no = $project->job_no;
                    $embossing->project_id = $project->id;
                    $embossing->status = 2;
                    if($embossing->save()){
                        if(Dominant::whereIn('id',((is_array($request->id))?$request->id:[$request->id]))->update(['status'=>1])){
                            return response()->json(['message'=>'Project Status Changed', 'class'=>'success']); 
                        }
                    }

                }
                
            }

            if ($project->embossing_leafing == "leafing") {

                if ($request->status == 3){
                   
                    if(Leafing::where(['project_id'=>$request->project_id])->delete()){
                        if(Dominant::whereIn('id',((is_array($request->id))?$request->id:[$request->id]))->update(['status'=>2])){
                            return response()->json(['message'=>'Project Status Changed', 'class'=>'success']); 
                        } 
                    }
                }

                if($request->status == 1){

                    $diecutting = new DieCutting; 
                    $diecutting->job_no = $project->job_no;
                    $diecutting->project_id = $project->id;
                    $diecutting->status = 2;
                    if($diecutting->save()){
                        if(Dominant::whereIn('id',((is_array($request->id))?$request->id:[$request->id]))->update(['status'=>1])){
                            return response()->json(['message'=>'Project Status Changed', 'class'=>'success']); 
                        }
                    }

                }
                
            }

            if ($project->embossing_leafing == "none") {

                if ($request->status == 3){
                   
                    if(DieCutting::where(['project_id'=>$request->project_id])->delete()){
                        if(Dominant::whereIn('id',((is_array($request->id))?$request->id:[$request->id]))->update(['status'=>2])){
                            return response()->json(['message'=>'Project Status Changed', 'class'=>'success']); 
                        } 
                    }
                }

                if($request->status == 1){

                    $diecutting = new DieCutting; 
                    $diecutting->job_no = $project->job_no;
                    $diecutting->project_id = $project->id;
                    $diecutting->status = 2;
                    if($diecutting->save()){
                        if(Dominant::whereIn('id',((is_array($request->id))?$request->id:[$request->id]))->update(['status'=>1])){
                            return response()->json(['message'=>'Project Status Changed', 'class'=>'success']); 
                        }
                    }

                }
                
            } 
        } 



        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);

    }
}
