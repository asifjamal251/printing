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

                        <div class="card-preloader"><div class="card-status"><div class="spinner-grow text-danger"><span class="visually-hidden">Loading...</span></div></div></div>

                        <div class="table-responsive">
                        <table id="datatable" class="datatable table-sm border-secondary table-hover table table-bordered nowrap align-middle" style="width:100%">
                            <thead class="gridjs-thead">
                            <tr>
                                <th style="width:12px">Si</th>
                                <th  style="width:120px">Oprator</th>
                                <th>Job No.</th>
                                <th>Carton</th>
                                <th>Set No.</th>
                                <th>Paper</th>
                                <th>Required Sheets</th>
                                <th>Paper Divide</th>
                                <th>Sheet Size</th>
                                <th>Total Sheet</th>
                                <th>Counter</th>
                                <th>File</th>
                                <th>Status</th>
                                <th>Timer</th>
                                @can(['edit_cutting','delete_cutting', 'read_cutting'])
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


<!-- View file (e.g., tasks.blade.php) -->

{{-- <div id="stopwatch">00:00:00</div>
<button id="start">Start</button>
<button id="stop">Stop</button>
<button id="reset">Reset</button>

<script>
    let timer;
    let elapsedSeconds = 0;
    let running = false;

    function updateTime() {
        const hours = Math.floor(elapsedSeconds / 3600);
        const minutes = Math.floor((elapsedSeconds % 3600) / 60);
        const seconds = elapsedSeconds % 60;
        document.getElementById('stopwatch').innerText = 
            `${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
    }

    function startTimer() {
        timer = setInterval(() => {
            elapsedSeconds++;
            updateTime();
        }, 1000);
    }

    function stopTimer() {
        clearInterval(timer);
    }

    function resetTimer() {
        elapsedSeconds = 0;
        updateTime();
    }

    document.getElementById('start').addEventListener('click', () => {
        if (!running) {
            startTimer();
            running = true;
        }
    });

    document.getElementById('stop').addEventListener('click', () => {
        if (running) {
            stopTimer();
            running = false;
        }
    });

    document.getElementById('reset').addEventListener('click', () => {
        stopTimer();
        resetTimer();
        running = false;
    });
</script> --}}

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
                    {!! Form::select('oprator', App\Models\ModuleUser::where('module_id', 1)->pluck('name', 'id'), null, ['id' => 'oprator', 'class' => 'form-control form-control-sm', 'placeholder' => 'Choose Oprator']) !!}
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



<!-- timerModel Modal -->
<div class="modal fade" id="timerModel" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <form id="timerForm">
            @csrf
            <div class="modal-content">

                <div class="modal-header bg-light py-2">
                    <h5 class="modal-title" id="myModalLabel">Timer</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
                </div>


                <div class="modal-body p-3" id="appendData">
                    <div class="form-group{{ $errors->has('work') ? ' has-error' : '' }}">
                        {!! Form::label('work', 'Work') !!}
                        {!! Form::text('work', null, ['class' => 'form-control work-time', 'placeholder' => '0 Hr', 'readonly']) !!}
                        <small class="text-danger">{{ $errors->first('work') }}</small>
                    </div>
                    <div class="form-group{{ $errors->has('pause') ? ' has-error' : '' }}">
                        {!! Form::label('pause', 'Pause') !!}
                        {!! Form::text('pause', null, ['class' => 'form-control pause-time', 'placeholder' => '0 Hr', 'readonly']) !!}
                        <small class="text-danger">{{ $errors->first('pause') }}</small>
                    </div>
                    <div class="form-group{{ $errors->has('total_time') ? ' has-error' : '' }}">
                        {!! Form::label('total_time', 'Total Time') !!}
                        {!! Form::text('total_time', null, ['class' => 'form-control total-time', 'placeholder' => 'Total Time']) !!}
                        <small class="text-danger">{{ $errors->first('total_time') }}</small>
                    </div>
                    <div class="m-0 text-start form-group{{ $errors->has('remarks') ? ' has-error' : '' }}">
                        {!! Form::label('remarks', 'Remarks') !!}
                        {!! Form::textarea('remarks', null, ['class' => 'form-control remarks', 'placeholder' => 'Remarks', 'rows'=>3]) !!}
                        <small class="text-danger">{{ $errors->first('remarks') }}</small>
                    </div>

                    {!! Form::hidden('id', null, ['class' => 'timer-id']) !!}
                    {!! Form::hidden('job_card_id', null, ['class' => 'timer-job-card-id']) !!}
                </div>
                

                <div class="modal-footer bg-light py-2 justify-content-center">
                    <div class="hstack gap-2 justify-content-center">
                        <button class="btn btn-sm btn-success startTimer" onclick="startTimer(this)"><i class="ri-links-line align-bottom"></i> Start</button>
                        <button class="btn btn-sm btn-warning pauseTimer" onclick="pauseTimer(this)"><i class="ri-links-line align-bottom"></i> Pause</button>
                        <button class="btn btn-sm btn-warning resumeTimer" onclick="resumeTimer(this)"><i class="ri-links-line align-bottom"></i> Resume</button>
                        <button class="btn btn-sm btn-danger stopTimer" onclick="stopTimer(this)"><i class="ri-links-line align-bottom"></i> Stop</button>
                    </div>
                </div>

            </div>
        </form>
    </div>
</div>

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
        { "data": "carton_name" },
        { "data": "set_no" },
        { "data": "paper" },
        { "data": "total_sheet" },
        { "data": "divide" },
        { "data": "sheet_size" },
        { "data": "required_sheet" },
        { "data": "cutting_sheet",
            render: function(data, type, row) {
                if(row['status_id'] == 5){
                    return row['required_sheet_total'];
                }else{
                    return '<input data-total="'+row['required_sheet_need']+'"  data-id="'+row['id']+'" type="text" class="form-control form-control-sm cutting-sheet-input" name="cutting_sheets[]" value="'+row['required_sheet_total']+'" placeholder="Cutting Sheets" style="max-width:100px;">';
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

                    @can(['edit_cutting','delete_cutting','read_cutting'])

                        btn+='<li><a class="dropdown-item edit-item-btn" onclick="updateTimer(\'{{ route('admin.job-card.timer.content') }}\',{machine:1, id:'+row['id']+',job_card_id:'+row['job_card_id']+'})" href="javascript:void(0);"><i class="ri-check-double-line align-bottom me-2 text-muted"></i> Timer</a></li>';

                    @can('change_status_cutting')
                        if(row['status_id'] == 2){
                            btn+='<li><a onclick="updateData(\'{{ route('admin.cutting.changeStatus') }}\',{status:1, id:'+row['id']+',job_card_id:'+row['job_card_id']+'})" class="dropdown-item edit-item-btn" href="javascript:void(0);"><i class="ri-check-double-line align-bottom me-2 text-muted"></i> Completed</a></li>';
                        }else{
                            btn+='<li><a onclick="updateData(\'{{ route('admin.cutting.changeStatus') }}\',{status:2, id:'+row['id']+',job_card_id:'+row['job_card_id']+'})" class="dropdown-item edit-item-btn" href="javascript:void(0);"><i class="bx bx-x align-bottom me-2 fs-24 text-muted"></i> Cancel</a></li>';
                        }
                    @endcan


                    // @can('edit_cutting')
                    //     btn+='<li><a class="dropdown-item edit-item-btn" href="'+window.location.href+'/'+row['id']+'/edit"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Edit</a></li>';
                    // @endcan

                    // @can('delete_cutting')
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
    $('body').on('change', '.cutting-sheet-input', function(){
        $('.card-preloader').addClass('show');
        var cutting_sheets = parseInt($(this).val());
        var total_sheets = parseInt($(this).attr('data-total'));
        var id = $(this).attr('data-id');
            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: '{{ route('admin.cutting.update', '') }}/'+id,
                data: { 'cutting_sheets': cutting_sheets, '_method': 'PUT', '_token': '{{ csrf_token() }}' },
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
                    setTimeout(function(){
                        $('.card-preloader').removeClass('show');
                    }, 500);
                },
                error: function (error) {
                    // Handle error
                }
            });
    });
});


$('body').on('change', '.selectOprator', function(){
    $('.card-preloader').addClass('show');
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
            setTimeout(function(){
                $('.card-preloader').removeClass('show');
            }, 500);
        },
        error:function(error){
            setTimeout(function(){
                $('.card-preloader').removeClass('show');
            }, 500);
        }
    });

});


function startTimer(element){
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;

    formData = new FormData(document.querySelector('#timerForm'));

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.job-card.timer.start') }}',
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
            $('.datatable').DataTable().draw('page');
            if(response.error == false){
                $('#timerModel').modal('hide');
            }
            button.normal();
        },
        error:function(error){
            //toastr.error(error.responseJSON.message); 
            button.normal();
            handleErrors(error.responseJSON);
            
        }
    });
}



function pauseTimer(element){
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;

    formData = new FormData(document.querySelector('#timerForm'));

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.job-card.timer.pause') }}',
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
            $('.datatable').DataTable().draw('page');
            if(response.error == false){
                $('#timerModel').modal('hide');
            }
            button.normal();
        },
        error:function(error){
            //toastr.error(error.responseJSON.message); 
            button.normal();
            handleErrors(error.responseJSON);
            
        }
    });
}


function resumeTimer(element){
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;

    formData = new FormData(document.querySelector('#timerForm'));

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.job-card.timer.resume') }}',
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
            $('.datatable').DataTable().draw('page');
            if(response.error == false){
                $('#timerModel').modal('hide');
            }
            button.normal();
        },
        error:function(error){
            //toastr.error(error.responseJSON.message); 
            button.normal();
            handleErrors(error.responseJSON);
            
        }
    });
}


function stopTimer(element){
    var button = new Button(element);
    button.process();
    clearErrors();
    var requestData,otpdata,data;

    formData = new FormData(document.querySelector('#timerForm'));

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url:'{{ route('admin.job-card.timer.stop') }}',
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
            $('.datatable').DataTable().draw('page');
            if(response.error == false){
                $('#timerModel').modal('hide');
            }
            button.normal();
        },
        error:function(error){
            //toastr.error(error.responseJSON.message); 
            button.normal();
            handleErrors(error.responseJSON);
            
        }
    });
}


function updateTimer(url,data={},callback=null){                     
    $.ajax({
        url:url,
        method: 'post',
        data:Object.assign({'_method':'POST','_token':'{{ csrf_token() }}'},data),
        success:function(response){
            var data = response.datas;

            if(typeof data.remarks === "undefined"){
                $('#appendData .remarks').val('');
            }else{
                $('#appendData .remarks').val(data.remarks);
            }


            if(typeof data.paused_time === "undefined"){
                $('#appendData .pause-time').val(0);
            }else{
                $('#appendData .pause-time').val(formatTime(data.paused_time));
            }


            if(typeof data.worked_time === "undefined"){
                $('#appendData .work-time').val(0);
            }else{
                $('#appendData .work-time').val(formatTime(data.worked_time));
            }


            if(typeof data.total_time === "undefined"){
                $('#appendData .total-time').val(0);
            }else{
                $('#appendData .total-time').val(formatTime(data.total_time));
            }
            
            
            

            $('.timer-id').val(data.id);
            $('.timer-job-card-id').val(data.job_card_id);
            if(data.status == 0 || typeof data.status === "undefined"){
                $('.pauseTimer').hide();
                $('.resumeTimer').hide();
                $('.stopTimer').hide();
                $('.startTimer').show();
            }

            if(data.status == 1){
                $('.startTimer').hide();
                $('.resumeTimer').hide();
                $('.stopTimer').show();
                $('.pauseTimer').show();
            }

            if(data.status == 3){
                $('.startTimer').hide();
                $('.pauseTimer').hide();
                $('.stopTimer').hide();
                $('.resumeTimer').show();
            }

            if(data.status == 2){
                $('.startTimer').hide();
                $('.pauseTimer').hide();
                $('.stopTimer').hide();
                $('.resumeTimer').hide();
            }
           
            setTimeout(function(){
                $('#timerModel').modal('show');
            }, 500)
        }
    });

}

function formatTime(seconds) {
    var hours = Math.floor(seconds / 3600);
    var minutes = Math.floor((seconds % 3600) / 60);
    var remainingSeconds = seconds % 60;

    var formattedTime = "";
    if (hours > 0) {
        formattedTime += hours + "h ";
    }
    if (minutes > 0 || hours > 0) {
        formattedTime += minutes + "m ";
    }
    formattedTime += remainingSeconds + "s";

    return formattedTime;
}

    </script>

@endpush