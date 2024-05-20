@extends('admin.layouts.master')
@push('links')

@endpush




@section('main')



        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
                    @can('add_dye_details')
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
                        <table id="datatable" class="datatable table-sm border-secondary table-hover table table-bordered nowrap align-middle" style="width:100%">
                            <thead class="gridjs-thead">
                            <tr>
                                <th style="width:12px">Si</th>
                                <th width="10%">Job No.</th>
                                <th>Paper</th>
                                <th>Sheets</th>
                                <th>Paper Divide</th>
                                <th>Sheet Size</th>
                                <th>Required Sheet</th>
                                <th>Status</th>
                                @can(['edit_dye_details','delete_dye_details', 'read_dye_details'])
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


@push('scripts')

<script type="text/javascript">
$(document).ready(function(){
    var table2 = $('#datatable').DataTable({
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
    }

    },
    "createdRow": function (row, data, dataIndex) {
        if (data.status_id == 5) {
            $(row).addClass('table-success border-secondary');
        }
    },
    "columns": [
        { "data": "sn" },
        { "data": "job_card_no" },
        { "data": "paper" },
        { "data": "total_sheet" },
        { "data": "divide" },
        { "data": "sheet_size" },
        { "data": "required_sheet" },
        { "data": "status" },
        {
            "data": "action",
            render: function(data, type, row) {
                if (type === 'display') {
                    var btn = '<div class="dropdown d-inline-block"><button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-fill align-middle"></i></button><ul class="dropdown-menu dropdown-menu-end">';

                    @can(['edit_dye_details','delete_dye_details','read_dye_details'])

                    @can('change_status_cutting')
                        if(row['status_id'] == 2){
                            btn+='<li><a onclick="updateData(\'{{ route('admin.cutting.changeStatus') }}\',{id:'+row['id']+',job_card_id:'+row['job_card_id']+'})" class="dropdown-item edit-item-btn" href="javascript:void(0);"><i class="ri-check-double-line align-bottom me-2 text-muted"></i> Assign</a></li>';
                        }else{
                            btn+='<li><a onclick="updateData(\'{{ route('admin.cutting.changeStatus') }}\',{id:'+row['id']+',job_card_id:'+row['job_card_id']+'})" class="dropdown-item edit-item-btn" href="javascript:void(0);"><i class="ri-check-double-line align-bottom me-2 text-muted"></i> Cancel</a></li>';
                        }
                    @endcan


                    @can('edit_dye_details')
                        btn+='<li><a class="dropdown-item edit-item-btn" href="'+window.location.href+'/'+row['id']+'/edit"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Edit</a></li>';
                    @endcan

                    @can('delete_dye_details')
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
});
    </script>

@endpush