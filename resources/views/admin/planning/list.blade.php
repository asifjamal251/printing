@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
<link rel="stylesheet" href="{{asset('admin-assets/libs/select2/css/select2.min.css')}}"> 
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
@endpush




@section('main')



        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
                    @if(request()->segment(3) == 'add-carton')
                        <button type="button" class="btn btn-secondary btn-sm" id="updateItem">Update Processed item</button>
                    @else
                        <button type="button" class="btn btn-secondary btn-sm" id="getCheckedDataBtn">Make Procesing</button>
                    @endif


                    @can('add_planning')
                    <div class="page-title-right">
                        <a href="{{ route('admin.'.request()->segment(2).'.create') }}"  class="btn-sm btn btn-primary btn-label rounded-pill">
                            <i class="bx bx-plus label-icon align-middle rounded-pill fs-16 me-2"></i>
                            Add {{Str::title(str_replace('-', ' ', request()->segment(2)))}}
                        </a>
                    </div>
                    @endcan


                    <button class="btn btn-success btn-label btn-sm" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">
                        <div class="d-flex">
                            <div class="flex-shrink-0">
                                <i class="bx bx-slider-alt label-icon align-middle fs-16 me-2"></i>
                            </div>
                            <div class="flex-grow-1">
                                Filters
                            </div>
                        </div>
                    </button>

                </div>
            </div>
        </div>
        <!-- end page title -->




        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    
                    <div class="card-body">
                        <div class="table-responsive">
                        <table id="datatable" class="datatable table border-primary table-hover table-sm table-bordered nowrap align-middle" style="width:100%">
                            <thead class="gridjs-thead">
                            <tr>
                                <th style="width:20px">Si</th>
                                <th>PO No.</th>
                                <th>Client</th>
                                <th>Carton Name</th>
                                <th>Art Work Code</th>
                                <th>Carton Size</th>
                                <th>Quantity</th>
                                <th>Dye No./UPS</th>
                                <th>Sheet Size</th>
                                <th>Coating</th>
                                <th>Other Coating</th>
                                <th>Embos/Leaf</th>
                                <th>Paper Type</th>
                                <th style="width:50px;">UPS</th>
                                <th>Remarks</th>
                                <th>Action</th>
                                
                            </tr>
                        </thead>
                       
                        </table>
                    </div>
                    </div>
                </div>
            </div><!--end col-->
        </div><!--end row-->



@endsection


@section('filter')
{!! Form::open(['method' => 'POST',  'class' => 'form-horizontal', 'id'=>'downlodForm']) !!}
<div class="offcanvas offcanvas-end border-0" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">

    <div class="d-flex align-items-center bg-success bg-gradient p-3 offcanvas-header">
        <h5 class="m-0 me-2 text-white">Planning Filter</h5>

        <button type="button" class="btn-close btn-close-white ms-auto" id="customizerclose-btn" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>


    <div class="offcanvas-body bg-light">

         <div class="card">
            <div class="card-body">
                <div class="m-0 form-group{{ $errors->has('client') ? ' has-error' : '' }}">
                    {!! Form::select('client', [], null, ['id' => 'client', 'class' => 'form-control-sm form-control', 'placeholder' => 'Choose client']) !!}
                    <small class="text-danger">{{ $errors->first('client') }}</small>
                </div>
            </div>

        </div>


        <div class="card">
            <div class="card-body">
                <div class="m-0 form-group{{ $errors->has('coating_type') ? ' has-error' : '' }}">
                    {!! Form::select('coating_type', App\Models\CoatingType::pluck('type', 'id'), null, ['id' => 'coating_type', 'class' => 'form-control form-control-sm', 'placeholder' => 'Choose Coating Type']) !!}
                    <small class="text-danger">{{ $errors->first('coating_type') }}</small>
                </div>
            </div>

        </div>


        <div class="card">
            <div class="card-body">
                <div class="m-0 form-group{{ $errors->has('other_coating_type') ? ' has-error' : '' }}">
                    {!! Form::select('other_coating_type', App\Models\OtherCoatingType::pluck('type', 'id'), null, ['id' => 'other_coating_type', 'class' => 'form-control form-control-sm', 'placeholder' => 'Choose Other Coating']) !!}
                    <small class="text-danger">{{ $errors->first('other_coating_type') }}</small>
                </div>
            </div>

        </div>


        <div class="card">
            <div class="card-body">
                <div class="m-0 form-group{{ $errors->has('paper') ? ' has-error' : '' }}">
                    {!! Form::select('paper', App\Models\ProductType::pluck('type', 'id'), null, ['id' => 'paper', 'class' => 'form-control form-control-sm', 'placeholder' => 'Choose Paper']) !!}
                    <small class="text-danger">{{ $errors->first('paper') }}</small>
                </div>
            </div>

        </div>


    </div>

    <div class="offcanvas-footer border-top p-3 text-center">
        <div class="d-flex gap-2">
            <div class="d-inline-block" style="width:50%;">
                <button type="button" class="btn btn-soft-warning w-100 resetFilter border-warning">Reset</button>
            </div>
            <div class="d-inline-block" style="width:50%;">
                <button type="button" class="btn btn-soft-success w-100 filters border-success">Apply Filter</button>
            </div>
        </div>
    </div>


