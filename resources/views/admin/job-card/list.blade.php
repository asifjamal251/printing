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
                        <table id="datatable" class="datatable table table-bordered border-secondary table-sm nowrap align-middle" style="width:100%">
                            <thead class="gridjs-thead">
                            <tr>
                                <th style="width:12px">Si</th>
                                <th>Job Card No.</th>
                                <th>Set No.</th>
                                <th>Client</th>
                                <th>Cartons</th>
                                <th>Job Type</th>
                                <th>Designer</th>
                                <th>Printing User</th>
                                <th>Required Sheet</th>
                                <th>Wastage Sheet</th>
                                <th>Total Sheet</th>
                                <th>File</th>
                                <th>Status</th>
                                @can(['edit_job_card','delete_job_card', 'read_job_card', 'user_job_card'])
                                  <th>Action</th>
                                @endcan
                            </tr>
                        </thead>
                       
                        </table>
                    </div>
                </div>
            </div><!--end col-->
        </div><!--end row-->



@endsection



@section('filter')
<form id="filterForm" action="" autocomplete="off">
<div class="offcanvas offcanvas-end border-0" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
    
    <div class="d-flex align-items-center bg-success bg-gradient p-3 offcanvas-header">
        <h5 class="m-0 me-2 text-white">Job Card Filters</h5>

        <button type="button" class="btn-close btn-close-white ms-auto" id="customizerclose-btn" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>


    <div class="offcanvas-body bg-light">

        <div class="card">
            <div class="card-header pt-2 pb-2">
                <h6 class="card-title mb-0">Filter By Status</h6>
            </div>

            <div class="card-body">
                <div class="form-group{{ $errors->has('status') ? ' has-error' : '' }}">
                    {!! Form::select('status', App\Models\Status::orderBy('name', 'asc')->pluck('name', 'id'), null, ['id' => 'status_id', 'class' => 'form-control form-control-sm', 'placeholder' => 'Choose Status']) !!}
                    <small class="text-danger">{{ $errors->first('status') }}</small>
                </div>
            </div>

        </div>


        {{-- <div class="card">
            <div class="card-body">

                <div id="reportrange" class="form-icon w-100" style="width: 280px;text-align:center;cursor:pointer;margin-right: 10px;">
                    <span>
                        <input style="cursor:pointer;" type="text" class="form-control form-control-sm form-control-icon" name="datefilter" value="" placeholder="Select date range" />
                    </span>
                    <i class="fa fa-calendar"></i>
                </div>
            </div>

        </div> --}}

        {{-- <div class="card">
            <div class="card-header pt-2 pb-2">
                <h6 class="card-title mb-0">Filter By Oprator</h6>
            </div>

            <div class="card-body">
                <div class="form-group{{ $errors->has('oprator') ? ' has-error' : '' }}">
                    {!! Form::select('oprator', App\Models\ModuleUser::where('module_id', 4)->pluck('name', 'id'), null, ['id' => 'oprator', 'class' => 'form-control form-control-sm', 'placeholder' => 'Choose Oprator']) !!}
                    <small class="text-danger">{{ $errors->first('oprator') }}</small>
                </div>
            </div>

        </div> --}}










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
     "ordering": false,
     "processing": true,
     "serverSide": true,
     "lengthMenu": [50, 100,200],
    'ajax': {
    'url': '{{ route('admin.'.request()->segment(2).'.index') }}',
    'data': function(d) {
        d._token = '{{ csrf_token() }}';
        d._method = 'PATCH';
        d.status_id = $('#status_id').val();
    }

    },
    "columns": [
        { "data": "sn" },
        { "data": "job_card_no" },
        { "data": "set_no" },
        { "data": "client" },
        { "data": "carton_name" },
        { "data": "job_type" },
        { "data": "designer" },
        { "data": "printing_user" },
        { "data": "required_sheet" },
        { "data": "wastage_sheet" },
        { "data": "total_sheet" },
        { "data": "file" },
        { "data": "status" },
        {
            "data": "action",
            render: function(data, type, row) {
                if (type === 'display') {
                    var btn = '<div class="dropdown d-inline-block"><button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-fill align-middle"></i></button><ul class="dropdown-menu dropdown-menu-end">';

                    @can(['edit_job_card','delete_job_card','read_job_card', 'user_job_card'])

                    @can('change_status_job_card')
                        if(row['status_id'] == 1){
                            btn+='<li><a onclick="updateData(\'{{ route('admin.job-card.changeStatus') }}\',{job_card_id:'+row['id']+',status:1})" class="dropdown-item edit-item-btn" href="javascript:void(0);"><i class="ri-check-double-line align-bottom me-2 text-muted"></i> Assign To Cutting</a></li>';
                        }
                        if(row['status_id'] == 13){
                            btn+='<li><a onclick="updateData(\'{{ route('admin.job-card.changeStatus') }}\',{job_card_id:'+row['id']+',status:2})" class="dropdown-item edit-item-btn" href="javascript:void(0);"><i class="bx bx-x align-bottom me-2 fs-24 text-muted"></i> Cancel</a></li>';
                        }
                    @endcan

                    @can('read_purchase_order')
                        btn += '<li><a class="dropdown-item" href="{{ request()->url() }}/' + row['id'] + '"><i class="ri-eye-fill align-bottom me-2 text-muted"></i> View</a></li>';
                    @endcan

                    @can('edit_job_card')

                        btn += '<li><a target="_blank" class="dropdown-item" href="{{ request()->url() }}/track/' + row['id'] + '"><i class="ri-pulse-line  align-bottom me-2 text-muted"></i> View</a></li>';

                        btn += '<li><a target="_blank" class="dropdown-item" href="{{ request()->url() }}/track/' + row['id'] + '"><i class="ri-pulse-line  align-bottom me-2 text-muted"></i> Track</a></li>';

                        btn+='<li><a class="dropdown-item edit-item-btn" href="'+window.location.href+'/'+row['id']+'/edit"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Edit</a></li>';
                    @endcan

                    @can('user_job_card')
                        btn+='<li><a class="dropdown-item edit-item-btn" href="'+window.location.href+'/user/assign/'+row['id']+'"><i class="ri-user-follow-fill  align-bottom me-2 text-muted"></i>Assign User</a></li>';
                    @endcan

                    @can('delete_job_card')
                        btn += '<li><button type="button" onclick="deleteAjax(\''+window.location.href+'/'+row['id']+'/delete\')" class="dropdown-item remove-item-btn"><i class="ri-delete-bin-fill align-bottom me-2 text-muted"></i> Delete</button></li>';
                    @endcan

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



    $('body').on('change', '.selectOprator', function(){
        var id = $(this).attr('data-id');
        var user = $(this).val();
        var machine = $(this).attr('data-machine');

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url:'{{ route('admin.job-card.user.assign.single', '') }}/'+id,
            data: {'user':user,'machine':machine,'_method': 'POST', '_token': '{{ csrf_token() }}'},
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

});
    </script>

@endpush