@extends('admin.layouts.master')
@push('links')
<style type="text/css">
    #datatable tbody tr td p {
    border-bottom: 1px solid #aaa;
    margin: 0 -5px;
    padding: 5px;
}
#datatable tbody tr td p:last-child {
    border-bottom: none;
    padding-bottom: 0;
}
#datatable tbody tr td p:first-child {
    padding-top: 0;
}

.select-mediatype {
    position: absolute!important;
    bottom: 10px!important;
}
.remove-planning{
    display: block;
    width: 16px;
    height: 16px;
    padding: 0;
    line-height: 0;
    text-align: center;
    border-radius: 50%;
    color: #f06548;
    background-color: #f06548;
    border-color: #f06548;
    cursor: pointer;
}
.remove-planning i {
    color: #fff;
    line-height: 16px;
    display: block;
    text-align: center;
}
p.carton-list {
    display: flex;
    gap: 8px;
}
</style>
@endpush




@section('main')



        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
                    @can('add_designing')
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
                            <table id="datatable" class="datatable table table-bordered table-hover border-secondary nowrap align-middle  table-sm" style="width:100%">
                                <thead class="gridjs-thead">
                                <tr>
                                    <th style="width:12px">Si</th>
                                    <th style="width:100px;">Job Card</th>
                                    <th style="max-width:150px;">Set/Doc No.</th>
                                    <th>Client Name</th>
                                    <th>Carton Name</th>
                                    <th>Quantity</th>
                                    <th>UPS</th>
                                    <th style="max-width:150px;">Color</th>
                                    <th style="width:70px;">Dye Details/UPS</th>
                                    <th  style="width:80px;">Sheet Size</th>
                                    <th>Total Sheet</th>
                                    <th>Paper Type</th>
                                    <th>Status</th>
                                    @can(['edit_designing','delete_designing', 'read_designing'])
                                      <th style="width:40px;">Action</th>
                                    @endcan
                                </tr>
                            </thead>
                           
                            </table>
                        </div>
                    </div>
                </div>
            </div><!--end col-->
        </div><!--end row-->


{!! Form::open(['method' => 'POST', 'route' => 'admin.job-card.attachement.store', 'class' => 'form-horizontal', 'id'=>'attachementForm']) !!}

<div class="offcanvas offcanvas-bottom" tabindex="-1" id="getMediaGile" aria-labelledby="getMediaGileLabel" style="min-height:46vh;">
    <div class="offcanvas-header border-bottom">
        <h5 class="offcanvas-title" id="getMediaGileLabel">Job Card No.: <span></span></h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">

       


        <div class="row gallery-light" id="gallery">



        </div>
        
        <div class="media-area" file-name="file" style="max-width:80%;float:left;">
            <div class="media-file-value file-arrange"></div>
            <div class="media-file file-arrange"></div>
            <p><br></p>
            <a class="btn-sm btn btn-dark btn-label select-mediatype " href="javascript:void(0);" mediatype='multiple' onclick="loadMediaFiles($(this))">
                <i class="bx bx-plus label-icon align-middle fs-16 me-2"></i> Select Media File
            </a>
        </div>

    </div>

    <div class="offcanvas-foorter border-top py-1 px-3 text-center">
        <div class="btn-group" style="max-width:20%;float:right;">
            {!! Form::button("Save Attachement", ['class' => 'btn btn-success btn-border', 'onClick'=>'jobCardAttachment(this)']) !!}
        </div>
    </div>

</div>
<input type="hidden" name="job_card_id" value="" class="jobCardIdName">
{!! Form::close() !!}

@endsection


@push('scripts')

