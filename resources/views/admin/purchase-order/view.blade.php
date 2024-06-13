@extends('admin.layouts.master')
@push('links')
<style type="text/css">
    .checkItems{
        display:inline-block;
        cursor: pointer;
    }
</style>
@endpush




@section('main')



<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>

            <button class="btn-sm btn btn-success assignData">Assign To Planning</button>
            

        </div>
    </div>
</div>
<!-- end page title -->



    <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    
                    <div class="card-body">
                         <div class="table-responsive">
                        <table class="table table-bordered nowrap align-middle" style="width:100%">
                            <thead class="gridjs-thead">
                            <tr>
                                <th>Client</th>
                                <th>PO No.</th>
                                <th>PO Date</th>
                                <th>Status</th>
                                <th>Comment</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>{{$po->client->company_name}}</td>
                                <td>{{$po->po_no}}</td>
                                <td>{{$po->created_at->format('d F, Y')}}</td>
                                <td>{!! status($po->status_id) !!}</td>
                                <td>
                                    <div class="form-group{{ $errors->has('remarks') ? ' has-error' : '' }}">
                                        {!! Form::text('remarks', null, ['class' => 'form-control', 'placeholder' => 'Remarks']) !!}
                                        <small class="text-danger">{{ $errors->first('remarks') }}</small>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                       
                        </table>
                    </div>
                    </div>
                </div>
            </div><!--end col-->
        </div><!--end row-->



     <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    
                    <div class="card-body">
                         <div class="card-preloader"><div class="card-status"><div class="spinner-grow text-danger"><span class="visually-hidden">Loading...</span></div></div></div>
                        <div class="table-responsive">
                        <table id="datatable" class="datatable table table-bordered border-primary table-sm nowrap align-middle" style="width:100%">
                            <thead class="gridjs-thead">
                            <tr>
                                <th scope="col" style="width: 10px;">
                                    <div class="form-check form-check-success">
                                        <input class="form-check-input" type="checkbox" id="checkAllItems">
                                        <label class="form-check-label" for="checkAllItems"></label>
                                    </div>
                                </th>
                                <th scope="col">Carton Name</th>
                                <th scope="col">Art Work</th>
                                <th scope="col">Carton Size</th>
                                <th scope="col">
                                    <div class="form-check form-check-primary d-flex align-items-center gap-3">
                                        <input class="form-check-input" type="checkbox" id="checkAllQuantity">
                                        <label class="form-check-label" for="checkAllQuantity">
                                            Quantity
                                        </label>
                                    </div>
                                </th>
                                <th width="150px">
                                    <div class="form-check form-check-primary">
                                        <input class="form-check-input" type="checkbox" id="checkAllRate">
                                        <label class="form-check-label" for="checkAllRate">
                                            Rate
                                        </label>
                                    </div>
                                </th> 
                                <th scope="col">Coating Type</th> 
                                <th scope="col">Other Coating Type</th> 
                                <th scope="col">Embossing/Leafing</th> 
                                <th scope="col">Paper Type</th> 
                                <th scope="col">Remarks</th> 
                                <th scope="col">Status</th> 
                            </tr>
                        </thead>
                       
                        </table>
                            {!! Form::hidden('po_id', $po->id, ['class' => 'form-control', 'id' => 'poID']) !!}
                            
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
        "ordering": false,
        "processing": true,
        "serverSide": true,
        "searching": false,
        "paging": false,
        "info": false,
        "pageLength": 999,
        'ajax': {
        'url': '{{ route('admin.'.request()->segment(2).'.show', $po->id) }}',
        'data': function(d) {
            d._token = '{{ csrf_token() }}';
            d._method = 'PATCH';
        }

        },
        "columns": [
            { "data": "assign",
                render: function(data, type, row) {
                    if(row['status_id'] == 2){
                        return '<div class="form-check form-check-success"><input class="form-check-input checkItems" type="checkbox" name="all_items" value="'+row['id']+'" data-id="'+row['id']+'" id="all-items-'+row['id']+'"><label class="form-check-label" for="all-items-'+row['id']+'"></label></div>';
                    }else{
                        return '<div class="form-check form-check-success"><input checked class="form-check-input" type="checkbox" name="all_items" value="'+row['id']+'" data-id="'+row['id']+'" id="all-items-'+row['id']+'" disabled><label class="form-check-label" for="all-items-'+row['id']+'"></label></div>';
                    }
                }
            },
            { "data": "carton_name" },
            { "data": "art_work" },
            { "data": "carton_size" },
            { "data": "quantity",
                render: function(data, type, row) {
                    if(row['quantity_status'] == 1){
                        return '<div class="d-flex gap-3 align-items-center" style="width:100px"><input checked data-name="quantity"  type="checkbox" data-id="'+row['id']+'" class="checkItems form-check-input" name="quantity_status" value="'+row['id']+'" placeholder="Color" readonly><input  type="text" data-id="'+row['id']+'" class="form-control form-control-sm quantity quantity-'+row['id']+'" name="quantity" value="'+row['quantity']+'" placeholder="Color" readonly></div>';
                    }else{
                        return '<div class="d-flex gap-3 align-items-center" style="width:100px"><input data-name="quantity"  type="checkbox" data-id="'+row['id']+'" class="checkItems form-check-input quantity-'+row['id']+'" name="quantity_status" value="'+row['id']+'" placeholder="Color"><input  type="text" data-id="'+row['id']+'" class="form-control form-control-sm quantity quantity-'+row['id']+'" name="quantity" value="'+row['quantity']+'" placeholder="Color"></div>';
                    }
                }
            },
            { "data": "rate",
                render: function(data, type, row) {
                    if(row['rate_status'] == 1){
                        return '<div class="d-flex gap-3 align-items-center" style="width:100px"><input checked data-name="rate" type="checkbox" data-id="'+row['id']+'" class="checkItems form-check-input" name="rate_status" value="'+row['id']+'" placeholder="Color" readonly><input type="text" data-id="'+row['rate']+'" class="form-control form-control-sm rate rate-'+row['id']+'" name="rate" value="'+row['rate']+'" placeholder="Color" readonly></div>';
                    }else{
                        return '<div class="d-flex gap-3 align-items-center" style="width:100px"><input data-name="rate" type="checkbox" data-id="'+row['rate']+'" class="checkItems form-check-input rate-'+row['id']+'" name="rate_status" value="'+row['id']+'" placeholder="Color"><input type="text" data-id="'+row['id']+'" class="form-control form-control-sm rate rate-'+row['id']+'" name="rate" value="'+row['rate']+'" placeholder="Color"></div>';
                    }
                }
            },
            { "data": "coating_type" },
            { "data": "other_coating_type" },
            { "data": "embossing_leafing" },
            { "data": "paper_type" },
            { "data": "remarks" },
            { "data": "status" },
           
            
        ]

    });


    function getCheckedIds(columnName) {
        var checkedIds = [];
        $('.checkItems[name="'+columnName+'"]:checked', table2.rows().nodes()).each(function () {
            checkedIds.push($(this).val());
        });
        return checkedIds;
    }

    function getUncheckedIds(columnName) {
        var uncheckedValues = [];
        $('.checkItems[name="' + columnName + '"]:not(:checked)', table2.rows().nodes()).each(function () {
            uncheckedValues.push($(this).val());
        });
        return uncheckedValues;
    }



    // Function to check or uncheck "Select All" based on individual checkbox states for Quantity
    function checkSelectAllQuantityCheckbox() {
        var allQuantityCheckboxes = $('#datatable tbody .checkItems[name="quantity_status"]');
        var checkAllQuantity = $('#checkAllQuantity');
        var allChecked = allQuantityCheckboxes.length > 0 && allQuantityCheckboxes.length === allQuantityCheckboxes.filter(':checked').length;

        checkAllQuantity.prop('checked', allChecked);
    }

    // Function to check or uncheck "Select All" based on individual checkbox states for Rate
    function checkSelectAllRateCheckbox() {
        var allRateCheckboxes = $('#datatable tbody .checkItems[name="rate_status"]');
        var checkAllRate = $('#checkAllRate');
        var allChecked = allRateCheckboxes.length > 0 && allRateCheckboxes.length === allRateCheckboxes.filter(':checked').length;

        checkAllRate.prop('checked', allChecked);
    }


    // Function to check or uncheck "Select All" based on individual checkbox states for Rate
    function checkSelectAllItemsCheckbox() {
        var allItemsCheckboxes = $('#datatable tbody .checkItems[name="all_items"]');
        var checkAllItems = $('#checkAllItems');
        var allChecked = allItemsCheckboxes.length > 0 && allItemsCheckboxes.length === allItemsCheckboxes.filter(':checked').length;

        checkAllItems.prop('checked', allChecked);
    }


    // Handle "Select All" checkbox for Quantity
    $('#checkAllQuantity').on('change', function () {
        var isChecked = $(this).prop('checked');
        table2.rows().nodes().to$().find('.checkItems[name="quantity_status"]').prop('checked', isChecked);
        updateData();
    });

    // Handle "Select All" checkbox for Rate
    $('#checkAllRate').on('change', function () {
        var isChecked = $(this).prop('checked');
        table2.rows().nodes().to$().find('.checkItems[name="rate_status"]').prop('checked', isChecked);
        updateData();
    });


    // Handle "Select All" checkbox for Rate
    $('#checkAllItems').on('change', function () {
        var isChecked = $(this).prop('checked');
        table2.rows().nodes().to$().find('.checkItems[name="all_items"]').prop('checked', isChecked);
    });

    // Handle individual checkbox changes for Quantity
    $('#datatable tbody').on('change', '.checkItems[name="quantity_status"]', function () {
        checkSelectAllQuantityCheckbox();
        updateData();
    });

    // Handle individual checkbox changes for Rate
    $('#datatable tbody').on('change', '.checkItems[name="rate_status"]', function () {
        checkSelectAllRateCheckbox();
        updateData();
    });


    // Handle individual checkbox changes for Rate
    $('#datatable tbody').on('change', '.checkItems[name="all_items"]', function () {
        checkSelectAllItemsCheckbox();
    });

    // Function to send AJAX request
    function updateData() {
        $('.card-preloader').addClass('show');
        var po_id = $('#poID').val();
        var checkedQuantityIds = getCheckedIds('quantity_status');
        var checkedRateIds = getCheckedIds('rate_status');

        var uncheckedQuantityIds = getUncheckedIds('quantity_status');
        var uncheckedRateIds = getUncheckedIds('rate_status');

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url:'{{ route('admin.purchase-order.item.update') }}',
            data: { 'quantity_status': checkedQuantityIds, 'rate_status':checkedRateIds, 'quantity_status_not': uncheckedQuantityIds, 'rate_status_not':uncheckedRateIds, 'po_id':po_id,'_method': 'POST', '_token': '{{ csrf_token() }}' },
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

                $('#datatable').DataTable().draw('page');
                setTimeout(function(){
                    $('.card-preloader').removeClass('show');
                    checkSelectAllQuantityCheckbox();
                    checkSelectAllRateCheckbox();
                    checkSelectAllItemsCheckbox();
                }, 500);
            },
            error:function(error){
                Toastify({
                    text: error.responseJSON.message,
                    duration: 3000,
                    close: true,
                    gravity: "top", // `top` or `bottom`
                    position: "right", // `left`, `center` or `right`
                    stopOnFocus: true, // Prevents dismissing of toast on hover
                    className: "error",

                }).showToast();
                handleErrors(error.responseJSON);
                setTimeout(function(){
                    $('.card-preloader').removeClass('show');
                }, 500);

            }
        });
    }

    // Initialize checkbox states on page load (after DataTable initialization)
    table2.one('draw', function () {
        checkSelectAllQuantityCheckbox();
        checkSelectAllRateCheckbox();
        checkSelectAllItemsCheckbox();
    });

    $('body').on('click', '.assignData', function(){
        $('.card-preloader').addClass('show');
        var checkedQuantityIds = getCheckedIds('quantity_status');
        var checkedRateIds = getCheckedIds('rate_status');
        var checkedItemsIds = getCheckedIds('all_items');

        
        var commonIds = checkedQuantityIds.filter(value => checkedRateIds.includes(value) && checkedItemsIds.includes(value));
        console.log('Quantities:', checkedQuantityIds);
        console.log('Rates:', checkedRateIds);
        console.log('Assign:', checkedItemsIds);
        console.log('Common IDs:', commonIds);

        if(checkedItemsIds.length <= checkedRateIds.length && checkedItemsIds.length <=checkedQuantityIds.length && checkedItemsIds.length > 0){
           var po_id = $('#poID').val();
            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url:'{{ route('admin.purchase-order.item.assign') }}',
                data: { 'ids': commonIds, 'po_id':po_id, '_method': 'POST', '_token': '{{ csrf_token() }}' },
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

                    $('#datatable').DataTable().draw('page');
                    setTimeout(function(){
                        $('.card-preloader').removeClass('show');
                        checkSelectAllQuantityCheckbox();
                        checkSelectAllRateCheckbox();
                        checkSelectAllItemsCheckbox();
                    }, 500);
                },
                error:function(error){
                    setTimeout(function(){
                        $('.card-preloader').removeClass('show');
                    }, 500);

                    Toastify({
                        text: error.responseJSON.message,
                        duration: 3000,
                        close: true,
                        gravity: "top", // `top` or `bottom`
                        position: "right", // `left`, `center` or `right`
                        stopOnFocus: true, // Prevents dismissing of toast on hover
                        className: "error",

                    }).showToast();
                    handleErrors(error.responseJSON);
                                    }
            });
        }
        else{
            alert('Please Check rate and quantity has okay');
            setTimeout(function(){
                $('.card-preloader').removeClass('show');
            }, 500);
        }
        
    });

});

function rateQuantity(type, data, id){
    $('.card-preloader').addClass('show');
    var po_id = $('#poID').val();
    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.purchase-order.item.rateQuantity') }}',
        data: { 'type': type, 'data':data, 'id':id, 'po_id':po_id, '_method': 'POST', '_token': '{{ csrf_token() }}' },
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

            $('#datatable').DataTable().draw('page');
            setTimeout(function(){
                $('.card-preloader').removeClass('show');
            }, 500);
        },
        error:function(error){
            Toastify({
                text: error.responseJSON.message,
                duration: 3000,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                className: "error",

            }).showToast();
            handleErrors(error.responseJSON);
            setTimeout(function(){
                $('.card-preloader').removeClass('show');
            }, 500);

        }
    });
}

$('body').on('change', '.quantity', function(){
    var data = $(this).val();
    var id = $(this).attr('data-id');
    var type = "quantity";
    rateQuantity(type, data, id)
});

$('body').on('change', '.rate', function(){
    var data = $(this).val();
    var id = $(this).attr('data-id');
    var type = "rate";
    rateQuantity(type, data, id)
});
</script>

@endpush