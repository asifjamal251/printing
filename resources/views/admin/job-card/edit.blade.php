@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" href="{{asset('admin-assets/libs/select2/css/select2.min.css')}}"> 
<style type="text/css">
    .sheets-width{
        max-width:150px;
    }
</style>
@endpush




@section('main')


<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
            @can('add_client')
            <div class="page-title-right">
                <a href="{{ route('admin.'.request()->segment(2).'.create') }}"  class="btn-sm btn btn-primary btn-label rounded-pill">
                    <i class="bx bx-plus label-icon align-middle rounded-pill fs-16 me-2"></i>
                    Add {{Str::title(str_replace('-', ' ', request()->segment(2)))}}
                </a>
            </div>
            @endcan

        </div>
    </div>
</div>


<div class="card">
    <div class="card-content">
        <div class="card-body">
            <table class="table table-sm">
                <tr>
                    <th style="width:160px;">Job Card No.</th>
                    <td>{{ $job_card->job_card_no }}</td>
                </tr>

                <tr>
                    <th style="width:160px;">Set No./Doc No.</th>
                    <td>{{ $job_card->set_no }}</td>
                </tr>

                <tr>
                    <th style="width:160px;">Client Name</th>
                    <td><div class="job-details d-flex gap-3">{!! getClientName($job_card->jobCardItems) !!}</div></td>
                </tr>

                <tr>
                    <th style="width:160px;">PO No.</th>
                    <td><div class="job-details d-flex gap-3">{!! PONO($job_card->jobCardItems) !!}</div></td>
                </tr>

                <tr>
                    <th style="width:160px;">PO Date</th>
                    <td><div class="job-details d-flex gap-3">{!! PODate($job_card->jobCardItems) !!}</div></td>
                </tr>


                <tr>
                    <th style="width:160px;">Carton Name</th>
                    <td><div class="job-details d-flex gap-3">{!! getCartonNames($job_card->jobCardItems) !!}</div></td>
                </tr>


                <tr>
                    <th style="width:160px;">Coating Type</th>
                    <td><div class="job-details d-flex gap-3">{!! coatingType($job_card->jobCardItems) !!}</div></td>
                </tr>

                <tr>
                    <th style="width:160px;">Other Coating Type</th>
                    <td><div class="job-details d-flex gap-3">{!! otherCoatingType($job_card->jobCardItems) !!}</div></td>
                </tr>

                 <tr>
                    <th style="width:160px;">Paper</th>
                    <td><div class="job-details d-flex gap-3">{!! getPaper($job_card->jobCardItems) !!}</div></td>
                </tr>

                <tr>
                    <th style="width:160px;">Sheet Size</th>
                    <td>{{ $job_card->sheet_size }}</td>
                </tr>


                <tr>
                    <th style="width:160px;">Total Sheet</th>
                    <td>{{ $job_card->required_sheet }}</td>
                </tr>

                <tr>
                    <th style="width:160px;">Dye Details</th>
                    <td>{{@$job_card->dye_details_id?@$job_card->deyDetail->dye_no.'/'.@$job_card->deyDetail->ups.'-'.@$job_card->deyDetail->dye_lock:'NEW', }}</td>
                </tr>

                <tr>
                    <th style="width:160px;">Embossing/Leafing</th>
                    <td><div class="job-details d-flex gap-3">{!! jobItemEmbLeaf($job_card->jobCardItems) !!}</div></td>
                </tr>

                <tr>
                    <th style="width:160px;">Color</th>
                    <td>{{ $job_card->color }}</td>
                </tr>
            </table>
        </div>
    </div>
</div>

