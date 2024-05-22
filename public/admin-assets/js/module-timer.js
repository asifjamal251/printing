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