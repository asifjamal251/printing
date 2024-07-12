@extends('admin.layouts.master')
@push('links')

@endpush




@section('main')



        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
                    @can('add_billing')
                    <div class="page-title-right">
                        <a href="javascript:void(0);"  class="make-billed btn-sm btn btn-primary btn-label rounded-pill">
                            <i class="bx bx-plus label-icon align-middle rounded-pill fs-16 me-2"></i>
                            Mark as completed
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
<<<<<<< HEAD
                                {{-- <th style="width:12px">Billing Selection</th> --}}
                                <th>Reference No.</th>
                                <th>Invoice No.</th>
=======
                                <th style="width:12px">Billing Selection</th>
                                <th>Reference No.</th>
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                                <th>Client Name</th>
                                <th>City</th>
                                <th>Status</th>
                                @can(['edit_billing','delete_billing', 'read_billing', 'change_status_billing'])
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



<<<<<<< HEAD
<div id="billNoModel" class="modal fade" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
        {!! Form::open(['method' => 'POST', 'route' => 'admin.billing.invoice.update', 'class' => 'form-horizontal', 'id'=>'billingForm']) !!}
            <div class="py-2 px-3 modal-header border-primary border-bottom">
                <h5 class="modal-title" id="myModalLabel">Update Invoice No.</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
            </div>
            <div class="modal-body">
                <div class="form-group{{ $errors->has('invoice_no') ? ' has-error' : '' }}">
                    {!! Form::label('invoice_no', 'Invoice No.') !!}
                    {!! Form::text('invoice_no', null, ['class' => 'form-control', 'placeholder' => 'Invoice No.']) !!}
                    <small class="text-danger">{{ $errors->first('invoice_no') }}</small>
                </div>

                {!! Form::hidden('id', null, ['id'=>'billingID']) !!}
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="billingCreate">Save Changes</button>
            </div>

        {!! Form::close() !!}
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
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
    "lengthMenu": [30, 50, 100,200],
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
<<<<<<< HEAD
        // { "data": "checkbox",
        //     render: function(data, type, row) {
        //         if(row['status_id'] == 2){
        //             return '<input type="checkbox" class="row-checkbox" data-id="' + row['id'] + '" data-client="' + row['client_id'] + '">';
        //         }
        //         else if(row['status_id'] == 5){
        //             return '<div class="form-check form-check-right"><input class="form-check-input" type="checkbox" value="" id="' + row['client_id'] + '" checked="" disabled=""></div>';
        //         }else{
        //             return 'N/A';
        //         }
        //     }
        // },
        { "data": "reference_no" },
        { "data": "invoice_no" },
=======
        { "data": "checkbox",
            render: function(data, type, row) {
                if(row['status_id'] == 2){
                    return '<input type="checkbox" class="row-checkbox" data-id="' + row['id'] + '" data-client="' + row['client_id'] + '">';
                }
                else if(row['status_id'] == 5){
                    return '<div class="form-check form-check-right"><input class="form-check-input" type="checkbox" value="" id="' + row['client_id'] + '" checked="" disabled=""></div>';
                }else{
                    return 'N/A';
                }
            }
        },
        { "data": "reference_no" },
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
        { "data": "client_name" },
        { "data": "city" },
        { "data": "status" },
        {
            "data": "action",
            render: function(data, type, row) {
                if (type === 'display') {
                    var btn = '<div class="dropdown d-inline-block"><button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-fill align-middle"></i></button><ul class="dropdown-menu dropdown-menu-end">';

                    @can(['edit_billing','delete_billing','read_billing', 'change_status_billing'])

                    @can('read_client')
                    btn += '<li><a class="dropdown-item" href="{{ request()->url() }}/' + row['id'] + '"><i class="ri-eye-fill align-bottom me-2 text-muted"></i> View</a></li>';
                    @endcan


                    @can('edit_billing')
                        if(row['status_id'] != 5){
                            btn+='<li><a class="dropdown-item edit-item-btn" href="'+window.location.href+'/'+row['id']+'/edit"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Edit</a></li>';
                        }
                    @endcan

                    @can('delete_billing')
                        btn += '<li><button type="button" onclick="deleteAjax(\''+window.location.href+'/'+row['id']+'/delete\')" class="dropdown-item remove-item-btn"><i class="ri-delete-bin-fill align-bottom me-2 text-muted"></i> Delete</button></li>';
                    @endcan


                    if(row['status_id'] == 5){
                        btn+='<li><a class="dropdown-item edit-item-btn" href="{{route('admin.pdf-download.billing','')}}/'+row['id']+'"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Download</a></li>';
                    }

<<<<<<< HEAD
                    btn+='<li><a data-id="'+row['id']+'" class="dropdown-item edit-item-btn open-model" href="javascript:voide(0);"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Add Invoice No</a></li>';

=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                    @endcan
                     btn += '</ul></div>';
                    return btn;
                }
                return ' ';
            },
    }]

});




