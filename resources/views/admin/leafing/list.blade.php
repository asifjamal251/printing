@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
@endpush




@section('main')



        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
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
                        <table id="datatable" class="datatable table-sm border-secondary table-hover table table-bordered nowrap align-middle" style="width:100%">
                            <thead class="gridjs-thead">
                            <tr>
                                <th style="width:12px">Si</th>
                                <th  style="width:120px">Oprator</th>
                                <th>Job No.</th>
                                <th>Set No.</th>
                                <th>Carton</th>
                                <th>Embossing/Leafing</th>
                                <th>Total Sheets</th>
                                <th>Counter</th>
                                <th>File</th>
                                <th>Status</th>
                                <th>Timer</th>
                                @can(['edit_leafing','delete_leafing', 'read_leafing', 'change_status_leafing'])
                                  <th>Action</th>
                                @endcan
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
<form id="filterForm" action="" autocomplete="off">
<div class="offcanvas offcanvas-end border-0" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
    
    <div class="d-flex align-items-center bg-success bg-gradient p-3 offcanvas-header">
        <h5 class="m-0 me-2 text-white">Product Filters</h5>

        <button type="button" class="btn-close btn-close-white ms-auto" id="customizerclose-btn" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>


    <div class="offcanvas-body bg-light">


        <div class="card">
            <div class="card-body">

                <div id="reportrange" class="form-icon w-100" style="width: 280px;text-align:center;cursor:pointer;margin-right: 10px;">
                    <span>
                        <input style="cursor:pointer;" type="text" class="form-control form-control-sm form-control-icon" name="datefilter" value="" placeholder="Select date range" />
                    </span>
                    <i class="fa fa-calendar"></i>
                </div>
            </div>

        </div>

        <div class="card">
            <div class="card-header pt-2 pb-2">
                <h6 class="card-title mb-0">Filter By Oprator</h6>
            </div>

            <div class="card-body">
                <div class="form-group{{ $errors->has('oprator') ? ' has-error' : '' }}">
                    {!! Form::select('oprator', App\Models\ModuleUser::where('module_id', 5)->pluck('name', 'id'), null, ['id' => 'oprator', 'class' => 'form-control form-control-sm', 'placeholder' => 'Choose Oprator']) !!}
                    <small class="text-danger">{{ $errors->first('oprator') }}</small>
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
</form>
@endsection
@include('admin.snippets.module-timer')
@push('scripts')

<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

<script>
    $(function() {
        var start = moment();
        var end = moment();

        function cb(start, end) {
            $('#reportrange span input').val(start.format('D MMMM YYYY') + ' - ' + end.format('D MMMM YYYY'));
        }

        $('#reportrange').daterangepicker({
            startDate: start,
            endDate: end,
            ranges: {
             'Today': [moment(), moment()],
             'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
             'Last 7 Days': [moment().subtract(6, 'days'), moment()],
             'Last 30 Days': [moment().subtract(29, 'days'), moment()],
             'This Month': [moment().startOf('month'), moment().endOf('month')],
             'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
         }
     }, cb);

        cb(null, null);
    });
</script>

