<?php

namespace App\Http\Resources\Admin\Printing;
use App\Models\Admin;
use App\Models\JobCardHistory;
use App\Models\JobCardTimer;
use App\Models\ModuleUser;
use Illuminate\Http\Resources\Json\JsonResource;

class PrintingResource extends JsonResource{


    private function timer($jobCardId, $type){
        $timer = JobCardTimer::where(['machine' => 'Printing', 'job_card_id' => $jobCardId])->first();
        if($type == 'Timer'){
            if ($timer) {
                if($timer->worked_time){
                    return formatTime($timer->worked_time);
                }else{
                    return '0:0:0';
                }
            } 
            else {
                return '0:0:0';
            }
        }

        if($type == 'Status'){
            if ($timer){
                return $timer->status;
            } else {
                return 'N/A';
            }
        }

    }


    function sheetSize($sheet_size, $warehouse_paper){
        if($warehouse_paper != ''){
            return '<p class=border-bottom "m-0">'.$sheet_size.'</p><p class="m-0 text-danger">'.$warehouse_paper.'</p>';
        }
        return $sheet_size;
    }

    private function machineUser($user, $id)
    {
        $options = '<option selected="" value="">Choose an User</option>';

        foreach (Admin::where("role_id", 6)->get() as $userAll) {
            $options .= '<option value="' . $userAll->id . '" ' . ($user == $userAll->id ? 'selected' : '') . '>' . $userAll->name . '</option>';
        }

        return collect([
            'html' => '<div class="m-0 form-group" style="max-width:150px;">' .
                        '<select data-id="'. $id.'" class="form-select form-select-sm selectUser" aria-label=".form-select-sm example">' .
                            $options .
                        '</select>' .
                    '</div>',
        ]);
    }

    function assignUser($user){
        if($user != ''){
            return $user->name;
        }
    }


    function counter($jobCardId){
        if($jobCardId){
            $current_history = JobCardHistory::where(['job_card_id' => $jobCardId, 'machine'=>'Printing'])->first();
            return $current_history->counter;
        }
        return 'N/A';
    }





    public function toArray($request){
        $userData = $this->machineUser($this->user, $this->id);
        return [

            'sn' => ++$request->start,
            'id' => $this->id,            
            'job_card_no'=>'<a class="text-danger" target="_blank" href="/admin/job-card/'.$this->jobCard->id.'">'.$this->jobCard->job_card_no."</a>",
            'set_no' => $this->jobCard->set_no,
            'color' => $this->jobCard->color,
            'sheet_size' => $this->jobCard->sheet_size,
            'total_sheet' => $this->counter($this->jobCard->id),
            'file' => $this->jobCard->mediaFiles->count()>0?"<a class='glightbox' data-gallery='".$this->id."' href='".asset($this->jobCard->mediaFiles[0]['file'])."'> <img class='rounded avatar-sm' src='".asset($this->jobCard->mediaFiles[0]['file'])."'/></a>":"N/A",
              
            'printed_sheet' => $this->printed_sheet??'',
            'user' => $this->user_id?ModuleUser::where(["module_id"=>9, 'id'=>$this->user_id])->value('name'):'N/A',
            'status'=> status($this->status_id),
            'status_id'=>$this->status_id,
            'job_card_id'=>$this->job_card_id,
            'carton_name'=>$this->job_card_id?getCartonNames(@$this->jobCard->jobCardItems):'',
            'timer' => $this->timer($this->job_card_id, 'Timer'),
            'timer_status' => $this->timer($this->job_card_id, 'Status'),
            'timer' => $this->timer($this->job_card_id, 'Timer'),
            'timer_status' => $this->timer($this->job_card_id, 'Status'),
        ];

    }

}