var checkedRows = [];

$(document).on('change', '.row-checkbox', function() {
    var $this = $(this);
    var rowId = $(this).data('id');
    var rowClient = $(this).data('client');

    if ($(this).prop('checked')) {
        checkedRows.push({ id: rowId, client: rowClient });
    } else {
        checkedRows = checkedRows.filter(function(row) {
            return row.id !== rowId;
        });
    }
    // if (checkedRows.length > 1 && !allRowsHaveSameClient(checkedRows)) {
    //     $this.prop('checked', false);
    //     checkedRows = checkedRows.filter(function(row) {
    //         return row.id !== rowId;
    //     });
    //     alert('Selected rows have different clients. Please select rows with the same client.');
    // }
    
    $('tbody tr').each(function() {
        var client_id = $(this).find('td:eq(1) input.row-checkbox').data('client');
        if (client_id !== rowClient) {
            $('input.row-checkbox[data-client="' + client_id + '"]').prop('disabled', true);
        }
    });

    if (checkedRows.length === 0){
        $('input.row-checkbox').prop('disabled', false);
    }

    console.log(checkedRows);
});

// Function to check if all selected rows have the same client
function allRowsHaveSameClient(rows) {
    var firstClient = rows[0].client;
    return rows.every(function(row) {
        return row.client === firstClient;
    });
}



table2.on('draw', function() {
    $('.row-checkbox').prop('checked', function() {
        return checkedRows.includes($(this).data('id'));
    });
});



$('body').on('click', '.make-billed', function(){
    if (confirm('Are you sure to complete this billing')){   
        if(checkedRows.length > 0){
            
            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: '{{ route('admin.billing.changeStatus') }}',
                data: { 'data': checkedRows, '_method': 'PUT', '_token': '{{ csrf_token() }}' },
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

        }else{
            Toastify({
                text: 'Please Select a billing row',
                duration: 3000,
                close: true,
                gravity: "top",
                position: "right",
                stopOnFocus: true,
                className: "error",

            }).showToast();
        }
    } 
    return false;
});



});
<<<<<<< HEAD

$('body').on('click', '.open-model', function(){
    var id = $(this).attr('data-id');
    $('#billingID').val(id);
    $('#billNoModel').modal('show');
});


$('body').on('click', '#billingCreate', function(){
    if (confirm('Are you sure to perform this action')){
        formData = new FormData(document.querySelector('#billingForm'));
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url:'{{ route('admin.billing.invoice.update') }}',
            data: formData,
            contentType: false,
            processData: false,
            cache: false,
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
                if(response.error == false){
                    $('#billNoModel').modal('hide');
                    $('.datatable').DataTable().draw('page');
                    document.querySelector('#billingForm').reset();
                }
                //document.querySelector('#billingForm').reset();              
            },
            error:function(error){
                console.log(error)
                handleErrors(error.responseJSON);

            }
        });
    }
        
});

</script>
=======
    </script>
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af

@endpush