@php 

    $emb_lef = explode(' ', strip_tags(jobItemEmbLeaf($job_card->jobCardItems)));

    $strippedItems = array_filter($emb_lef, function ($value) {
        return $value !== "";
    });

    $isSameValue = count(array_count_values($strippedItems)) === 1;
    
    if ($isSameValue) {
        $embossing_leafing = $strippedItems[0];
    } else {
        $embossing_leafing = 'Both';
    }


    $coating = explode(',', strip_tags(coatingTypeList($job_card->jobCardItems)));

    $coating_strip = array_filter($coating, function ($coating_value) {
        return $coating_value !== "";
    });

    $isCoatingSameValue = count(array_count_values($coating_strip)) === 1;
    
    if (count($coating_strip) == 1 && $isCoatingSameValue) {
       $coating_type = $coating_strip[0];

        $coating_type_value = '';
        if($coating_type == 'Gloss Lamination'){
            $coating_type_value = 'gloss lamination';
        }
        if($coating_type == 'Matt Lamination'){
            $coating_type_value = 'matt lamination';
        }
        if($coating_type == 'Full UV' || $coating_type == 'Aqueous Varnish' || $coating_type == 'Drip off' || $coating_type == 'Drip off + UV'){
            $coating_type_value = 'chemical coating';
        }
    }else{
         $coating_type_value = $coating_strip[0];
    }

   //dd($coating_type_value);

    $other_coating = explode(',', strip_tags(otherCoatingTypeList($job_card->jobCardItems)));

    $other_coating_strip = array_filter($other_coating, function ($other_coating_value) {
        return $other_coating_value !== "";
    });

    $isOtherCoatingSameValue = count(array_count_values($other_coating_strip)) === 1;
    //$other_coating_type_value = '';

    if ($isOtherCoatingSameValue) {
        
        $other_coating_type = $other_coating_strip[0];
        switch ($other_coating_type) {
            case 'None':
                $other_coating_type_value = 'none';
                break;

            case 'Metallic':
                $other_coating_type_value = 'metallic';
                break;

            case 'Spot UV':
                $other_coating_type_value = 'spot uv';
                break;

            case 'Both':
                $other_coating_type_value = 'both';
                break;

            default:
                // Handle other cases if needed
                break;
        }

    } else {
        $other_coating_type_value = $other_coating_strip[0];
    }


    //dd($isOtherCoatingSameValue);
    
@endphp

{!! Form::open(['route'=>['admin.'.request()->segment(2).'.update',$job_card->id],'method'=>'put','files'=>true]) !!}
{!! Form::hidden('status_id', $job_card->status_id??2) !!}