</div>
{!! Form::close() !!}
@endsection


@push('scripts')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>
<script src="{{asset('admin-assets/libs/select2/js/select2.min.js')}}" type="text/javascript"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
    var table2 = $('#datatable').DataTable({
        "ordering": false,
        "processing": true,
        "serverSide": true,
        "lengthMenu": [100, 150,250],
        'ajax': {
        'url': '{{ route('admin.'.request()->segment(2).'.index') }}',
        'data': function(d) {
            d._token = '{{ csrf_token() }}';
            d.client = $('#client').val();
            d.coating = $('#coating_type').val();
            d.other_coating = $('#other_coating_type').val();
            d.paper = $('#paper').val();
            d._method = 'PATCH';
        }

        },

        "createdRow": function (row, data, dataIndex) {
            if (data.status_id == 5) {
                $(row).addClass('table-success border-secondary');
            }
        },
        "columns": [
            { "data": "sn",
            render: function(data, type, row) {
                if(row['status_id'] == 5){
                    return '<input checked disabled type="checkbox" name="items" class="" value="' + row['id'] + '">';
                }else{
                    return '<input type="checkbox" name="items" class="select-checkbox" value="' + row['id'] + '">';
                }
                
            } },
            { "data": "po_no" },
            { "data": "client" },
            { "data": "carton_name" },
            { "data": "art_work" },
            { "data": "carton_size" },
            { "data": "quantity" },
            { "data": "dye_no"},
            { "data": "sheet_size" },
            { "data": "coating" },
            { "data": "other_coating" },
            { "data": "emb_leaf" },
            { "data": "paper" },
            { "data": "ups",
                render: function(data, type, row) {
                    if(row['status_id'] == 2){
                        return '<input type="text" data-ups="'+row['ups']+'" value="'+row['ups']+'" class="form-control form-control-sm ups-input" name="ups[]" placeholder="UPS" style="width:60px;">';
                    }else{
                        return '<input type="text" data-ups="'+row['ups']+'" readonly="readonly" value="'+row['ups']+'" class="form-control form-control-sm ups-input" name="ups[]" placeholder="UPS" style="width:60px;">';
                    }
                    
                }
            },
            { "data": "remarks" },

            { "data": "remove",
                render: function(data, type, row) {
                    if(row['status_id'] == 2){
                        return '<button onclick="deleteAjax2(\''+window.location.href+'/'+row['id']+'/delete\')" type="button" class="btn btn-sm btn-soft-danger">Remove</button>'; 
                    }
                    else{
                        return 'N/A';
                    }
                }
            }]

    });



    


$('body').on('click', '.filters', function(){
    table2.draw('page');
    $('#offcanvasTop').offcanvas('hide')
});


$('body').on('click', '.resetFilter', function(){
    $('#downlodForm').trigger("reset");
    $("#client").val('').trigger("change");
    table2.draw('page');
    $('#offcanvasTop').offcanvas('hide');
});


$('body').on('change', '.select-checkbox', function(){
    if($(this).is(':checked')) {
        $(this).closest('tr').addClass('table-primary border-secondary');
    } else {
        $(this).closest('tr').removeClass('table-primary border-secondary');
    }
});


$('body').on('change', '.ups-input', function(){
    var defaultUPS = $(this).attr('data-ups');
    var inputUPS = $(this).val();

    if(defaultUPS.length > 0 && inputUPS > defaultUPS){
        alert('You Can Not Set Larger UPS');
        $(this).val(defaultUPS)
    }
});


