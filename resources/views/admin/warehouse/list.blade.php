@extends('admin.layouts.master')
@push('links')

@endpush




@section('main')



        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
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
                                <th>Client</th>
                                <th>Carton</th>
                                <th>Old Quantity</th>
                                <th>New Quantity</th>
                                <th>Total Quantity</th>
                                <th>Billing Quantity</th>
                                <th>Pasting Added Box</th>
                                <th>Box</th>
                                @can(['edit_warehouse','delete_warehouse', 'read_warehouse', 'change_status_warehouse'])
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
        { "data": "sn",},
        { "data": "client" },
        { "data": "carton_name" },
        { "data": "old_quantity" },
        { "data": "new_quantity" },
        { "data": "total_quantity" },
        { "data": "billing_quantity",
            render: function(data, type, row) {
                if(row['total_quantity'] == 0 || row['total_quantity'] == ''){
                    return 'N/A';
                }else{
                    return '<input  data-id="'+row['id']+'" type="text" class="form-control form-control-sm billing-quantity" name="billing_quantity" placeholder="Billing Quantity" style="max-width:100px;">';
                }
                
            }
        },
        { "data": "pasting_ready_box"},
        { "data": "billing_box",
            render: function(data, type, row) {
                if(row['total_quantity'] == 0 || row['total_quantity'] == ''){
                    return 'N/A';
                }else{
                    return '<input  data-id="'+row['id']+'" type="text" class="form-control form-control-sm billing-box" name="billing_box" placeholder="Box" style="max-width:100px;">';
                }
                
            }
        },
        {
            "data": "action",
            render: function(data, type, row) {
                if (type === 'display') {
                    var btn = '<div class="dropdown d-inline-block"><button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-fill align-middle"></i></button><ul class="dropdown-menu dropdown-menu-end">';

                    @can(['edit_warehouse','delete_warehouse','read_warehouse'])

                    @can('read_warehouse')
                    if(row['total_quantity'] == 0 || row['total_quantity'] == ''){
                        btn+='<li>N/A</li>';
                    }else{
                        btn += '<li><a data-id="'+row['id']+'" data-add="1" class="addToBill dropdown-item" href="javascript:void(0);"><i class="ri-eye-fill align-bottom me-2 text-muted"></i> Send To Bill</a></li>';
                    }
                    @endcan

                    @endcan
                     btn += '</ul></div>';
                    return btn;
                }
                return ' ';
            },
    }]

});

    $('body').on('click', '.addToBill', function(){
        if (confirm('Are You Sure To Send This Data To Billing.')){
            var id = $(this).attr('data-id');
            var quantity = $('.billing-quantity[data-id="'+id+'"]').val();
            var box = $('.billing-box[data-id="'+id+'"]').val();
            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url:'{{ route('admin.warehouse.add-to-bill', '') }}/'+id,
                data: {'id':id, 'quantity':quantity, 'box':box, '_method': 'POST', '_token': '{{ csrf_token() }}'},
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
                    Toastify({
                        text: error.responseJSON.message,
                        duration: 3000,
                        close: true,
                        gravity: "top", // `top` or `bottom`
                        position: "right", // `left`, `center` or `right`
                        stopOnFocus: true, // Prevents dismissing of toast on hover
                        className: 'error',

                    }).showToast();
                    $('.datatable').DataTable().draw('page');
                }
            });
        } 
        return false;
    });






    $('body').on('change', '.ready-quantity', function(){
        var ready_quantity = $(this).val();
        var id = $(this).attr('data-id');
        if(ready_quantity > 0){
            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: '{{ route('admin.pasting.update', '') }}/'+id,
                data: { 'ready_box': null,'ready_quantity': ready_quantity, '_method': 'PUT', '_token': '{{ csrf_token() }}' },
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


    $('body').on('change', '.ready-box', function(){
        var ready_box = $(this).val();
        var id = $(this).attr('data-id');
        if(ready_box != ''){
            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: '{{ route('admin.pasting.update', '') }}/'+id,
                data: { 'ready_quantity': null,'ready_box': ready_box, '_method': 'PUT', '_token': '{{ csrf_token() }}' },
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
    </script>

@endpush