<div class="card">
        <div class="card-content">
            <div class="card-body">
                <div class="d-flex gap-3">
              
                    <div class="w-100">
                        <div class="form-group{{ $errors->has('coating_machine') ? ' has-error' : '' }}">
                            {!! Form::label('coating_machine', 'Coating Machine') !!}
                            {!! Form::select('coating_machine', ['matt lamination'=>'Matt Lamination', 'gloss lamination'=>'Gloss Lamination', 'chemical coating' =>'Chemical Coating'], $job_card->coating_machine, ['id' => 'coating_machine', 'class' => 'form-control', 'placeholder'=>'Coating Machine', 'required']) !!}
                            <small class="text-danger">{{ $errors->first('coating_machine') }}</small>
                        </div>
                    </div>

                    <div class="w-100">
                        <div class="form-group{{ $errors->has('other_coating_machine') ? ' has-error' : '' }}">
                            {!! Form::label('other_coating_machine', 'Other Coating Machine') !!}
                            {!! Form::select('other_coating_machine', ['metallic'=>'Metallic', 'spot uv' =>'Spot UV', 'both'=>'Both', 'none'=>'None'], $job_card->other_coating_machine, ['id' => 'other_coating_machine', 'class' => 'form-control', 'placeholder'=>'Other Coating Machine']) !!}
                            <small class="text-danger">{{ $errors->first('other_coating_machine') }}</small>
                        </div>
                    </div>

                    
                    <div class="w-100">
                        <div class="form-group{{ $errors->has('roll_used') ? ' has-error' : '' }}">
                            {!! Form::label('roll_used', 'Roll Used') !!}
                            {!! Form::text('roll_used', $job_card->roll_used??0, ['class' => 'form-control', 'required' => 'required', 'placeholder'=>'Roll Used']) !!}
                            <small class="text-danger">{{ $errors->first('roll_used') }}</small>
                        </div>
                    </div>
                   

                    <div class="w-100">
                        <div class="form-group{{ $errors->has('coating_window_cutting') ? ' has-error' : '' }}">
                            {!! Form::label('coating_window_cutting', 'Coating Window Cutting') !!}
                            {!! Form::select('coating_window_cutting', ['none'=>'None', 'window in batch'=>'window in batch', 'window in batch, pasting, bottom lock'=>'window in batch, pasting, bottom lock', 'window in pasting and bottom lock'=>'window in pasting and bottom lock'], $job_card->coating_window_cutting??'none', ['class' => 'form-control', 'placeholder' => 'Coating Placeholder', 'required']) !!}
                            <small class="text-danger">{{ $errors->first('coating_window_cutting') }}</small>
                        </div>
                    </div>

                    <div class="w-100">
                        <div class="form-group{{ $errors->has('dye_machine') ? ' has-error' : '' }}">
                            {!! Form::label('dye_machine', 'Dye Machine') !!}
                            {!! Form::select('dye_machine', ['manual'=>'Manual', 'automatic'=>'Automatic'], $job_card->dye_machine??'manual', ['id' => 'dye_machine', 'class' => 'form-control', 'placeholder' => 'Dye Machine', 'required']) !!}
                            <small class="text-danger">{{ $errors->first('dye_machine') }}</small>
                        </div>
                    </div>

                    <div class="w-100">
                        <div class="form-group{{ $errors->has('embossing_leafing') ? ' has-error' : '' }}">
                            {!! Form::label('embossing_leafing', 'Embossing/Leafing') !!}
                            {!! Form::select('embossing_leafing', ['None'=>'None', 'Embossing'=>'Embossing', 'Leafing'=>'Leafing', 'Both'=>'Both'], $embossing_leafing, ['id' => 'embossing_leafing', 'class' => 'form-control', 'placeholder' => 'Embossing/Leafing']) !!}
                            <small class="text-danger">{{ $errors->first('embossing_leafing') }}</small>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>





     {{-- <div class="card card border card-border-danger">
        <div class="card-header">
            <h6 class="card-title mb-0 text-center">Trimmed Paper Stock</h6>
        </div>
        <div class="card-content">
            <div class="card-body">

                @if($job_card->warehouse_type != '')
                    <div class="custom-row d-flex gap-3">

                        <div class="w-100">
                           <div class="form-group{{ $errors->has('warehouse_type') ? ' has-error' : '' }}">
                               {!! Form::label('warehouse_type', 'Warehouse') !!}
                               {!! Form::select('warehouse_type', [1=>'put stock in warehouse', 0=>'use stock from warehouse'], $job_card->warehouse_type, ['id' => 'warehouse_type', 'class' => 'form-control', 'placeholder' => 'choose an option',]) !!}
                               <small class="text-danger">{{ $errors->first('warehouse_type') }}</small>
                           </div>
                        </div>


                        <div class="w-100">
                            <div class="form-group{{ $errors->has('paper_stock') ? ' has-error' : '' }}">
                                {!! Form::label('paper_stock', 'Paper Stock') !!}
                                {!! Form::select('paper_stock', App\Models\PaperWarehouse::pluck('paper_stock', 'id'), $job_card->warehouse_type==1?$job_card->putPaperWarehouse->id:$job_card->getPaperWarehouse->id, ['class' => 'form-control warehouse', 'placeholder' => 'Paper Stock', 'rows'=>1]) !!}
                                <small class="text-danger">{{ $errors->first('paper_stock') }}</small>
                            </div>
                        </div>

                        <div class="w-100 sheets-width">
                            <div class="form-group{{ $errors->has('sheets') ? ' has-error' : '' }}">
                                {!! Form::label('sheets', 'Sheets') !!}
                                {!! Form::text('sheets', $job_card->warehouse_sheet, ['class' => 'form-control', 'placeholder' => 'Sheets']) !!}
                                {!! Form::hidden('old_sheets', $job_card->warehouse_sheet??0) !!}
                                <small class="text-danger">{{ $errors->first('sheets') }}</small>
                            </div>
                        </div>
                    </div>
                @else
                    <div class="custom-row d-flex gap-3">

                        <div class="w-100">
                           <div class="form-group{{ $errors->has('warehouse_type') ? ' has-error' : '' }}">
                               {!! Form::label('warehouse_type', 'Warehouse') !!}
                               {!! Form::select('warehouse_type', [1=>'put stock in warehouse', 0=>'use stock from warehouse'], null, ['id' => 'warehouse_type', 'class' => 'form-control', 'placeholder' => 'choose an option',]) !!}
                               <small class="text-danger">{{ $errors->first('warehouse_type') }}</small>
                           </div>
                        </div>


                        <div class="w-100">
                            <div class="form-group{{ $errors->has('paper_stock') ? ' has-error' : '' }}">
                                {!! Form::label('paper_stock', 'Paper Stock') !!}
                                {!! Form::select('paper_stock', App\Models\PaperWarehouse::pluck('paper_stock', 'id'),null, ['class' => 'form-control warehouse', 'placeholder' => 'Paper Stock', 'rows'=>1]) !!}
                                <small class="text-danger">{{ $errors->first('paper_stock') }}</small>
                            </div>
                        </div>

                        <div class="w-100 sheets-width">
                            <div class="form-group{{ $errors->has('sheets') ? ' has-error' : '' }}">
                                {!! Form::label('sheets', 'Sheets') !!}
                                {!! Form::text('sheets', null, ['class' => 'form-control', 'placeholder' => 'Sheets']) !!}
                                {!! Form::hidden('old_sheets', 0) !!}
                                <small class="text-danger">{{ $errors->first('sheets') }}</small>
                            </div>
                        </div>
                    </div>
                @endif

              


            </div>
        </div>
    </div> --}}

