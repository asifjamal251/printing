@extends('admin.layouts.master')
@push('links')

@endpush


@section('main')



<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>

        </div>
    </div>
</div>
<!-- end page title -->


<div class="" style="max-width:600px;margin:0 auto;">
    <div class="card">

        <div class="card-body">

            {!! Form::open(['method' => 'POST', 'route' => ['admin.job-card.user.assign', $job_card->id], 'class' => 'form-horizontal']) !!}
            <div class="row">
                <div class="col-md-6 col-sm-12">
                    <div class="form-group{{ $errors->has('printing') ? ' has-error' : '' }}">
                        {!! Form::label('printing', 'Printing') !!}
                        {!! Form::select('printing', $user->where('role_id', 6)->pluck('name', 'id'), $job_card->jobCardUser->printing, ['id' => 'printing', 'class' => 'form-control', 'placeholder' => 'Choose Printing Oprater']) !!}
                        <small class="text-danger">{{ $errors->first('printing') }}</small>
                    </div>
                </div>


                <div class="col-md-6 col-sm-12">
                    <div class="form-group{{ $errors->has('coating') ? ' has-error' : '' }}">
                        {!! Form::label('coating', 'Coating') !!}
                        {!! Form::select('coating', $user->where('role_id', 7)->pluck('name', 'id'), $job_card->jobCardUser->coating, ['id' => 'coating', 'class' => 'form-control', 'placeholder' => 'Choose Coating Oprater']) !!}
                        <small class="text-danger">{{ $errors->first('coating') }}</small>
                    </div>
                </div>



                <div class="col-md-6 col-sm-12">
                    <div class="form-group{{ $errors->has('dye_cutting') ? ' has-error' : '' }}">
                        {!! Form::label('dye_cutting', 'Dye Cutting') !!}
                        {!! Form::select('dye_cutting', $user->where('role_id', 12)->pluck('name', 'id'), $job_card->jobCardUser->dye_cutting, ['id' => 'dye_cutting', 'class' => 'form-control', 'placeholder' => 'Choose Dye Cutting Oprater']) !!}
                        <small class="text-danger">{{ $errors->first('dye_cutting') }}</small>
                    </div>
                </div>


                <div class="col-md-6 col-sm-12">
                    <div class="form-group{{ $errors->has('pasting') ? ' has-error' : '' }}">
                        {!! Form::label('pasting', 'Pasting') !!}
                        {!! Form::select('pasting', $user->where('role_id', 13)->pluck('name', 'id'), $job_card->jobCardUser->pasting, ['id' => 'pasting', 'class' => 'form-control', 'placeholder' => 'Choose Pasting Oprater']) !!}
                        <small class="text-danger">{{ $errors->first('pasting') }}</small>
                    </div>
                </div>

                <div class="col-md-12 col-sm-12">
                    {!! Form::submit('Save User Assign Data', ['class' => 'btn btn-primary d-block w-100']) !!}
                </div>


            </div>
            
            {!! Form::close() !!}
        </div>

    </div>
</div>
@endsection


@push('scripts')

@endpush