<script type="text/javascript">
$(document).ready(function(){
    var table2 = $('#datatable').DataTable({
    "ordering": false,
    "processing": true,
    "serverSide": true,
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
        { "data": "job_card_no" },
         { "data": "set_no",
            render: function(data, type, row) {
                if (row['status_id'] == 5) {
                    return '<input readonly="readonly" type="text" data-id="'+row['job_card_id']+'" class="form-control form-control-sm set-no-input" name="set_no" value="'+row['set_no']+'" placeholder="Set No." style="max-width:150px;">';
                } else{
                    return '<input type="text" data-id="'+row['job_card_id']+'" class="form-control form-control-sm set-no-input" name="set_no" value="'+row['set_no']+'" placeholder="Set No." style="max-width:150px;">';
                }
            }
        },
        { "data": "client" },
        { "data": "carton_name" },
        { "data": "quantity" },
        { "data": "ups" },
        { "data": "color",
            render: function(data, type, row) {
                if (row['status_id'] == 5) {
                    return '<input readonly="readonly" type="text" data-id="'+row['job_card_id']+'" class="form-control form-control-sm color-input" name="color" value="'+row['color']+'" placeholder="Color" style="max-width:150px;">';
                }else{
                    return '<input type="text" data-id="'+row['job_card_id']+'" class="form-control form-control-sm color-input" name="color" value="'+row['color']+'" placeholder="Color" style="max-width:150px;">';
                }
            }
        },
        { "data": "dye_details" },
        { "data": "sheets_size",
            render: function(data, type, row) {
                if (row['status_id'] == 5) {
                     return '<input readonly="readonly" type="text" data-job="'+row['job_card_id']+'" class="form-control form-control-sm sheets-size-input" name="sheet_size" value="'+row['sheets_size']+'" placeholder="Sheet Size" style="max-width:80px;">';
                } else{
                    return '<input type="text" data-job="'+row['job_card_id']+'" class="form-control form-control-sm sheets-size-input" name="sheet_size" value="'+row['sheets_size']+'" placeholder="Sheet Size" style="max-width:80px;">';
                }
            }
        },
        { "data": "total_sheet",
            render: function(data, type, row) { 
                if (row['status_id'] == 5) { 
                     return '<input readonly="readonly" type="text" data-job="'+row['job_card_id']+'" class="form-control form-control-sm total-sheet-input" name="total_sheet" value="'+row['total_sheet']+'" placeholder="Total Sheets" style="max-width:80px;">';   
                } else{
                     return '<input type="text" data-job="'+row['job_card_id']+'" class="form-control form-control-sm total-sheet-input" name="total_sheet" value="'+row['total_sheet']+'" placeholder="Total Sheets" style="max-width:80px;">';   
                }         
                            
            }
        },
        { "data": "paper_type" },
        { "data": "status" },
        {
            "data": "action",
            render: function(data, type, row) {
                if (type === 'display') {
                    var btn = '<div class="dropdown d-inline-block"><button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="ri-more-fill align-middle"></i></button><ul class="p-0 dropdown-menu dropdown-menu-end">';

                    @can(['edit_designing','delete_designing','read_designing'])


                    @can('edit_designing')
                        btn+='<li><a class="dropdown-item edit-item-btn attachFile" href="javascript:void(0);" data-jobid="'+row['job_card_id']+'" data-jobno="'+row['job_card_no']+'"><i class="ri-image-add-line align-bottom me-2 text-muted"></i> Attachement</a></li>';

                        btn+='<li><a class="dropdown-item edit-item-btn" href="{{ route('admin.planning.job-card','') }}/'+row['job_card_id']+'"><i class="ri-add-line align-bottom me-2 text-muted"></i> Add More Carton</a></li>';
                        if(row['status_id'] != 5){
                            btn+='<li><a class="dropdown-item edit-item-btn" href="javascript:void(0);" onclick="updateData(\'{{ route('admin.designing.changeStatus') }}\',{job_card_id:'+row['job_card_id']+',status:5})"><i class="ri-check-double-fill me-2 text-muted"></i>Make it Completed</a></li>';
                        }else{
                            btn+='<li><a class="dropdown-item edit-item-btn" href="javascript:void(0);" onclick="updateData(\'{{ route('admin.designing.changeStatus') }}\',{job_card_id:'+row['job_card_id']+',status:2})"><i class="ri-edit-2-line me-2 text-muted"></i>Make it Editable</a></li>';
                        }
                    @endcan

                    // @can('delete_designing')
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

    var zoomImageFile = document.getElementById('getMediaGile')
    const openCanvas = new bootstrap.Offcanvas(zoomImageFile)
    $('body').on('click', '.attachFile', function(){
        var jobCardId = $(this).attr('data-jobid');
        var jobCardNo = $(this).attr('data-jobno');
        $('#getMediaGileLabel span').html(jobCardNo);
        $('.jobCardIdName').val(jobCardId);
        $('.media-file').html('');
        var token = '{{ csrf_token() }}';
        $.ajax({

            type: "POST",
            url: "{{ route('admin.job-card.zoom-image','') }}/"+jobCardId,
            data: {'id':jobCardId,'_token':token},
           
            success: function(response) {
                $("#gallery").html(response);
                lightbox.reload();
                openCanvas.show();
            },
            error:function(error){
                handleErrors(error.responseJSON);

            }
        });

    });



    $('body').on('change', '.total-sheet-input', function(){
        var jobCardId = $(this).attr('data-job');
        var totalSheet = $(this).val();
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: '{{ route('admin.designing.update.total-sheet') }}',
            data: { 'job_card_id':jobCardId, 'total_sheet':totalSheet, '_method': 'POST', '_token': '{{ csrf_token() }}' },
            success: function (response) {
                if (response.error === true) {
                    Toastify({
                        text: response.message,
                        duration: 3000,
                        close: true,
                        gravity: "top",
                        position: "right",
                        stopOnFocus: true,
                        className: "error",
                    }).showToast();
                }else{
                    $('.datatable').DataTable().draw('page');
                }
            },
            error: function (error) {
                // Handle error
            }
        });
    });

    $('body').on('change', '.sheets-size-input', function(){
        var jobCardId = $(this).attr('data-job');
        var sheetSize = $(this).val();
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: '{{ route('admin.designing.update.sheet-size') }}',
            data: { 'job_card_id': jobCardId, 'sheet_size':sheetSize, '_method': 'POST', '_token': '{{ csrf_token() }}' },
            success: function (response) {
                if (response.error === true) {
                    Toastify({
                        text: response.message,
                        duration: 3000,
                        close: true,
                        gravity: "top",
                        position: "right",
                        stopOnFocus: true,
                        className: "error",
                    }).showToast();
                }else{
                    $('.datatable').DataTable().draw('page');
                }
            },
            error: function (error) {
                // Handle error
            }
        });
    });


    $('body').on('change', '.ups-input', function(){
        var po_item = $(this).attr('data-id');
        var ups = $(this).val();
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: '{{ route('admin.designing.update.ups') }}',
            data: { 'po_item':po_item, 'ups':ups, '_method': 'POST', '_token': '{{ csrf_token() }}' },
            success: function (response) {
                if (response.error === true) {
                    Toastify({
                        text: response.message,
                        duration: 3000,
                        close: true,
                        gravity: "top",
                        position: "right",
                        stopOnFocus: true,
                        className: "error",
                    }).showToast();
                }else{
                    $('.datatable').DataTable().draw('page');
                }
            },
            error: function (error) {
                // Handle error
            }
        });
    });

    $('body').on('change', '.color-input', function(){
        var job_card_id = $(this).attr('data-id');
        var color = $(this).val();
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: '{{ route('admin.designing.update.color') }}',
            data: { 'job_card_id':job_card_id, 'color':color, '_method': 'POST', '_token': '{{ csrf_token() }}' },
            success: function (response) {
                
                Toastify({
                    text: response.message,
                    duration: 3000,
                    close: true,
                    gravity: "top",
                    position: "right",
                    stopOnFocus: true,
                    className:response.class,
                }).showToast();
          
                $('.datatable').DataTable().draw('page');
                
            },
            error: function (error) {
                // Handle error
            }
        });
    });


    $('body').on('change', '.set-no-input', function(){
        var job_card_id = $(this).attr('data-id');
        var set_no = $(this).val();
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: '{{ route('admin.designing.update.setno') }}',
            data: { 'job_card_id':job_card_id, 'set_no':set_no, '_method': 'POST', '_token': '{{ csrf_token() }}' },
            success: function (response) {
                
                Toastify({
                    text: response.message,
                    duration: 3000,
                    close: true,
                    gravity: "top",
                    position: "right",
                    stopOnFocus: true,
                    className:response.class,
                }).showToast();
          
                $('.datatable').DataTable().draw('page');
                
            },
            error: function (error) {
                // Handle error
            }
        });
    });



});