<hr>


<div 1 id="kt_docs_repeater_advanced">
        <div  data-repeater-list="kt_docs_repeater_advanced">
            @if($errors->count() == 0)
            @if($job_card->jobCardPapers->count() > 0)
                    @foreach($job_card->jobCardPapers as $jobCardPaper)
                        <div 3 data-repeater-item class="row-{{$jobCardPaper->id}}">
                            <div class="card" style="position:relative;">
                                <div class="card-body">
<input type="hidden" name="item_id" class="item-id" value="{{$jobCardPaper->id}}">
                                    <div class="custom-row d-flex gap-3">

                                        <div class="w-100 paper-check">
                                            <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.product') ? ' has-error' : '' }}">
                                                <label class="form-label">Choose Product <span name="my_stock" class="badge bg-success"></span></label>
                                                <select name="product" class="form-select form-select-sm getProduct" data-kt-repeater="select2" data-placeholder="Select an option">

                                                    <option selected="selected" value="{{$jobCardPaper->product_id}}">{{App\Models\Product::where('id', $jobCardPaper->product_id)->value('name')}}</option>
                                                   
                                                </select>
                                                <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.product') }}</small>
                                            </div>
                                        </div>


                                        <div class="w-100">
                                            <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.sheet_size') ? ' has-error' : '' }}">
                                                {!! Form::label('sheet_size', 'Sheet Size') !!}
                                                {!! Form::text('sheet_size', $jobCardPaper->sheet_size, ['class' => 'sheetSize form-control form-control-sm', 'Placeholder' => 'Sheet Size', 'readonly']) !!}
                                                <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.sheet_size') }}</small>
                                            </div>
                                        </div>

                                        <div class="w-100">
                                            <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.required_sheet') ? ' has-error' : '' }}">
                                                {!! Form::label('required_sheet', 'Required Sheet') !!}
                                                {!! Form::text('required_sheet', $jobCardPaper->required_sheet, ['class' => 'requiredSheet form-control form-control-sm', 'placeholder' => 'Paper Required']) !!}
                                                <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.required_sheet') }}</small>
                                            </div>
                                        </div>

                                        <div class="w-100">
                                            <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.wastage_sheet') ? ' has-error' : '' }}">
                                                {!! Form::label('wastage_sheet', 'Wastage Sheet') !!}
                                                {!! Form::text('wastage_sheet', $jobCardPaper->wastage_sheet, ['class' => 'wastageSheet form-control form-control-sm', 'placeholder' => 'Wastage Sheet']) !!}
                                                <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.wastage_sheet') }}</small>
                                            </div>
                                        </div>

                                        <div class="w-100">
                                            <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.paper_divide') ? ' has-error' : '' }}">
                                                {!! Form::label('paper_divide', 'Paper Divide') !!}
                                                {!! Form::select('paper_divide',[1=>1, 2=>2, 3=>3, 4=>4, 5=>5, 6=>6] ,$jobCardPaper->paper_divide, ['class' => 'paperDivide form-control form-control-sm', 'placeholder' => 'Paper Divide']) !!}
                                                <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.paper_divide') }}</small>
                                            </div>
                                        </div>

                                        <div class="w-100">
                                            <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.total_sheets') ? ' has-error' : '' }}">
                                                {!! Form::label('total_sheets', 'Total Sheets') !!}
                                                {!! Form::text('total_sheets', $jobCardPaper->total_sheet, ['class' => 'totalSheets form-control form-control-sm', 'placeholder' => 'Total Sheets', 'readonly']) !!}
                                                {!! Form::hidden('old_total_sheets', $jobCardPaper->total_sheet??0) !!}
                                                <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.total_sheets') }}</small>
                                            </div>
                                        </div>

                                        <div class="w-20">
                                            <div class="form-group remove-item">
                                                <div class="form-group text-end">
                                                    <button data-repeater-delete type="button" class="btn-labels btn btn-danger btn-sm" style="margin-top: 26px;"><i class="label-icon ri-delete-bin-fill"></i></button>
                                                </div>
                                            </div>
                                        </div>


                                    </div>

                                </div>
                            </div>
                        </div>
                    @endforeach

                    @else
                        @foreach(old('kt_docs_repeater_advanced', [[]]) as $item)
                           <div 2 data-repeater-item class="row-{{$loop->index}}">
                                <div class="card" style="position:relative;">
                                    <div class="card-body">
                                        <input type="hidden" name="item_id" class="item-id" value="{{$item['item_id']}}">
                                        
                                        <div class="custom-row d-flex gap-3">

                                            <div class="w-100 paper-check">
                                                <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.product') ? ' has-error' : '' }}">
                                                    <label class="form-label">Choose Product <span name="my_stock" class="badge bg-success"></span></label></label>
                                                    <select name="product" class="form-select form-select-sm getProduct" data-kt-repeater="select2" data-placeholder="Select an option">

                                                        @if(old('kt_docs_repeater_advanced.'.$loop->index.'.product'))
                                                        <option selected="selected" value="{{$item['product']}}">{{App\Models\Product::where('id', $item['product'])->value('name')}}</option>
                                                        @else
                                                        <option></option>
                                                        @endif
                                                    </select>
                                                    <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.product') }}</small>
                                                </div>
                                            </div>


                                            <div class="w-100">
                                                <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.sheet_size') ? ' has-error' : '' }}">
                                                    {!! Form::label('sheet_size', 'Sheet Size') !!}
                                                    {!! Form::text('sheet_size', old('kt_docs_repeater_advanced.'.$loop->index.'.sheet_size', $item['sheet_size'] ?? $job_card->sheet_size), ['class' => 'sheetSize form-control form-control-sm', 'Placeholder' => 'Sheet Size', 'readonly']) !!}
                                                    <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.sheet_size') }}</small>
                                                </div>
                                            </div>

                                            <div class="w-100">
                                                <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.required_sheet') ? ' has-error' : '' }}">
                                                    {!! Form::label('required_sheet', 'Required Sheet') !!}
                                                    {!! Form::text('required_sheet', old('kt_docs_repeater_advanced.'.$loop->index.'.required_sheet', $item['required_sheet'] ?? $job_card->required_sheet), ['class' => 'requiredSheet form-control form-control-sm', 'placeholder' => 'Paper Required']) !!}
                                                    <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.required_sheet') }}</small>
                                                </div>
                                            </div>

                                            <div class="w-100">
                                                <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.wastage_sheet') ? ' has-error' : '' }}">
                                                    {!! Form::label('wastage_sheet', 'Wastage Sheet') !!}
                                                    {!! Form::text('wastage_sheet', old('kt_docs_repeater_advanced.'.$loop->index.'.wastage_sheet', $item['wastage_sheet'] ?? ''), ['class' => 'wastageSheet form-control form-control-sm', 'placeholder' => 'Wastage Sheet']) !!}
                                                    <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.wastage_sheet') }}</small>
                                                </div>
                                            </div>

                                            <div class="w-100">
                                                <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.paper_divide') ? ' has-error' : '' }}">
                                                    {!! Form::label('paper_divide', 'Paper Divide') !!}
                                                    {!! Form::select('paper_divide',[1=>1, 2=>2, 3=>3, 4=>4, 5=>5, 6=>6] , old('kt_docs_repeater_advanced.'.$loop->index.'.paper_divide', $item['paper_divide'] ?? ''), ['class' => 'paperDivide form-control form-control-sm', 'placeholder' => 'Paper Divide']) !!}
                                                    <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.paper_divide') }}</small>
                                                </div>
                                            </div>

                                            <div class="w-100">
                                                <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.total_sheets') ? ' has-error' : '' }}">
                                                    {!! Form::label('total_sheets', 'Total Sheets') !!}
                                                    {!! Form::text('total_sheets', old('kt_docs_repeater_advanced.'.$loop->index.'.total_sheets', $item['total_sheets'] ?? ''), ['class' => 'totalSheets form-control form-control-sm', 'placeholder' => 'Total Sheets', 'readonly']) !!}
                                                    {!! Form::hidden('old_total_sheets', old('kt_docs_repeater_advanced.'.$loop->index.'.old_total_sheets', $item['old_total_sheets'] ?? ''), ['class' => 'oldTotalSheet']) !!}
                                                    <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.total_sheets') }}</small>
                                                </div>
                                            </div>


                                            <div class="w-20">
                                                <div class="form-group remove-item">
                                                    <div class="form-group text-end">
                                                        <button data-repeater-delete type="button" class="btn-labels btn btn-danger btn-sm" style="margin-top: 26px;"><i class="label-icon ri-delete-bin-fill"></i></button>
                                                    </div>
                                                </div>
                                            </div>

                                         </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                    @endif

                @endif
                

                @if($errors->count() > 0)




                    <!--begin::Repeater-->
                    <div 2 id="kt_docs_repeater_advanced">

                        <div class="form-group">
                            <div data-repeater-list="kt_docs_repeater_advanced">
                               @foreach(old('kt_docs_repeater_advanced', [[]]) as $item)
                               <div data-repeater-item class="row-{{$loop->index}}">
                                    <div class="card" style="position:relative;">
                                        <div class="card-body">

                                             <input type="hidden" name="item_id" class="item-id" value="{{$item['item_id']}}">
                                            <div class="custom-row d-flex gap-3">

                                                <div class="w-100 paper-check">
                                                    <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.product') ? ' has-error' : '' }}">
                                                            <label class="form-label">Choose Product <span name="my_stock" class="badge bg-success"></span></label></label>
                                                            <select name="product" class="form-select form-select-sm getProduct" data-kt-repeater="select2" data-placeholder="Select an option">

                                                                @if(old('kt_docs_repeater_advanced.'.$loop->index.'.product'))
                                                                <option selected="selected" value="{{$item['product']}}">{{App\Models\Product::where('id', $item['product'])->value('name')}}</option>
                                                                @else
                                                                <option></option>
                                                                @endif
                                                            </select>
                                                            <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.product') }}</small>
                                                        </div>
                                                </div>


                                                <div class="w-100">
                                                    <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.sheet_size') ? ' has-error' : '' }}">
                                                        {!! Form::label('sheet_size', 'Sheet Size') !!}
                                                        {!! Form::text('sheet_size', old('kt_docs_repeater_advanced.'.$loop->index.'.sheet_size', $item['sheet_size'] ?? ''), ['class' => 'sheetSize form-control form-control-sm', 'Placeholder' => 'Sheet Size', 'readonly']) !!}
                                                        <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.sheet_size') }}</small>
                                                    </div>
                                                </div>

                                                <div class="w-100">
                                                    <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.required_sheet') ? ' has-error' : '' }}">
                                                        {!! Form::label('required_sheet', 'Required Sheet') !!}
                                                        {!! Form::text('required_sheet', old('kt_docs_repeater_advanced.'.$loop->index.'.required_sheet', $item['required_sheet'] ?? ''), ['class' => 'requiredSheet form-control form-control-sm', 'placeholder' => 'Paper Required']) !!}
                                                        <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.required_sheet') }}</small>
                                                    </div>
                                                </div>

                                                <div class="w-100">
                                                    <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.wastage_sheet') ? ' has-error' : '' }}">
                                                        {!! Form::label('wastage_sheet', 'Wastage Sheet') !!}
                                                        {!! Form::text('wastage_sheet', old('kt_docs_repeater_advanced.'.$loop->index.'.wastage_sheet', $item['wastage_sheet'] ?? ''), ['class' => 'wastageSheet form-control form-control-sm', 'placeholder' => 'Wastage Sheet']) !!}
                                                        <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.wastage_sheet') }}</small>
                                                    </div>
                                                </div>

                                                <div class="w-100">
                                                    <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.paper_divide') ? ' has-error' : '' }}">
                                                        {!! Form::label('paper_divide', 'Paper Divide') !!}
                                                        {!! Form::select('paper_divide',[1=>1, 2=>2, 3=>3, 4=>4, 5=>5, 6=>6] , old('kt_docs_repeater_advanced.'.$loop->index.'.paper_divide', $item['paper_divide'] ?? ''), ['class' => 'paperDivide form-control form-control-sm', 'placeholder' => 'Paper Divide']) !!}
                                                        <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.paper_divide') }}</small>
                                                    </div>
                                                </div>

                                                <div class="w-100">
                                                    <div class="m-0 form-group{{$errors->has('kt_docs_repeater_advanced.'.$loop->index.'.total_sheets') ? ' has-error' : '' }}">
                                                        {!! Form::label('total_sheets', 'Total Sheets') !!}
                                                        {!! Form::text('total_sheets', old('kt_docs_repeater_advanced.'.$loop->index.'.total_sheets', $item['total_sheets'] ?? ''), ['class' => 'totalSheets form-control form-control-sm', 'placeholder' => 'Total Sheets', 'readonly']) !!}
                                                        {!! Form::hidden('old_total_sheets', old('kt_docs_repeater_advanced.'.$loop->index.'.old_total_sheets', $item['old_total_sheets'] ?? ''), ['class' => 'oldTotalSheet']) !!}
                                                        <small class="text-danger">{{ $errors->first('kt_docs_repeater_advanced.'.$loop->index.'.total_sheets') }}</small>
                                                    </div>
                                                </div>


                                                <div class="w-20">
                                                    <div class="form-group remove-item">
                                                        <div class="form-group text-end">
                                                            <button data-repeater-delete type="button" class="btn-labels btn btn-danger btn-sm" style="margin-top: 26px;"><i class="label-icon ri-delete-bin-fill"></i></button>
                                                        </div>
                                                    </div>
                                                </div>



                                             </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>

                @endif
         


        </div>



    <div class="row">
            <div class="col-md-6 text-start"></div>
            <div class="col-md-6 text-end">
                <div class="" style="width:100%;text-align:right;display: inline-block;">
                    <button data-repeater-create type="button" class="btn-label btn btn-success text-end btn-sm"><i class="label-icon align-middle fs-16 me-2 bx bx-plus-circle"></i> Add New Row</button>
                </div>
            </div>
        </div>
