@extends('admin.layouts.master')
@push('links')
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
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
                                <th>Client</th>
                                <th>PO Quantity</th>
                                <th>Dye Breaking Quantity</th>
                                <th>Pasted Quantity</th>
                                <th>Ready Quantity</th>
                                {{-- <th>Ready Box</th> --}}
                                <th>File</th>
                                <th>Status</th>
                                <th>Timer</th>
                                @can(['edit_pasting','delete_pasting', 'read_pasting', 'change_status_pasting'])
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

        <div class="card">
            <div class="card-header pt-2 pb-2">
                <h6 class="card-title mb-0">Filter By Oprator</h6>
            </div>

            <div class="card-body">
                <div class="form-group{{ $errors->has('oprator') ? ' has-error' : '' }}">
                    {!! Form::select('oprator', App\Models\ModuleUser::where('module_id', 8)->pluck('name', 'id'), null, ['id' => 'oprator', 'class' => 'form-control form-control-sm', 'placeholder' => 'Choose Oprator']) !!}
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
        $('#datatable tbody tr').each(function() {
            startTimer(this);
        });
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
                if(row['status_id'] == 5) {
                    return row['user']
                }
                else{
                    return row['oprator'];
                }
                
            }
        },
        { "data": "job_card_no" },
        { "data": "set_no" },
        { "data": "carton_name" },
        { "data": "client" },
        { "data": "po_quantity" },
        { "data": "dye_breaking" },
        { "data": "ready_quantity" },
        { "data": "add_quantity",
            render: function(data, type, row) {
                if(row['status_id'] == 5){
                    return row['ready_quantity'];
                }else{
                    @if (auth('admin')->user()->role_id != 1 && auth('admin')->user()->role_id != 2)
                        return '<input  data-user="'+row['user_id']+'"  data-id="'+row['id']+'" type="text" class="form-control form-control-sm ready-quantity" name="ready_quantity[]" placeholder="Ready Quantity" style="max-width:100px;">';
                    @else
                        return '<input  data-id="'+row['id']+'" value="'+row['ready_quantity']+'" type="text" class="form-control form-control-sm ready-quantity" name="ready_quantity[]" placeholder="Ready Quantity" style="max-width:100px;">';
                    @endif
                }
                
            }
        },

        // { "data": "ready_box",
        //     render: function(data, type, row) {
        //         if(row['status_id'] == 5){
        //             return row['ready_box'];
        //         }else{
        //             @if (auth('admin')->user()->role_id != 1 && auth('admin')->user()->role_id != 2)
        //                 return '<input   data-user="'+row['user_id']+'"  data-id="'+row['id']+'" type="text" class="form-control form-control-sm ready-box" value="'+row['ready_box']+'" name="ready_box[]" placeholder="Ready box" style="max-width:100px;">';
        //             @else
        //                 return '<input  data-id="'+row['id']+'" value="'+row['ready_box']+'" type="text" class="form-control form-control-sm ready-box" name="ready_box[]" placeholder="Ready Quantity" style="max-width:100px;">';
        //             @endif
        //         }
                
        //     }
        // },
     
      
        { "data": "file" },
        { "data": "status" },
        { "data": "timer", 
            render: function(data, type, row) {
                if(row['timer_status'] == 1){
                    return '<span class="timer" data-start-time="'+row['timer_default']+'">'+formatTime(parseTime(row['timer']))+'</span>';
                }
                else{
                    return '<span class="timers" data-start-time="'+row['timer']+'">'+formatTime(parseTime(row['timer']))+'</span>';
                    //return row['timer'];
                }
                
            }
        },
        {
            "data": "action",
            render: function(data, type, row) {
                if (type === 'display') {
                    var btn = '<div class="dropdown d-inline-block"><button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-fill align-middle"></i></button><ul class="dropdown-menu dropdown-menu-end">';

                    @can(['edit_pasting','delete_pasting','read_pasting', 'change_status_pasting'])

                    btn += '<li><a class="dropdown-item edit-item-btn" onclick="updateTimer(\'{{ route('admin.job-card.timer.content') }}\',{machine:10, id:'+row['id']+',job_card_id:'+row['job_card_id']+'})" href="javascript:void(0);"><i class="ri-alarm-line align-bottom me-2 text-muted"></i> Timer</a></li>';

                    // @can('edit_pasting')
                    //     btn+='<li><a class="dropdown-item edit-item-btn" onclick="updateData(\'{{ route('admin.printing.changeStatus') }}\',{status:3,id:'+row['id']+',job_card_id:'+row['job_card_id']+'})"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Send To Warehouse</a></li>';
                    // @endcan

                    @can('change_status_pasting')
                        if (row['timer_status'] == 2) {
                            if(row['status_id'] == 1){
                                btn+='<li><a onclick="updateData(\'{{ route('admin.pasting.changeStatus') }}\',{user_id:'+row['user_id']+', status:1,id:'+row['id']+',job_card_id:'+row['job_card_id']+'})" class="dropdown-item edit-item-btn" href="javascript:void(0);"><i class="ri-check-double-line align-bottom me-2 text-muted"></i> Completed</a></li>';
                            }
                            if(row['status_id'] == 5){
                                btn+='<li><a onclick="updateData(\'{{ route('admin.pasting.changeStatus') }}\',{user_id:'+row['user_id']+', status:2,id:'+row['id']+',job_card_id:'+row['job_card_id']+'})" class="dropdown-item edit-item-btn" href="javascript:void(0);"><i class="ri-check-double-line align-bottom me-2 text-muted"></i> Cancel</a></li>';
                            }
                        }
                    @endcan

                    // @can('delete_pasting')
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


var table = table2;

    // Object to hold interval IDs for each row
    var intervalIds = {};

    // Function to format time in hh:mm:ss
    function formatTime(seconds) {
        var hours = Math.floor(seconds / 3600);
        var minutes = Math.floor((seconds % 3600) / 60);
        var remainingSeconds = seconds % 60;
        return (hours < 10 ? "0" : "") + hours + ":" + 
               (minutes < 10 ? "0" : "") + minutes + ":" + 
               (remainingSeconds < 10 ? "0" : "") + remainingSeconds;
    }

    // Function to parse time in hh:mm:ss to seconds
    function parseTime(time) {
        console.log('Time', time);
        var parts = time.split(':');
        var hours = parseInt(parts[0], 10);
        var minutes = parseInt(parts[1], 10);
        var seconds = parseInt(parts[2], 10);
        return (hours * 3600) + (minutes * 60) + seconds;
    }

    // Function to start timer for each row
    function startTimer(row) {
        var timerCell = $(row).find('.timer');
        
        if(timerCell.length > 0){
            var startTime = parseTime(timerCell.attr('data-start-time'));

            // If timer is already running, do not start another one
            if (timerCell.data('intervalId')) return;

            // Update the display to show the starting time
            timerCell.text(formatTime(startTime));

            // Set interval and store the ID
            var intervalId = setInterval(function() {
                startTime++;
                timerCell.text(formatTime(startTime));
                timerCell.attr('data-start-time', formatTime(startTime)); // Update data-start-time attribute
            }, 1000);

            // Store interval ID in the cell's data attribute
            timerCell.data('intervalId', intervalId);
        }
    }

    // Start timer for each row on page load
    $('#datatable tbody tr').each(function() {
        startTimer(this);
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

    $('body').on('change', '.ready-quantity', function(){
        if (confirm('Are You Confirm Update Ready Quantity.')){  
        var ready_quantity = $(this).val();
        var id = $(this).attr('data-id');
        var user_id = $(this).attr('data-user');
        if(ready_quantity > 0){
            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: '{{ route('admin.pasting.update', '') }}/'+id,
                data: { 'ready_box': null, 'user_id':user_id, 'ready_quantity': ready_quantity, '_method': 'PUT', '_token': '{{ csrf_token() }}' },
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
                    console.log('error', response.class)
                    
                    var audio = document.getElementById('success-sound');
                    audio.play();
                    

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
    } 
    var ready_quantity = $(this).val('');
    return false;
    });


    $('body').on('change', '.ready-box', function(){
        var ready_box = $(this).val();
        var id = $(this).attr('data-id');
        var user_id = $(this).attr('data-user');
        if(ready_box != ''){
            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: '{{ route('admin.pasting.update', '') }}/'+id,
                data: { 'ready_quantity': null, 'user_id':user_id, 'ready_box': ready_box, '_method': 'PUT', '_token': '{{ csrf_token() }}' },
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