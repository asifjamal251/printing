@extends('admin.layouts.master')

@push('links')

<link rel="stylesheet" href="{{asset('admin-assets/libs/flatpickr/flatpickr.min.css')}}"> 
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
@if(Auth::guard('admin')->user()->role_id == 1 || Auth::guard('admin')->user()->role_id == 2)

<div class="card">
    <div class="card-content">
        <div class="card-body">
            <div class="d-flex justify-content-between align-items-center">
                <div class="" style="width:20%;">
                    <div class="form-group m-0 {{ $errors->has('status') ? ' has-error' : '' }}" style="margin-bottom: 0">
                        {!! Form::select('status',[1=>'Complated',2=>'Inprocess'], 2, ['id' => 'status', 'class' => 'form-control form-control-sm','placeholder'=>'All Status','onChange'=>'status()']) !!}
                        <small class="text-danger">{{ $errors->first('status') }}</small>
                    </div>
                </div>


                <div style="width:40%;float:right;">
                    <div class="w-100 d-flex justify-content-between">
                        <div style="width:40%">
                            <div class="form-group m-0{{ $errors->has('fromDate') ? ' has-error' : '' }}">
                                {!! Form::text('fromDate', null, ['id'=>'fromDate','class' => 'dateSelector form-control form-control-sm datePic', 'placeholder' => 'Date From','data-provide'=>'datepicker','data-date-autoclose'=>'true']) !!}
                                <small class="text-danger">{{ $errors->first('fromDate') }}</small>
                            </div>
                        </div>
                        <div style="width:40%;margin-left:3px;">
                            <div class="form-group m-0{{ $errors->has('toDate') ? ' has-error' : '' }}">
                                {!! Form::text('toDate', null, ['id'=>'toDate','class' => 'dateSelector form-control form-control-sm datePic', 'placeholder' => 'Date To','data-provide'=>'datepicker','data-date-autoclose'=>'true']) !!}
                                <small class="text-danger">{{ $errors->first('toDate') }}</small>
                            </div>
                        </div>

                        <div style="width:20%; margin-left:12px;">
                            <div class="btn-group">
                                {!! Form::submit('Date Filter', ['class' => 'btn btn-soft-secondary waves-effect waves-light btn-sm','onClick'=>'dateFilter(this)']) !!}
                                {!! Form::button('X', ['class' => 'btn btn-soft-danger waves-effect waves-light btn-sm','onClick'=>'clerFilter(this)']) !!}
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
@endif

<div class="card">

    <div class="card-content">

        <div class="card-body">

            <div class="row my-1">

                <div class="col-lg-12 col-12">

                    <table id="dataTableAjax" class="table display dataTableAjax table-striped table-bordered scroll-horizontal dataTable no-footer" >

                        <thead>

                            <tr>
                                <th width="2%">Si</th>

                                <th>Job No.</th>

                                <th>Coating</th>

                                <th>Cutsize</th>

                                <th>Total Sheet</th>

                                <th>File</th>

                                @can(['edit_dominant','delete_dominant','browse_dominant','assign_dominant'])

                                    <th width="13%">Action</th>

                                @endcan

                                

                            </tr>

                        </thead>

                        

                    </table>

                </div>

            </div>

        </div>

             

    </div>

</div>

@endsection

@push('scripts')