</div>
<hr style="margin-bottom: 20px;">


<div class="col-md-">
    


    <div class="card">
        <div class="card-header">
            <h6 class="card-title mb-0">Media Files</h6>
        </div>
        <div class="card-body">

            <div class="media-area" file-name="file" style="max-width:80%;float:left;">
                <div class="media-file-value file-arrange">
                    @foreach($job_card->mediaFiles as $media)
                    <input type="hidden" name="file[]" value="{{$media->id}}" class="fileid{{$media->id}}">
                    @endforeach
                </div>
                <div class="media-file file-arrange">
                    @foreach($job_card->mediaFiles as $media)
                    <div data-name="file[]" data-id="{{$media->id}}" class="file-container d-inline-block fileid{{$media->id}}">
                        <span data-id="{{$media->id}}" class="remove-file">✕</span>
                        <img class="w-100 d-block img-thumbnail" src="{{asset($media->file)}}" alt="{{$media->name}}">
                    </div>
                    @endforeach
                </div>
                <p><br></p>
                <a class="text-secondary select-mediatype" href="javascript:void(0);" mediatype='multiple' onclick="loadMediaFiles($(this))">Select Media File</a>
            </div>



            <div class="btn-group" style="max-width:20%;float:right;">
                {!! Form::submit("Save ".Str::title(str_replace('-', ' ', request()->segment(2))), ['class' => 'btn btn-success btn-border waves-effect waves-light']) !!}
            </div>

        </div>
    </div>