<script type="text/javascript">
$(document).ready(function(){
    var table2 = $('#datatable').DataTable({
        "drawCallback": function( settings ) {
        lightbox.reload();
    },
    language: {
        search: '',
        searchPlaceholder: "🔍 Search...",
    },
    ordering: false,
    processing: true,
    serverSide: true,
    "lengthMenu": [50, 100,200],
    'ajax': {
    'url': '{{ route('admin.'.request()->segment(2).'.index') }}',
    'data': function(d) {
        d._token = '{{ csrf_token() }}';
        d._method = 'PATCH';
        d.user_id = $('#oprator').val();
    }

    },
    "createdRow": function (row, data, dataIndex) {
        if (data.status_id == 5) {
            $(row).addClass('table-success border-secondary');
        }
    },
    "columns": [
        { "data": "sn" },
        { "data": "oprator",
            render: function(data, type, row) {
                if(row['user'] == null){
                    return row['oprator'];
                }
                else{
                    return row['user'];
                }
            } 
        },
        { "data": "job_card_no" },
        { "data": "set_no" },
        { "data": "carton_name" },
        { "data": "emb_leaf" },
        { "data": "total_sheet" },
        { "data": "leafing_counter",
            render: function(data, type, row) {
                if(row['status_id'] == 5){
                    return row['leafing_counter'];
                }else{
                    return '<input data-total="'+row['total_sheet']+'" data-id="'+row['id']+'" type="text" value="'+row['leafing_counter']+'" class="form-control form-control-sm leafing-input" name="leafing_counter[]" placeholder="Leafing Counter" style="max-width:100px;">';
                }
                
            }
        },
        { "data": "file" },
        { "data": "status" },
        { "data": "timer" },
        {
            "data": "action",
            render: function(data, type, row) {
                if (type === 'display') {
                    var btn = '<div class="dropdown d-inline-block"><button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-fill align-middle"></i></button><ul class="dropdown-menu dropdown-menu-end">';

                    @can(['edit_leafing','delete_leafing','read_leafing', 'change_status_leafing'])

                    btn+='<li><a class="dropdown-item edit-item-btn" onclick="updateTimer(\'{{ route('admin.job-card.timer.content') }}\',{machine:6, id:'+row['id']+',job_card_id:'+row['job_card_id']+'})" href="javascript:void(0);"><i class="ri-alarm-line align-bottom me-2 text-muted"></i> Timer</a></li>';

                    @can('change_status_leafing')
                        if(row['status_id'] == 2){
                            btn+='<li><a onclick="updateData(\'{{ route('admin.leafing.changeStatus') }}\',{status:1,id:'+row['id']+',job_card_id:'+row['job_card_id']+'})" class="dropdown-item edit-item-btn" href="javascript:void(0);"><i class="ri-check-double-line align-bottom me-2 text-muted"></i> Completed</a></li>';
                        }else{
                            btn+='<li><a onclick="updateData(\'{{ route('admin.leafing.changeStatus') }}\',{status:2,id:'+row['id']+',job_card_id:'+row['job_card_id']+'})" class="dropdown-item edit-item-btn" href="javascript:void(0);"><i class="bx bx-x align-bottom me-2 fs-24 text-muted"></i> Cancel</a></li>';
                        }
                    @endcan


                    // @can('edit_leafing')
                    //     btn+='<li><a class="dropdown-item edit-item-btn" href="'+window.location.href+'/'+row['id']+'/edit"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Edit</a></li>';
                    // @endcan

                    // @can('delete_leafing')
                    //     btn += '<li><button type="button" onclick="deleteAjax(\''+window.location.href+'/'+row['id']+'/delete\')" class="dropdown-item remove-item-btn"><i class="ri-delete-bin-fill align-bottom me-2 text-muted"></i> Delete</button></li>';
                    // @endcan

                    @endcan
                     btn += '</ul></div>';
                    return btn;
                }
                return ' ';
            },
    }]

});

$('body').on('click', '.filters', function(){
        table2.draw('page');
        $('#offcanvasTop').offcanvas('hide');
    });


    $('body').on('click', '.resetFilter', function(){
        $('#filterForm').trigger("reset");
        table2.draw('page');
        $('#offcanvasTop').offcanvas('hide');
    });


    $('body').on('change', '.leafing-input', function(){
        var printed_sheet = parseInt($(this).val());
        var total_sheets = parseInt($(this).attr('data-total'));
        var id = $(this).attr('data-id');
        if(printed_sheet < total_sheets){
            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: '{{ route('admin.leafing.update', '') }}/'+id,
                data: { 'printed_sheet': printed_sheet, '_method': 'PUT', '_token': '{{ csrf_token() }}' },
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
        else{
            $(this).val('')
            Toastify({
                text: 'Printed Sheets always less than Total Sheets.',
                duration: 3000,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                className: 'error',
            }).showToast(); 
        }
    });


});

$('body').on('change', '.selectOprator', function(){
    var id = $(this).attr('data-id');
    var user = $(this).val();

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{route('admin.'.request()->segment(2).'.oprator')}}',
        data: {'id':id,'user_id':user,'_method': 'POST', '_token': '{{ csrf_token() }}'},
        success:function(response){
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
        error:function(error){


        }
    });

    });
    </script>

@endpush