function jobCardAttachment(element){
        var button = new Button(element);
        button.process();
        clearErrors();
        var requestData,otpdata,data;

        formData = new FormData(document.querySelector('#attachementForm'));

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url:'{{ route('admin.job-card.attachement.store') }}',
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
                document.querySelector('#attachementForm').reset();
                $('.datatable').DataTable().draw('page');
                button.normal();
                $('#getMediaGile').offcanvas('hide');
            },
            error:function(error){
                Toastify({
                    text: error.message,
                    duration: 3000,
                    close: true,
                    gravity: "top", // `top` or `bottom`
                    position: "right", // `left`, `center` or `right`
                    stopOnFocus: true, // Prevents dismissing of toast on hover
                    className: error.class,

                }).showToast();
                //toastr.error(error.responseJSON.message); 
                button.normal();
                handleErrors(error.responseJSON);
                
            }
        });
    }


    $('body').on('click', '.remove-planning', function(){
        var po_item_id = $(this).attr('data-id');
        
        if (confirm('Are you sure to remove this item')){ 
            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: '{{ route('admin.designing.destroy', '') }}/'+po_item_id,
                data: { 'po_item_id': po_item_id, '_method': 'DELETE', '_token': '{{ csrf_token() }}' },
                success: function (response) {
                    Toastify({
                        text: response.message,
                        duration: 3000,
                        close: true,
                        gravity: "top",
                        position: "right",
                        stopOnFocus: true,
                        className: response.message,
                    }).showToast();
            
                    $('.datatable').DataTable().draw('page');
                    
                },
                error: function (error) {
                    // Handle error
                }
            });
        }


    });
    </script>

@endpush