<script type="text/javascript">

  //alert('hello');  

            var table2 = $('#dataTableAjax').DataTable({

                "drawCallback": function( settings ) {


                    $('html, body').animate({

                        scrollTop: $("body").offset().top,

                    }, 'slow');
                    lightbox.reload();

                },

                "processing": true,

                "serverSide": true,

                //"scrollX": true,

                "lengthMenu": [30, 50, 100,200],

                'ajax': {

                    'url': '{{ route('admin.'.request()->segment(2).'.index') }}',

                    'data': function(d) {

                        d._token = '{{ csrf_token() }}';

                        d.status = $('#status').val();

                        d.fromDate = $('#fromDate').val();

                        d.toDate = $('#toDate').val();

                        d._method = 'PATCH';

                    }

                },

                fnRowCallback: function( nRow, aData, iDisplayIndex, iDisplayIndexFull ){
                    if ( aData['priority'] == 1 ){
                        $('td', nRow).css('background-color', '#f3cfbd');
                    } 
                },

                "columns": [
                { "data": "sn" },

                    { "data": "job_no" },

                    { "data": "coating" },

                    { "data": "cutsize" },

                    { "data": "total_sheet" },

                    { "data": "file" },

                    @can(['edit_dominant','delete_dominant','read_dominant','change_status_dominant'])

                    {

                        "data": "action",

                        render: function(data, type, row) {

                            if (type === 'display') {

                                var btn = '';

                                if( row['fromDate'] != null && row['toDate'] != null){

                                   return btn+=row['updated_at'];

                                } else{



                                @can('change_status_dominant')

                                

                                if( row['changeStatus']=='1'){

                                    btn+='<button type="button" onclick="updateData(\'{{ route('admin.'.request()->segment(2).'.changeStatus') }}\',{id:'+row['id']+',project_id:'+row['project_id']+',status:3})" class="btn btn-icon waves-effect waves-light btn-outline-warning btn-xs" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Cancel"><i class="mdi mdi-close-box-outline"></i></button> ';

                                }

                                if( row['changeStatus']=='2' || row['changeStatus']=='3' ){

                                    btn+='<button type="button" onclick="updateData(\'{{ route('admin.'.request()->segment(2).'.changeStatus') }}\',{id:'+row['id']+',project_id:'+row['project_id']+',status:1})" class="btn btn-icon waves-effect waves-light btn-outline-info btn-xs" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Assign"><i class="mdi mdi-checkbox-marked-outline"></i></button> ';

                                }



                                @endcan



                                @can('read_dominant')

                                btn += '<a class="btn btn-icon waves-effect waves-light btn-outline-success btn-xs" href="{{ request()->url() }}/' + row['id'] + '" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="View"><i class="fa fa-eye"></i></a>&nbsp;';

                                @endcan



                                @can('edit_dominant')

                                    btn+='<a class="btn btn-xs btn-social-icon btn-outline-secondary" href="'+window.location.href+'/'+row['id']+'/edit" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Edit"><i class="fa fa-pencil-square-o"></i></a> ';

                                @endcan

                                @can('delete_dominant')

                                    btn += '<button type="button" onclick="deleteAjax(\''+window.location.href+'/'+row['id']+'\')" class="btn btn-xs btn-social-icon btn-outline-danger"><i class="fa fa-trash" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Delete"></i></button>&nbsp;';

                                @endcan

                               

                                return btn;

                            }

                            }

                            return ' ';

                        },

                } @endcan ]

            });



            // table2.on('page.dt', function() {

            //   $('html, body').animate({

            //     scrollTop: $("body").offset().top,

            //    }, 'slow');

            // });





            function company(){

                table2.draw();

            }

            function status(){

                table2.draw();

            }

            

    </script>

<script src="{{asset('admin-assets/bootstrap-datepicker/js/bootstrap-datepicker.min.js')}}"></script>

<script type="text/javascript">

$('.datePic').datepicker({

    format: 'dd-mm-yyyy',

    todayHighlight: true,

    autoClose:true,

});



function dateFilter(element) {

    var fromDate = $('#fromDate');

    var toDate = $('#toDate');

    if(fromDate != '' && toDate != ''){

        table2.draw(); 

        //$(table2.column(5).header()).text('Date');

    } else{

        table2.draw();

        //$(table2.column(5).header()).text('Action');

    }

     

}



function clerFilter(element) {

    $('#fromDate').val('');

    $('#toDate').val('');

    table2.draw();

}

 </script>
<script type="text/javascript" src="{{asset('admin-assets/libs/flatpickr/flatpickr.js')}}"></script>
<script type="text/javascript">

$(".dateSelector").flatpickr({
        dateFormat: "d F Y",
    });

 </script>
@endpush