<?php 
use App\Models\CartonHistory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

if (! function_exists('short_description')) {
    function short_description($str) {
            $description = substr($str, 0, 10);
            return $description;
    }
}

if (!function_exists('adminRoute')) {
    function adminRoute($slug,$param=null){
        return route('admin.'.request()->segment(2).'.'.$slug,$param);
    }
}
if (!function_exists('can')) {
    function can($expression,$type='admin') {
        $expression = strpos($expression, '_')?$expression : $expression.'_'.request()->segment(2);
        return  auth($type)->user()->hasAccess($expression.'_'.request()->segment(2));
    }
}

if (!function_exists('bucketPath')) {
    function bucketPath($name,$image='') {
        return  ('images/'.str_singular($name).'/'.$image);
    }
}
if (!function_exists('bucketUrl')) {
    function bucketUrl($image='',$path='') {       
        return 'https://'.preg_replace('/([^:])(\/{2,})/', '$1/','d2sexodnj2769r.cloudfront.net/'.$path.'/'.$image);          
    }
}
if (!function_exists('cdn')) {
    function cdn($image='',$path='') {
        return bucketUrl($image,$path);          
    }
}

if(!function_exists('get_app_setting')){
    function get_app_setting($setting_type){
        $setting = App\Models\SiteSetting::with(['siteLogo','siteFavicon'])->latest()->first();
        if($setting[$setting_type]){

            if($setting_type == 'logo' && $setting->siteLogo){
                return $setting->siteLogo->file;
            }
            if($setting_type == 'favicon' && $setting->siteFavicon){
                return $setting->siteFavicon->file;
            }

            return $setting[$setting_type];
        }
        return "Undefined request";
    }
}

if (!function_exists('getAdmin')) {
    function getAdmin($get_detail){
        $admin = \Auth::guard('admin')->user();

        if($get_detail != 'password' && $get_detail != 'role' && $get_detail != 'role_id'){
            if($admin[$get_detail]){
                return $admin[$get_detail];
            }
        }

        if ($get_detail == 'role') {
            $admin->with('role')->first();
            return $admin->role->display_name;
        }
        
        return "Undefined request";
    }
}

if (!function_exists('AdminLog')) {
    function AdminLog($request,$logName = 'Basic',$text = 'Nothing') {

        $log = new App\Model\AdminLog;
        $log->admin_id = \Auth::guard('admin')->user()->id??'';
        $log->log_name = $logName;
        $log->route = $request->url();

        $log->ipAddress = $request->ip();
        $log->method = $request->method();
        $log->text = $text;

        $log->save();

    }
}

if (!function_exists('embossingLeafing')) {

    function embossingLeafing($id){
        if($id == 0 || $id == '0'){
            return "None";
        }

        if($id == 1 || $id == '1'){
            return "Embossing";
        }

        if($id == 2 || $id == '2'){
            return "Leafing";
        }

        if($id == 3 || $id == '3'){
            return "Both";
        }  
    }
}


if (!function_exists('status')) {

    function status($id){
        $weight = App\Models\Status::where(['id'=> $id])->first();
        if($weight){
            return $weight->status_badge;
        }
        return null;
    }
}

if (!function_exists('getClientName')) {
    function getClientName($items){
        $clientNames = [];
        foreach ($items as $item) {
            $clientNames[] = '<p class="m-0 carton-list">'.@$item->PO->client->company_name.'</p> ';
        }

        $uniqueClientNames = array_unique($clientNames);
        return implode(' ', $uniqueClientNames);
    }
}


if (!function_exists('PONO')) {
    function PONO($items){
        $PONO = [];
        foreach ($items as $item) {
            $PONO[] = '<p class="m-0 carton-list">'.$item->PO->po_no.'</p> ';
        }

        $uniquePONO = array_unique($PONO);
        return implode(' ', $uniquePONO);
    }
}


if (!function_exists('PODate')) {
    function PODate($items){
        $PODate = [];
        foreach ($items as $item) {
            $PODate[] = '<p class="m-0 carton-list">'.$item->PO->created_at->format('d F Y').'</p> ';
        }

        $uniquePODate = array_unique($PODate);
        return implode(' ', $uniquePODate);
    }
}