</div>
{!! Form::close() !!}

@endsection




@push('scripts')
<script src="{{asset('admin-assets/libs/select2/js/select2.min.js')}}" type="text/javascript"></script>
<script type="text/javascript" src="{{asset('admin-assets/js/pages/form-repeater.js')}}"></script>

<script>
    // $('.getProduct').select2({
    //     delay : 200,
    //     minimumInputLength: 2,
    //     ajax: {
    //         url: '{{ route('admin.common.product.list') }}?paper_type={{$job_card->jobCardItems[0]->POItem->paper_type_id }}',
    //         dataType: 'json',
    //         cache: true,
    //         data: function(params) {
    //             return {
    //                 term: params.term || '',
    //                 page: params.page || 1
    //             }
    //         },
    //     }
    // });

$(document).ready(function() {
    function ClcSheet(position) {
        var wastage = parseInt($('input[name="kt_docs_repeater_advanced[' + position + '][wastage_sheet]"]').val());
        var paper_divide = parseInt($('select[name="kt_docs_repeater_advanced[' + position + '][paper_divide]"]').val());
        var paper_required = parseInt($('input[name="kt_docs_repeater_advanced[' + position + '][required_sheet]"]').val());
        
        console.log('wastage', wastage);
        console.log('paper_divide', paper_divide);
        console.log('paper_required', paper_required);

        if (!isNaN(wastage) && !isNaN(paper_divide) && !isNaN(paper_required)) {
            var total_sheet = (paper_required + wastage) / paper_divide;
            console.log(total_sheet);
            $('input[name="kt_docs_repeater_advanced[' + position + '][total_sheets]"]').val(parseInt(total_sheet));
        }
    }

    $('body').on('change', '.wastageSheet', function() {
        var current_name = $(this).attr('name');
        var parts = current_name.split(/\[|\]/);
        var position = parts[1];
        ClcSheet(position);
    });


    $('body').on('change', '.paperDivide', function() {
        var current_name = $(this).attr('name');
        var parts = current_name.split(/\[|\]/);
        var position = parts[1];
        ClcSheet(position);
    });

    $('body').on('change', '.requiredSheet', function() {
        var current_name = $(this).attr('name');
        var parts = current_name.split(/\[|\]/);
        var position = parts[1];
        ClcSheet(position);
    });

});
  