$('#getCheckedDataBtn').on('click', function () {
    // Get selected checkboxes
    var selectedCheckboxes = $('.select-checkbox:checked');

    // Check if at least one checkbox is checked
    if (selectedCheckboxes.length === 0) {
        alert('Please select at least one row.');
        return;
    }

    // Validate UPS values for selected rows
    var isValid = true;
    selectedCheckboxes.each(function () {
        var upsInput = $(this).closest('tr').find('.ups-input');
        if (!upsInput.val()) {
            alert('Please enter UPS value for the selected row.');
            isValid = false;
            return false; // Break the loop if validation fails for any row
        }
    });

    // If validation passes, open a SweetAlert2 confirmation popup
    if (isValid) {
        Swal.fire({
            title: 'Confirmation',
            text: 'Processing Type?',
            icon: 'question',
            showDenyButton: true,
            showCloseButton: true,
            showCancelButton: false,
            denyButtonColor: "#3577f1",
            confirmButtonColor: "#4b38b3",
            confirmButtonText: 'Mix Processing',
            denyButtonText: 'Seperate Processing',
        }).then((result) => {
            if (result.isConfirmed) {
                var maxAttributeValue = 'yes';
            } else if (result.isDenied) {
                var maxAttributeValue = 'no';
            } else {
                return false;
            }
            //var maxAttributeValue = result.isConfirmed ? 'yes' : 'no';

            var upsData = selectedCheckboxes.map(function () {
                var rowId = $(this).val();
                var upsValue = $(this).closest('tr').find('.ups-input').val();
                return { ids: rowId, ups: upsValue, mix: maxAttributeValue };
            }).get();

            console.log('UPS Data for Selected Rows:', upsData);

            // Proceed with the AJAX request
            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: '{{ route('admin.planning.make.jobcard') }}',
                data: { 'data': upsData, '_method': 'POST', '_token': '{{ csrf_token() }}' },
                success: function (response) {
                    Toastify({
                        text: response.message,
                        duration: 3000,
                        close: true,
                        gravity: "top",
                        position: "right",
                        stopOnFocus: true,
                        className: response.class,
                    }).showToast();

                    if(response.error != true){
                        $('.datatable').DataTable().draw('page');
                    }

                },
                error: function (error) {
                    // Handle error
                }
            });
        });
    }
});











@if(request()->segment(3) == 'add-carton')

$('#updateItem').on('click', function () {
    // Get selected checkboxes
    var selectedCheckboxes = $('.select-checkbox:checked');

    // Check if at least one checkbox is checked
    if (selectedCheckboxes.length === 0) {
        alert('Please select at least one row.');
        return;
    }

    // Validate UPS values for selected rows
    var isValid = true;
    selectedCheckboxes.each(function () {
        var upsInput = $(this).closest('tr').find('.ups-input');
        if (!upsInput.val()) {
            alert('Please enter UPS value for the selected row.');
            isValid = false;
            return false; // Break the loop if validation fails for any row
        }
    });


    if (isValid) {

        var upsData = selectedCheckboxes.map(function () {
            var rowId = $(this).val();
            var upsValue = $(this).closest('tr').find('.ups-input').val();
            return { ids: rowId, ups: upsValue };
        }).get();

        console.log('UPS Data for Selected Rows:', upsData);

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: '{{ route('admin.planning.update.jobcard', request()->segment(4)) }}',
            data: { 'data': upsData, '_method': 'POST', '_token': '{{ csrf_token() }}' },
            success: function (response) {
                Toastify({
                    text: response.message,
                    duration: 3000,
                    close: true,
                    gravity: "top", // `top` or `bottom`
                    position: "right", // `left`, `center` or `right`
                    stopOnFocus: true, // Prevents dismissing of toast on hover
                    className: response.class,
                }).showToast(); 
                $('.datatable').DataTable().draw('page');
            },
            error: function (error) {
                // Handle error
            }
        });
        
    }
});

@endif

});


$('#client').select2({
    dropdownParent: $("#offcanvasTop"),
    minimumInputLength: 1,
    delay : 200,
    ajax: {
        url: '{{ route('admin.common.client.list') }}',
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

    </script>

@endpush