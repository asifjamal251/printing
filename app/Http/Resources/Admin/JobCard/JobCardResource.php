<?php

namespace App\Http\Resources\Admin\JobCard;

use App\Models\Admin;
use App\Models\JobCardHistory;
use App\Models\JobCardUser;
use App\Models\ModuleUser;
use App\Models\Printing;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;

class JobCardResource extends JsonResource
{

    private function moduleUser($user, $id){
        $options = '<option selected="" value="">Oprator</option>';

        foreach (ModuleUser::where("module_id", 10)->get() as $alluser) {
            $options .= '<option '.$user.' value="' . $alluser->id . '" ' . ($user == $alluser->id ? 'selected' : '') . '>' . $alluser->name . '</option>';
        }

        return collect([
            'html' => '<div class="form-group">' .
                        '<select disabled data-id="'. $id.'" class="form-select form-select-sm selectOprator" aria-label=".form-select-sm example">' .
                            $options .
                        '</select>' .
                    '</div>',
        ]);
    }
    
    

    private function assignUser($user)
    {
        return $user ? $user->id : null;
    }

    function assignedUser($user){
        return $user ? $user->name : null;
    }

    function userSubmit($status, $user, $userList){
        if($status == 1 || $status == 2 || $status == 13 || $status == 14){
            return $userList;
        }
        return @$user;
    }

    public function toArray($request)
    {
        $printing = JobCardUser::where(['job_card_id' => $this->id, 'module_id' => 10])->first();
        if(isset($printing)){
            $moduleUser = $this->moduleUser($printing->module_user_id, $this->id);
        }
        else{
            $moduleUser = $this->moduleUser(null, $this->id);
        }
        
        $print_history = JobCardHistory::where(['job_card_id' => $this->id, 'machine' => 'Printing'])->first();

        return [
            'sn' => ++$request->start,
            'id' => $this->id,
            'job_card_no' => $this->job_card_no,
            'set_no' => $this->set_no??'N/A',
            'client' => getClientName($this->jobCardItems),
            'job_type' => $this->mix ? 'Separate' : 'Mix',
            'designer' => @$this->planningBy->name,
            'file' => $this->mediaFiles->count()>0?"<a class='glightbox' data-gallery='".$this->id."' href='".asset($this->mediaFiles[0]['file'])."'> <img class='rounded avatar-sm' src='".asset($this->mediaFiles[0]['file'])."'/></a>":"N/A",
            'printing_user' => $moduleUser['html'],
            'status' => status($this->status_id),
            'status_id' => $this->status_id,
            'required_sheet' => $this->required_sheet,
            'wastage_sheet' => $this->jobCardPapers->sum('wastage_sheet'),
            'total_sheet' => $this->required_sheet + $this->jobCardPapers->sum('wastage_sheet')??0,
            'carton_name'=>$this->id?'<div class="carton-container">'.getCartonNames(@$this->jobCardItems).'</div>':'',
            
        ];
    }
}
