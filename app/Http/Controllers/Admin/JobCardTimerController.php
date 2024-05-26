<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Activitylog\ActivitylogCollection;
use App\Models\JobCardTimer;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Spatie\Activitylog\Models\Activity;

class JobCardTimerController extends Controller{

    public function content(Request $request){
        $module = $this->machineName($request->machine);
        $job_timer = JobCardTimer::firstorNew(['job_card_id' => $request->job_card_id, 'machine'=>$module]);
        $job_timer->save();
        return response()->json(['class'=>'success','message'=>'Record Founded','datas'=>$job_timer]);
    }

    public function start(Request $request){
        $stopwatch = JobCardTimer::where('id', $request->id)->first();
        $stopwatch->started_at = now();
        $stopwatch->status = 1;
        $stopwatch->remarks = $request->remarks;
        $stopwatch->save();

        return response()->json(['class'=>'success','message'=>'Job Card Timer Started','error'=>false]);
    }

    public function pause(Request $request){
        $stopwatch = JobCardTimer::where('id', $request->id)->first();
        $stopwatch->paus_at = now();
        $stopwatch->status = 3;
        $stopwatch->remarks = $request->remarks;
        $stopwatch->save();


        $stopwatch = JobCardTimer::where('id', $request->id)->first();
        $startPauseDiff = $stopwatch->started_at->diffInSeconds($stopwatch->paus_at);
        $workTime = $startPauseDiff - $stopwatch->paused_time;
        $stopwatch->worked_time = $workTime;
        $stopwatch->save();


        return response()->json(['class'=>'warning','message'=>'Job Card Timer Pause','error'=>false]);
    }

    public function resume(Request $request){
        $stopwatch = JobCardTimer::where('id', $request->id)->first();
        $stopwatch->resume_at = now();
        $pausedTime = $stopwatch->resume_at->diffInSeconds($stopwatch->paus_at);
        $stopwatch->paused_time += $pausedTime;
        $stopwatch->status = 1;
        $stopwatch->remarks = $request->remarks;
        $stopwatch->save();

        return response()->json(['class'=>'success','message'=>'Job Card Timer Resume','error'=>false]);
    }

    public function stop(Request $request){
        $stopwatch = JobCardTimer::where('id', $request->id)->first();
        $stopwatch->ended_at = now();

        $endTime = $stopwatch->ended_at->diffInSeconds($stopwatch->started_at);
        $stopwatch->total_time += $endTime;

        $stopwatch->worked_time = $endTime - $stopwatch->paused_time;
        $stopwatch->status = 2;
        $stopwatch->remarks = $request->remarks;
        $stopwatch->save();

        return response()->json(['class'=>'success','message'=>'Job Card Timer Stop','error'=>false]);
    }

    public function machineName($id){
        if($id == 1){
            return 'Cutting';
        }

        if($id == 2){
            return 'Printing';
        }

        if($id == 3){
            return 'Chemical Coating';
        }

        
        if($id == 4){
            return 'Lamination';
        }

        if($id == 5){
            return 'Embossing';
        }

        if($id == 6){
            return 'Leafing';
        }

        if($id == 7){
            return 'Spot Uv';
        }

        if($id == 8){
            return 'Dye Cutting';
        }

        if($id == 9){
            return 'Dye Breaking';
        }

        if($id == 10){
            return 'Pasting';
        }
    }
}