$(".warehouse").select2({
    tags: true,
    placeholder: "Paper Stock",
    allowClear: true
});


$('.getProduct').select2({
        delay : 200,
        minimumInputLength: 2,
        ajax: {
            url: '{{ route('admin.common.product.list') }}?paper_type={{$job_card->jobCardItems[0]->POItem->paper_type_id }}',
            dataType: 'json',
            cache: true,
            data: function(params) {
                return {
                    term: params.term || '',
                    page: params.page || 1
                }
            },
        }
    });

 var rowCounter = 0;
$('#kt_docs_repeater_advanced').repeater({
    isFirstItemUndeletable: true,
    defaultValues: {
        'text-input': 'foo'
    },

    show: function () {

        $(this).addClass('row-' + rowCounter);
        rowCounter++; 

        $(this).slideDown();
        $(this).find('small.text-danger').html('');
        $(this).find('.form-group').removeClass('has-error');
       

        $('.getProduct').select2({
            delay : 200,
            minimumInputLength: 2,
            ajax: {
                url: '{{ route('admin.common.product.list') }}?paper_type={{$job_card->jobCardItems[0]->POItem->paper_type_id }}',
                dataType: 'json',
                cache: true,
                data: function(params) {
                    return {
                        term: params.term || '',
                        page: params.page || 1
                    }
                },
            }
        });

        var $containers = $(this).find('.select2-container--default');
        if ($containers.length >= 2) {
            $containers.slice(1).remove();
        }
        
        var default_sheet_size = $('input[name="kt_docs_repeater_advanced[' + 0 + '][sheet_size]"]').val();
        var default_required_sheet= $('input[name="kt_docs_repeater_advanced[' + 0 + '][required_sheet]"]').val();

        $(this).find('.sheetSize').val(default_sheet_size);
        $(this).find('.requiredSheet').val(default_required_sheet);
        $(this).find('.oldTotalSheet').val(0);


    },

    hide: function (deleteElement) {
        var deletedId = $(this).find('.item-id').val();
        var input = '<input type="hidden" value="'+deletedId+'" name="deleted[]">';
        $('form').append(input);
        setTimeout(function(){
            totalAmount();
        }, 500);
        $(this).slideUp(deleteElement);
        
    }
});


$('body').on('change', '.getProduct', function(){
    var current_name = $(this).attr('name');
    var parts = current_name.split(/\[|\]/);
    var position = parts[1];

    $('.paper-check .stock').html('');
    var product_id = $(this).val();
    $.ajax({
        type: "POST",
        dataType: 'json',
        url: '{{ route('admin.common.product.single')}}',
        data: {'id':product_id, '_method': 'POST', '_token': '{{ csrf_token() }}'},
        success:function(response){
            var data = response.datas;
            $('span[name="kt_docs_repeater_advanced[' + position + '][my_stock]"]').html(parseInt(data.quantity)+' Sheets');
        },
        error:function(error){
    

        }
    });

});
</script>
@endpush