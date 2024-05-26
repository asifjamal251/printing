<?php
namespace App\Http\Resources\Admin\DyeBreaking;
use App\Models\Admin;
use App\Models\ModuleUser;
use Illuminate\Http\Resources\Json\JsonResource;

class DyeBreakingResource extends JsonResource

{
    private function moduleUser($user, $id){
        $options = '<option selected="" value="">Oprator</option>';

        foreach (ModuleUser::where("module_id", 9)->get() as $alluser) {
            $options .= '<option value="' . $alluser->id . '" ' . ($user == $alluser->id ? 'selected' : '') . '>' . $alluser->name . '</option>';
        }

        return collect([
            'html' => '<div class="m-0 form-group">' .
                        '<select data-id="'. $id.'" class="form-select form-select-sm selectOprator" aria-label=".form-select-sm example">' .
                            $options .
                        '</select>' .
                    '</div>',
        ]);
    }

    function sheetSize($sheet_size, $warehouse_paper){
        if($warehouse_paper != ''){
            return '<p class=border-bottom "m-0">'.$sheet_size.'</p><p class="m-0 text-danger">'.$warehouse_paper.'</p>';
        }
        return $sheet_size;
    }


    private function dataUser($user, $id)
    {
        $current_user = ($user != '') ? $this->assignUser($this->jobCard->jobCardUser->DyeBreakingUser ?? '') : '';

        $options = '<option selected="" value="">Choose an User</option>';

        // Use pluck to get an array of specific column values
        $adminUsers = Admin::where("role_id", 13)->pluck('name', 'id');

        foreach ($adminUsers as $userId => $userName) {
            $options .= '<option new="' . $current_user . '"  value="' . $userId . '" ' . ($current_user == $userId ? 'selected' : '') . '>' . $userName . '</option>';
        }

        return collect([
            'html' => '<div class="m-0 form-group" style="max-width:150px;">' .
                '<select data-id="' . $id . '" data-machine="DyeBreaking" class="form-select form-select-sm selectUser" aria-label=".form-select-sm example">' .
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
        if($status == 2){
            return $userList;
        }
        return $user;
    }



    public function toArray($request)
    {
        $moduleUser = $this->moduleUser($this->user_id, $this->id);
        return [
            'sn' => ++$request->start,
            'id' => $this->id,
            'oprator' => $moduleUser['html'],           
            'user' => $this->user_id?$this->user->name:null,            
            'user_id' => $this->user_id,            
            'job_card_no'=>'<a class="text-danger" target="_blank" href="/admin/job-card/'.$this->jobCard->id.'">'.$this->jobCard->job_card_no."</a>",
            'set_no' => $this->jobCard->set_no,
            'carton_name' => @$this->POItem->carton_name,
            'po_quantity' => @$this->POItem->quantity,
            'client' => $this->PO->client->company_name, 
            'ready_quantity' => $this->ready_quantity??'', 
            'pending_quantity' => @$this->POItem->quantity - $this->ready_quantity??0, 
            'ready_box' => $this->ready_box??'', 
            'status'=> status($this->status_id),
            'status_id'=>$this->status_id,
            'job_card_id'=>$this->job_card_id,
            'file' => $this->jobCard->mediaFiles->count()>0?"<a class='glightbox' data-gallery='".$this->id."' href='".asset($this->jobCard->mediaFiles[0]['file'])."'> <img class='rounded avatar-sm' src='".asset($this->jobCard->mediaFiles[0]['file'])."'/></a>":"N/A",
        ];

    }

}