if (!function_exists('getCartonNames')) {
    function getCartonNames($items){
        $cartonElements = [];
        
        foreach ($items as $key=>$item) {
            if($items->count() > 1){
                if($key == 0){
                    $cartonElements[] = '<div class="accordian-main"><div class="accordian-title"><p class="m-0 carton-list">' . @$item->POItem->carton_name . '-['. @$item->POItem->art_work . ']<b>  |  Quantity: </b>'.@$item->POItem->quantity.'<b>  |  PO Date: </b>'. $item->PO->po_date->format('d F, Y') .' <b>| PO No.: </b>'.$item->PO->po_no.'</p></div><div class="accordian-body">';
                }
                else{
                    $cartonElements[] = '<p class="m-0 carton-list">' . @$item->POItem->carton_name . '-['. @$item->POItem->art_work . ']<b>  |  Quantity: </b>'.@$item->POItem->quantity.'<b>  |  PO Date: </b>'. $item->PO->po_date->format('d F, Y') .' <b>| PO No.: </b>'.$item->PO->po_no.'</p>';
                }
                
            }else{
                 $cartonElements[] = '<p class="m-0 carton-list">' . @$item->POItem->carton_name . '-['. @$item->POItem->art_work . ']<b>  |  Quantity: </b>'.@$item->POItem->quantity.'<b>  |  PO Date: </b>'. $item->PO->po_date->format('d F, Y') .' <b>| PO No.: </b>'.$item->PO->po_no.'</p>';
            }
        }

        if($items->count() > 1){
            $cartonElements[] = '</div></div>';
        }
        $uniqueCartonElements = array_unique($cartonElements);
        return implode('', $uniqueCartonElements);
    }
}


if (!function_exists('getCartonNames2')) {
    function getCartonNames2($items){
        $cartonElements = [];
        
        foreach ($items as $item) {
            $cartonElements[] = '<p class="m-0 carton-list">' . $item->POItem->carton_name . '-['. $item->POItem->art_work . '] <b>| Quantity - </b>'.$item->POItem->quantity.' <b>| UPS-</b>' .$item->ups.'</p> ';
        }
        $uniqueCartonElements = array_unique($cartonElements);
        return implode('', $uniqueCartonElements);
    }
}


if (!function_exists('getPaper')) {
    function getPaper($items){
        $papner = [];
        
        foreach ($items as $item) {
            $papner[] = '<p class="m-0 carton-list">' . $item->POItem->paperType->type . ' - '. $item->POItem->gsm . '</p> ';
        }

        return implode('', $papner);
    }
}



if (!function_exists('jobItemEmbLeaf')) {
    function jobItemEmbLeaf($items){
        $embleaf = [];
        
        foreach ($items as $item) {
            $embleaf[] = '<p class="m-0 carton-list">' . embossingLeafing($item->POItem->embossing_leafing) . '</p> ';
        }

        return implode('', $embleaf);
    }
}



if (!function_exists('coatingType')) {
    function coatingType($items){
        $coating = [];
        
        foreach ($items as $item) {
            $coating[] = '<p class="m-0 carton-list">' . $item->POItem->coatingType->type . '</p> ';
        }

        return implode('', $coating);
    }
}

if (!function_exists('coatingTypeList')) {
    function coatingTypeList($items){
        $coating = [];
        
        foreach ($items as $item) {
            $coating[] = $item->POItem->coatingType->type . ',';
        }

        return implode('', $coating);
    }
}


if (!function_exists('otherCoatingTypeList')) {
    function otherCoatingTypeList($items){
        $other_coating = [];
        
        foreach ($items as $item) {
            $other_coating[] = $item->POItem->otherCoatingType->type . ',';
        }

        return implode('', $other_coating);
    }
}



if (!function_exists('otherCoatingType')) {
    function otherCoatingType($items){
        $coating = [];
        
        foreach ($items as $item) {
            $coating[] = '<p class="m-0 carton-list">' . $item->POItem->otherCoatingType->type . '</p> ';
        }

        return implode('', $coating);
    }
}



if (!function_exists('cartonHistory')) {

    function cartonHistory($id, $position){
        $carton = CartonHistory::firstOrNew(['purchase_order_item_id' => $id, 'position' => $position]);
    }
}


if (!function_exists('checkGST')) {
    function checkGST($gstinNumber){
        $response = Http::get("http://sheet.gstincheck.co.in/check/90e81dc57aced51487e38e59c5816f03/{$gstinNumber}");
        if ($response->successful()) {
            return $response->json();
        } else {
            return response()->json(['error' => 'Failed to fetch GSTIN information'], $response->status());
        }
    }
}

if (!function_exists('formatTime')) {
    function formatTime($seconds){
        $hours = floor($seconds / 3600);
        $minutes = floor(($seconds % 3600) / 60);
        $remainingSeconds = $seconds % 60;

        return sprintf('%02d:%02d:%02d', $hours, $minutes, $remainingSeconds);
    }
}





