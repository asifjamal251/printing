@extends('admin.layouts.master')
@push('links')

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



                    @can('add_material_order')
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
                        <table id="datatable" class="datatable table-sm border-secondary table table-bordered nowrap align-middle" style="width:100%">
                            <thead class="gridjs-thead">
                            <tr>
                                <th style="width:12px">Si</th>
                                <th>MO No.</th>
                                <th>Vendor</th>
                                <th>MO Date</th>
                                <th>Subtotal</th>
                                <th>Total GST</th>
                                <th>Total</th>
                                <th>Created At</th>
                                <th>Status</th>
                                <th>Bill No.</th>
                                @can(['edit_material_order','delete_material_order', 'read_material_order', 'check_material_order'])
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
        <h5 class="m-0 me-2 text-white">Material Inward Filters</h5>

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
                <div class="m-0 form-group{{ $errors->has('vendor') ? ' has-error' : '' }}">
                    {!! Form::label('vendor', 'Vendor') !!}
                    {!! Form::select('vendor', App\Models\Vendor::pluck('name', 'id'), null, ['id' => 'filter_vendor', 'class' => 'form-control form-control-sm', 'placeholder' => 'Choose Vendor']) !!}
                    <small class="text-danger">{{ $errors->first('vendor') }}</small>
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
                {{-- <div class="d-inline-block" style="width:50%;">
                    <button onclick="downloadExcel(this)" type="submit" class="btn btn-soft-success w-100 border-success"> Dowload</button>
                </div> --}}
            </div>
        </div>


</div>
</form>
@endsection













@push('scripts')

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
        d.vendor = $('#filter_vendor').val();
    }

    },
    "columns": [
        { "data": "sn" },
        { "data": "mo_no" },
        { "data": "vendor" },
        { "data": "mo_date" },
        { "data": "subtotal" },
        { "data": "total_gst" },
        { "data": "total" },
        { "data": "created_at" },
        { "data": "status" },
        { "data": "bill_no" },
        @can(['edit_material_order','delete_material_order', 'read_material_order', 'check_material_order'])
        {
            "data": "action",
            render: function(data, type, row) {
                if (type === 'display') {
                    var btn = '<div class="dropdown d-inline-block"><button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-fill align-middle"></i></button><ul class="dropdown-menu dropdown-menu-end">';

                    @can(['edit_material_order','delete_material_order','read_material_order'])

                    @can('read_material_order')
                        btn += '<li><a class="dropdown-item" href="{{ request()->url() }}/' + row['id'] + '"><i class="ri-eye-fill align-bottom me-2 text-muted"></i> View</a></li>';
                    @endcan


                    @can('edit_material_order')
                        if(row['status_id'] == 2){
                            btn+='<li><a class="dropdown-item edit-item-btn" href="'+window.location.href+'/'+row['id']+'/edit"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Edit</a></li>';
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
});
    </script>

@endpush