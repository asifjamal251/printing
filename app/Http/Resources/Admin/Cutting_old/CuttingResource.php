<?php



namespace App\Http\Resources\Admin\Cutting;



use App\Models\JobCardHistory;
use App\Models\ModuleUser;
use Illuminate\Http\Resources\Json\JsonResource;

class CuttingResource extends JsonResource

{

    /**

     * Transform the resource into an array.

     *

     * @param  \Illuminate\Http\Request  $request

     * @return array

     */
    private function moduleUser($user, $id){
        $options = '<option selected="" value="">Oprator</option>';

        foreach (ModuleUser::where("module_id", 1)->get() as $alluser) {
            $options .= '<option value="' . $alluser->id . '" ' . ($user == $alluser->id ? 'selected' : '') . '>' . $alluser->name . '</option>';
        }

        return collect([
            'html' => '<div class="form-group">' .
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




    public function toArray($request){
        $moduleUser = $this->moduleUser($this->user_id, $this->id);

        return [
            'sn' => ++$request->start,
            'id' => $this->id, 
            'oprator' => $moduleUser['html'],           
            'user' => $this->user_id?$this->user->name:null,           
            'job_card_no' => $this->jobCard->job_card_no,
            'paper' => @$this->jobCard->paper->name . ' &nbsp;&nbsp;&nbsp;' .  @$this->jobCard->paper->category->name .$this->coating(otherCoatingTypeList(@$this->jobCard->jobCardItems)),
            'sheet_size' => $this->sheetSize($this->jobCard->sheet_size, $this->jobCard->warehouse_paper),
            //'total_sheet' => $this->jobCard->total_sheet,
            'total_sheet' => $this->counter($this->jobCard->id, $this->jobCard->total_sheet, $this->metalic_status),
            'divide' => $this->paperDivide($this->jobCard->paper_divide, $this->jobCard->warehouse_type),
            'required_sheet' => $this->requiredSheet($this->jobCard->required_sheet + $this->jobCard->wastage_sheet, $this->jobCard->warehouse_sheet, $this->jobCard->id, $this->metalic_status),
            //'required_sheet_total' =>  $this->requiredSheetTotal($this->jobCard->required_sheet + $this->jobCard->wastage_sheet, $this->jobCard->warehouse_sheet, $this->jobCard->id, $this->metalic_status),
            'required_sheet_total' =>  $this->cutting_sheets??'',
            'status'=> status($this->status_id),
            'status_id'=>$this->status_id,
            'job_card_id'=>$this->job_card_id,
            'cutting_sheets'=>$this->cutting_sheets??'',
            'file' => $this->jobCard->mediaFiles->count()>0?"<a class='glightbox' data-gallery='".$this->id."' href='".asset($this->jobCard->mediaFiles[0]['file'])."'> <img class='rounded avatar-sm' src='".asset($this->jobCard->mediaFiles[0]['file'])."'/></a>":"N/A",
        ];

    }

}

