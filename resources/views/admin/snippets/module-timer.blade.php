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


@push('scripts')
<script>
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
    var days = Math.floor(seconds / 86400);
    var hours = Math.floor((seconds % 86400) / 3600);
    var minutes = Math.floor((seconds % 3600) / 60);
    var remainingSeconds = seconds % 60;

    var formattedTime = "";
    if (days > 0) {
        formattedTime += days + "d ";
    }
    if (hours > 0 || days > 0) {
        formattedTime += hours + "h ";
    }
    if (minutes > 0 || hours > 0 || days > 0) {
        formattedTime += minutes + "m ";
    }
    formattedTime += remainingSeconds + "s";

    return formattedTime;
}



$(document).ready(function() {
    
});



</script>

@endpush