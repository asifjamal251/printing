@extends('admin.layouts.master')

@push('links')
<link rel="stylesheet" href="{{asset('admin-assets/libs/select2/css/select2.min.css')}}"> 
<style type="text/css">
    .checkItems{
        display:inline-block;
        cursor: pointer;
    }
    .form-select{
        background-position: right 0.2rem center!important;
        padding: 0.5rem 0.8rem 0.5rem 0.9rem!important;
    }
    option{
        padding:0!important;
    }
</style>
@endpush




@section('main')



        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
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


                    @can('add_purchase_order')
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
        <!-- end page title -->




        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    
                    <div class="card-body">
                        <div class="table-responsive">
                        <table id="datatable" class="datatable table border-primary table-hover table-sm table-bordered nowrap align-middle" style="width:100%">
                            <thead class="gridjs-thead">
                            <tr>
                                <th style="width:12px">Si</th>
                                <th>Client</th>
                                <th>PO No.</th>
                                <th>PO Date</th>
                                <th>Status</th>
                                <th>Item Status</th>
                                <th>Made By</th>
                                <th>PO Remark</th>
                                <th>PO Item Remark</th>
                                @can(['designer_purchase_order'])
                                    <th style="width:120px">Designer</th>
                                @endcan
                                <th>Created At</th>
                                @can(['edit_purchase_order','delete_purchase_order', 'read_purchase_order'])
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






<div class="modal fade" id="poItems" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered  modal-lg" role="document">
        <div class="modal-content">

            <div class="modal-header p-0">
                 <a href="javascript:void(0);" class="ms-auto btn btn-link shadow-none link-success fw-medium" data-bs-dismiss="modal"><i class="ri-close-line me-1 align-middle"></i> Close</a>
            </div>

            <div class="modal-body text-center" id="poItemsList">
                
            </div>
        </div>
    </div>
</div>



@endsection









@section('filter')
<form id="filterForm" action="" autocomplete="off">
<div class="offcanvas offcanvas-end border-0" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
    
    <div class="d-flex align-items-center bg-success bg-gradient p-3 offcanvas-header">
        <h5 class="m-0 me-2 text-white">Product Filters</h5>

        <button type="button" class="btn-close btn-close-white ms-auto" id="customizerclose-btn" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>


    <div class="offcanvas-body bg-light">

{{-- 
        <div class="card">
            <div class="card-header pt-2 pb-2">
                <h6 class="card-title mb-0">Filter By Date</h6>
            </div>

            <div class="card-body">
                {!! Form::open(['method' => 'POST', 'route' => 'admin.dashboard.filter', 'class' => 'form-horizontal', 'id'=>'filterForm']) !!}
                    <div id="reportrange" class="form-icon w-100" style="width: 280px;text-align:center;cursor:pointer;">
                        <span><input id="datefilter" style="cursor:pointer;" type="text" class="form-control form-control-sm form-control-icon" name="datefilter" value="All" /></span> <i class="fa fa-calendar"></i>
                    </div>
                {!! Form::close() !!}
            </div>

        </div> --}}




        <div class="card">

            <div class="card-body">
                <div class="m-0 form-group{{ $errors->has('client') ? ' has-error' : '' }}">
                    {!! Form::label('client', 'Client') !!}
                    {!! Form::select('client', App\Models\Client::orderBy('company_name', 'asc')->pluck('company_name', 'id'), null, ['id' => 'filter_client', 'class' => 'form-control form-control-sm', 'placeholder' => 'Choose Client']) !!}
                    <small class="text-danger">{{ $errors->first('client') }}</small>
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
                <div class="d-inline-block" style="width:50%;">
                    <button onclick="downloadCarton(this)" type="submit" class="btn btn-soft-success w-100 border-success"> Dowload</button>
                </div>
            </div>
        </div>


</div>
</form>
@endsection












