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
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
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
                    <th style="width:160px;">Set No.</th>
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
                    <th style="width:160px;">Dye No.</th>
                    <td>{{ $job_card->dye_details_id?$job_card->deyDetail->dye_no:'NEW' }}</td>
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



    <div class="card">
        <div class="card-content">
            <div class="card-body">
                <div class="custom-row d-flex gap-3">

                    <div class="w-100 paper-check">
                        <div class="form-group{{ $errors->has('paper') ? ' has-error' : '' }}">
                            {!! Form::label('paper', 'Paper') !!}
                            {!! Form::select('paper', App\Models\Product::where('id', $job_card->product_id)->pluck('name', 'id'), $job_card->product_id, ['id' => 'paper', 'class' => 'form-control getProduct', 'placeholder'=>'Choose Paper']) !!}
                            <span class="stock badge bg-success"></span>
                            <small class="text-danger">{{ $errors->first('paper') }}</small>
                        </div>
                    </div>


                    <div class="w-100">
                        <div class="form-group{{ $errors->has('sheet_size') ? ' has-error' : '' }}">
                            {!! Form::label('sheet_size', 'Sheet Size') !!}
                            {!! Form::text('sheet_size', $job_card->sheet_size, ['class' => 'form-control', 'Placeholder' => 'Sheet Size', 'readonly']) !!}
                            <small class="text-danger">{{ $errors->first('sheet_size') }}</small>
                        </div>
                    </div>

                    <div class="w-100">
                        <div class="form-group{{ $errors->has('required_sheet') ? ' has-error' : '' }}">
                            {!! Form::label('required_sheet', 'Required Sheet') !!}
                            {!! Form::text('required_sheet', $job_card->required_sheet, ['class' => 'total-sheet-clc form-control', 'placeholder' => 'Paper Required', 'readonly']) !!}
                            <small class="text-danger">{{ $errors->first('required_sheet') }}</small>
                        </div>
                    </div>

                    <div class="w-100">
                        <div class="form-group{{ $errors->has('wastage_sheet') ? ' has-error' : '' }}">
                            {!! Form::label('wastage_sheet', 'Wastage Sheet') !!}
                            {!! Form::text('wastage_sheet', $job_card->wastage_sheet, ['class' => 'total-sheet-clc form-control', 'placeholder' => 'Wastage Sheet']) !!}
                            <small class="text-danger">{{ $errors->first('wastage_sheet') }}</small>
                        </div>
                    </div>

                    <div class="w-100">
                        <div class="form-group{{ $errors->has('paper_divide') ? ' has-error' : '' }}">
                            {!! Form::label('paper_divide', 'Paper Divide') !!}
                            {!! Form::select('paper_divide',[1=>1, 2=>2, 3=>3, 4=>4, 5=>5, 6=>6] ,$job_card->paper_divide, ['class' => 'total-sheet-clc form-control', 'placeholder' => 'Paper Divide']) !!}
                            <small class="text-danger">{{ $errors->first('paper_divide') }}</small>
                        </div>
                    </div>

                    <div class="w-100">
                        <div class="form-group{{ $errors->has('total_sheets') ? ' has-error' : '' }}">
                            {!! Form::label('total_sheets', 'Total Sheets') !!}
                            {!! Form::text('total_sheets', $job_card->total_sheet, ['class' => 'form-control', 'placeholder' => 'Total Sheets', 'readonly']) !!}
                            {!! Form::hidden('old_total_sheets', $job_card->total_sheet??0) !!}
                            <small class="text-danger">{{ $errors->first('total_sheets') }}</small>
                        </div>
                    </div>

                </div>


              


            </div>
        </div>
    </div>







     <div class="card card border card-border-danger">
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
    </div>



<div id="kt_docs_repeater_advanced">
    <div class="form-group">
        <div data-repeater-list="kt_docs_repeater_advanced">
            <div data-repeater-item class="row-{{$item->id}}">
                <div class="card" style="position:relative;">
                    <div class="card-body">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



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

<script>
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

$(document).ready(function() {
    function ClcSheet() {
        var wastage = parseInt($('.form-control[name="wastage_sheet"]').val());
        var paper_divide = parseInt($('.form-control[name="paper_divide"]').val());
        var paper_required = parseInt($('.form-control[name="required_sheet"]').val());
        
        if (!isNaN(wastage) && !isNaN(paper_divide) && !isNaN(paper_required)) {
            var total_sheet = (paper_required + wastage) / paper_divide;
            $('.form-control[name="total_sheets"]').val(parseInt(total_sheet));
        }
    }

    $('body').on('change', '.total-sheet-clc', function() {
        ClcSheet();
    });
});
  
$(".warehouse").select2({
    tags: true,
    placeholder: "Paper Stock",
    allowClear: true
});

$('body').on('change', '.getProduct', function(){
    $('.paper-check .stock').html('');
    var product_id = $(this).val();
    $.ajax({
        type: "POST",
        dataType: 'json',
        url: '{{ route('admin.common.product.single')}}',
        data: {'id':product_id, '_method': 'POST', '_token': '{{ csrf_token() }}'},
        success:function(response){
            var data = response.datas;
            $('.paper-check .stock').html('Instock: '+parseInt(data.quantity)+' Sheets');
        },
        error:function(error){
    

        }
    });

});
</script>
@endpush