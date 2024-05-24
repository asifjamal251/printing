<?php



namespace App\Http\Resources\Admin\Cutting;



use App\Models\JobCardHistory;
use App\Models\JobCardTimer;
use App\Models\ModuleUser;
use Illuminate\Http\Resources\Json\JsonResource;

class CuttingResource extends JsonResource{

    private function timer($jobCardId, $type){
        $timer = JobCardTimer::where(['machine' => 'Cutting', 'job_card_id' => $jobCardId])->first();
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
                return '0:0:0';
            }
        }

    }


    private function moduleUser($user, $id){
        $options = '<option selected="" value="">Oprator</option>';

        foreach (ModuleUser::where("module_id", 1)->get() as $alluser) {
            $options .= '<option value="' . $alluser->id . '" ' . ($user == $alluser->id ? 'selected' : '') . '>' . $alluser->name . '</option>';
        }

        return collect([
            'html' => '<div class="form-group" style="width:150px;">' .
                        '<select data-id="'. $id.'" class="form-select form-select-sm selectOprator" aria-label=".form-select-sm example">' .
                            $options .
                        '</select>' .
                    '</div>',
        ]);
    }


    function paperDivide($divide, $warehousetype){
        if($warehousetype != '' && $warehousetype == 0){
            return '<p class="border-bottom border-dark m-0">'.$divide.'</p><p class="m-0 text-danger">use stock from warehouse</p>';
        }
        if($warehousetype != '' && $warehousetype == 1){
            return '<p class="border-bottom border-dark m-0">'.$divide.'</p><p class="m-0 text-danger">put stock in warehouse</p>';
        }
        return $divide;
    }


    function sheetSize($sheet_size, $warehouse_paper){
        if($warehouse_paper != ''){
            return '<p class="border-bottom border-dark m-0">'.$sheet_size.'</p><p class="m-0 text-danger">'.$warehouse_paper.'</p>';
        }
        return $sheet_size;
    }



    function requiredSheet($required_sheet, $warehouse_sheet, $jobCardId, $metalic){
        if($metalic == 1){
            $current_history = JobCardHistory::where(['job_card_id' => $jobCardId, 'machine'=>'Cutting'])->latest()->first();
            return $current_history->counter;
        }

        if($warehouse_sheet != ''){
            return '<p class="border-bottom border-dark m-0">'.$required_sheet.'</p><p class="m-0 text-danger">'.$warehouse_sheet.'</p>';
        }
        return $required_sheet;
    }

    function requiredSheetTotal($required_sheet, $warehouse_sheet, $jobCardId, $metalic){
        if($metalic == 1){
            $current_history = JobCardHistory::where(['job_card_id' => $jobCardId, 'machine'=>'Cutting'])->latest()->first();
            return $current_history->counter;
        }

        if($warehouse_sheet != ''){
            return $required_sheet + $warehouse_sheet;
        }
        return $required_sheet;
    }

    function coating($coating){
        $coating = explode(',', strip_tags($coating));
        if($coating[0] == 'Metallic' || $coating[0] == 'metallic'){
            return ' - ' . $coating[0]; 
        } else{
            return '';
        }
    }

    function counter($jobCardId, $required, $metalic){
        if($metalic == 1){
            return 'N/A';
        }
        return $required;
    }

    function paperDetails($paperDetails){
        $jobCardPaper = [];
        
        foreach ($paperDetails as $key=>$item) {
            if($paperDetails->count() > 1){
                $jobCardPaper[] = '<p class="m-0 carton-list">' . @$item->product->name.'-'.@$item->product->productType->type.'</p>';
            }
        }

        if($paperDetails->count() > 1){
            $jobCardPaper[] = '';
        }
        $uniqueJobCardPaper = array_unique($jobCardPaper);
        return implode('', $jobCardPaper);
    }



    function paperDevide($paperDetails){
        $jobCardPaper = [];
        
        foreach ($paperDetails as $key=>$item) {
            if($paperDetails->count() > 1){
                $jobCardPaper[] = '<p class="m-0 carton-list">' . @$item->paper_divide.'</p>';
            }
        }

        if($paperDetails->count() > 1){
            $jobCardPaper[] = '';
        }
        //$uniqueJobCardPaper = array_unique($jobCardPaper);
        return implode('', $jobCardPaper);
    }


    function paperRequiredSheet($paperDetails){
        $jobCardPaper = [];
        
        foreach ($paperDetails as $key=>$item) {
            if($paperDetails->count() > 1){
                $jobCardPaper[] = '<p class="m-0 carton-list">' . @$item->total_sheet.'</p>';
            }
        }

        if($paperDetails->count() > 1){
            $jobCardPaper[] = '';
        }
        //$uniqueJobCardPaper = array_unique($jobCardPaper);
        return implode('', $jobCardPaper);
    }




    public function toArray($request){
        $moduleUser = $this->moduleUser($this->user_id, $this->id);

        return [
            'sn' => ++$request->start,
            'id' => $this->id, 
            'oprator' => $moduleUser['html'],           
            'user' => $this->user_id?$this->user->name:null,           
            'job_card_no'=>'<a class="text-danger" target="_blank" href="/admin/job-card/'.$this->jobCard->id.'">'.$this->jobCard->job_card_no."</a>",
            'set_no' => $this->jobCard->set_no,
            'paper_details' => $this->paperDetails($this->jobCard->jobCardPapers),
            'paper_devide' => $this->paperDevide($this->jobCard->jobCardPapers),
            'required_sheet' => $this->paperRequiredSheet($this->jobCard->jobCardPapers),
            'paper' => @$this->jobCard->paper->name . ' &nbsp;&nbsp;&nbsp;' .  @$this->jobCard->paper->category->name .$this->coating(otherCoatingTypeList(@$this->jobCard->jobCardItems)),
            'sheet_size' => $this->sheetSize($this->jobCard->sheet_size, $this->jobCard->warehouse_paper),
            'total_sheet' => $this->jobCard->total_sheet,
            'divide' => $this->paperDivide($this->jobCard->paper_divide, $this->jobCard->warehouse_type),
            'required_sheet_need' => ($this->jobCard->required_sheet + $this->jobCard->wastage_sheet),
            'required_sheet_total' =>  $this->cutting_sheets??'',
            'status'=> status($this->status_id),
            'status_id'=>$this->status_id,
            'job_card_id'=>$this->job_card_id,
            'cutting_sheets'=>$this->cutting_sheets??'',
            'file' => $this->jobCard->mediaFiles->count()>0?"<a class='glightbox' data-gallery='".$this->id."' href='".asset($this->jobCard->mediaFiles[0]['file'])."'> <img class='rounded avatar-sm' src='".asset($this->jobCard->mediaFiles[0]['file'])."'/></a>":"N/A",
            'carton_name'=>$this->job_card_id?getCartonNames(@$this->jobCard->jobCardItems):'',
            'timer' => $this->timer($this->job_card_id, 'Timer'),
            'timer_status' => $this->timer($this->job_card_id, 'Status'),
        ];

    }

}