@push('scripts')
<script src="{{asset('admin-assets/libs/select2/js/select2.min.js')}}" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
    var table2 = $('#datatable').DataTable({
     "processing": true,
     "serverSide": true,
     "lengthMenu": [50, 100,200],
    'ajax': {
    'url': '{{ route('admin.'.request()->segment(2).'.index') }}',
    'data': function(d) {
        d._token = '{{ csrf_token() }}';
        d._method = 'PATCH';
        d.client = $('#filter_client').val();
    }

    },
    "columns": [
        { "data": "sn" },
        { "data": "client" },
        { "data": "po_no" },
        { "data": "po_date" },
        { "data": "status" },
        { "data": "item_status" },
        { "data": "made_by" },
        { "data": "po_remarks" },
        { "data": "po_item_remarks" },
        @can(['designer_purchase_order'])
            { "data": "designer"},
        @endcan
        { "data": "created_at" },
        @can(['edit_purchase_order','delete_purchase_order', 'read_purchase_order'])
        {
            "data": "action",
            render: function(data, type, row) {
                if (type === 'display') {
                    var btn = '<div class="dropdown d-inline-block"><button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-fill align-middle"></i></button><ul class="dropdown-menu dropdown-menu-end">';

                    @can(['edit_purchase_order','delete_purchase_order','read_purchase_order'])

                    @can('read_purchase_order')

                        // btn += '<li><a onclick="downloadCarton(this, '+row['id']+')" class="dropdown-item" href="javascript:void(0);"><i class="ri-eye-fill align-bottom me-2 text-muted"></i> Download Carton Position</a></li>';


                        btn += '<li><a class="dropdown-item" href="{{ request()->url() }}/' + row['id'] + '"><i class="ri-eye-fill align-bottom me-2 text-muted"></i> View</a></li>';
                    @endcan

                    @can('edit_purchase_order')
                        btn+='<li><a class="dropdown-item edit-item-btn" href="'+window.location.href+'/'+row['id']+'/edit"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Edit</a></li>';
                    @endcan

                    @can('delete_purchase_order')
                        if(row['status_id'] == 2){
                            btn += '<li><button type="button" onclick="deleteAjax(\''+window.location.href+'/'+row['id']+'/delete\')" class="dropdown-item remove-item-btn"><i class="ri-delete-bin-fill align-bottom me-2 text-muted"></i> Delete</button></li>';
                        }
                    @endcan

                    @endcan
                     btn += '</ul></div>';
                    return btn;
                }
                return ' ';
            },
    }
    @endcan
    ]

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
  

  $('body').on('change', '.designerSelect', function(){
    var id = $(this).attr('data-id');
    var designer = $(this).val();

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.purchase-order.designer.assign', '') }}/'+id,
        data: {'designer':designer,'_method': 'POST', '_token': '{{ csrf_token() }}'},
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
$('.select2').select2({
    dropdownParent: $("#offcanvasTop"),
});
});

function downloadCarton(element){
    client = $('#filter_client').val();
    if(client.length > 0){
        var button = new Button(element);
        button.process();
        clearErrors();
        var requestData,otpdata,data;

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url:'{{ route('admin.excell-download.carton-position') }}',
            data: {'client':client, '_method': 'POST', '_token': '{{ csrf_token() }}' },
            success:function(response){
               // $('#offcanvasTop').offcanvas('hide')
                Toastify({
                    text: response.message,
                    duration: 3000,
                    close: true,
                    gravity: "top",
                    position: "right",
                    stopOnFocus: true,
                    className: response.class,

                }).showToast();
                button.normal();
                window.location.href = response.filename;
            },
            error:function(error){
                Toastify({
                    text: error.responseJSON.message,
                    duration: 3000,
                    close: true,
                    gravity: "top",
                    position: "right",
                    stopOnFocus: true,
                    className: "error",

                }).showToast();
                button.normal();
            }
        });
    }
} 
    </script>

@endpush