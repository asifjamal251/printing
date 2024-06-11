@extends('admin.layouts.master')
@push('links')

@endpush


@section('main')



<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">{{Str::title(str_replace('-', ' ', request()->segment(2)))}}</h4>
            <div class="page-title-right">
                <b>Job Card No. {{$job_card->job_card_no}}</b>
            </div>
        </div>
    </div>
</div>
<!-- end page title -->



{!! Form::open(['method' => 'POST', 'route' => ['admin.job-card.user.assign', $job_card->id], 'class' => 'form-horizontal']) !!}
<div id="kt_docs_repeater_advanced">
<div class="row">
    @if($job_card->jobCardUser->count() > 0)
    @foreach($job_card->jobCardUser as $user)
        <div class="col-md-6 col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <div class=" m-0 form-group {{$errors->has('item.'.$loop->index.'.module') ? ' has-error' : '' }}">
                                {!! Form::label('module', 'Module') !!}
                                {!! Form::select('item['.$loop->index.'][module]', App\Models\Module::where('id', $user->module_id)->pluck('name', 'id'), $user->module_id, ['class' => 'form-control', 'placeholder' => 'Choose Module']) !!}
                                <small class="text-danger">{{ $errors->first('item.'.$loop->index.'.module') }}</small>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-12">
                            <div class=" m-0 form-group {{$errors->has('item.'.$loop->index.'.module_machine') ? ' has-error' : '' }}">
                                {!! Form::label('module_machine', 'Module Machine') !!}
                                {!! Form::select('item['.$loop->index.'][module_machine]', App\Models\ModuleUser::where('module_id', $user->module_id)->pluck('name', 'id'), $user->module_user_id, ['class' => 'form-control', 'placeholder' => 'Choose Module Machine']) !!}
                                <small class="text-danger">{{ $errors->first('item.'.$loop->index.'.module_machine') }}</small>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        @endforeach

    @else

    <div class="col-md-6 col-sm-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.0.module') ? ' has-error' : '' }}">
                            {!! Form::label('module', 'Module') !!}
                            {!! Form::select('item[0][module]', App\Models\Module::where('id', 1)->pluck('name', 'id'), 1, ['class' => 'form-control', 'placeholder' => 'Choose Module']) !!}
                            <small class="text-danger">{{ $errors->first('item.0.module') }}</small>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.0.module_machine') ? ' has-error' : '' }}">
                            {!! Form::label('module_machine', 'Module Machine') !!}
                            {!! Form::select('item[0][module_machine]', App\Models\ModuleUser::where('module_id', 1)->pluck('name', 'id'), null, ['class' => 'form-control', 'placeholder' => 'Choose Module Machine']) !!}
                            <small class="text-danger">{{ $errors->first('item.0.module_machine') }}</small>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="col-md-6 col-sm-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.1.module') ? ' has-error' : '' }}">
                            {!! Form::label('module', 'Module') !!}
                            {!! Form::select('item[1][module]', App\Models\Module::where('id', 10)->pluck('name', 'id'), 10, ['class' => 'form-control', 'placeholder' => 'Choose Module']) !!}
                            <small class="text-danger">{{ $errors->first('item.1.module') }}</small>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.1.module_machine') ? ' has-error' : '' }}">
                            {!! Form::label('module_machine', 'Module Machine') !!}
                            {!! Form::select('item[1][module_machine]', App\Models\ModuleUser::where('module_id', 10)->pluck('name', 'id'), null, ['class' => 'form-control', 'placeholder' => 'Choose Module Machine']) !!}
                            <small class="text-danger">{{ $errors->first('item.1.module_machine') }}</small>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



    <div class="col-md-6 col-sm-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.2.module') ? ' has-error' : '' }}">
                            {!! Form::label('module', 'Module') !!}
                            {!! Form::select('item[2][module]', App\Models\Module::where('id', 2)->pluck('name', 'id'), 2, ['class' => 'form-control', 'placeholder' => 'Choose Module']) !!}
                            <small class="text-danger">{{ $errors->first('item.2.module') }}</small>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.2.module_machine') ? ' has-error' : '' }}">
                            {!! Form::label('module_machine', 'Module Machine') !!}
                            {!! Form::select('item[2][module_machine]', App\Models\ModuleUser::where('module_id', 2)->pluck('name', 'id'), null, ['class' => 'form-control', 'placeholder' => 'Choose Module Machine']) !!}
                            <small class="text-danger">{{ $errors->first('item.2.module_machine') }}</small>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <div class="col-md-6 col-sm-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.3.module') ? ' has-error' : '' }}">
                            {!! Form::label('module', 'Module') !!}
                            {!! Form::select('item[3][module]', App\Models\Module::where('id', 3)->pluck('name', 'id'), 3, ['class' => 'form-control', 'placeholder' => 'Choose Module']) !!}
                            <small class="text-danger">{{ $errors->first('item.3.module') }}</small>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.3.module_machine') ? ' has-error' : '' }}">
                            {!! Form::label('module_machine', 'Module Machine') !!}
                            {!! Form::select('item[3][module_machine]', App\Models\ModuleUser::where('module_id', 3)->pluck('name', 'id'), null, ['class' => 'form-control', 'placeholder' => 'Choose Module Machine']) !!}
                            <small class="text-danger">{{ $errors->first('item.3.module_machine') }}</small>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



    <div class="col-md-6 col-sm-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.4.module') ? ' has-error' : '' }}">
                            {!! Form::label('module', 'Module') !!}
                            {!! Form::select('item[4][module]', App\Models\Module::where('id', 4)->pluck('name', 'id'), 4, ['class' => 'form-control', 'placeholder' => 'Choose Module']) !!}
                            <small class="text-danger">{{ $errors->first('item.4.module') }}</small>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.4.module_machine') ? ' has-error' : '' }}">
                            {!! Form::label('module_machine', 'Module Machine') !!}
                            {!! Form::select('item[4][module_machine]', App\Models\ModuleUser::where('module_id', 4)->pluck('name', 'id'), null, ['class' => 'form-control', 'placeholder' => 'Choose Module Machine']) !!}
                            <small class="text-danger">{{ $errors->first('item.4.module_machine') }}</small>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



    <div class="col-md-6 col-sm-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.5.module') ? ' has-error' : '' }}">
                            {!! Form::label('module', 'Module') !!}
                            {!! Form::select('item[5][module]', App\Models\Module::where('id', 5)->pluck('name', 'id'), 5, ['class' => 'form-control', 'placeholder' => 'Choose Module']) !!}
                            <small class="text-danger">{{ $errors->first('item.5.module') }}</small>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.5.module_machine') ? ' has-error' : '' }}">
                            {!! Form::label('module_machine', 'Module Machine') !!}
                            {!! Form::select('item[5][module_machine]', App\Models\ModuleUser::where('module_id', 5)->pluck('name', 'id'), null, ['class' => 'form-control', 'placeholder' => 'Choose Module Machine']) !!}
                            <small class="text-danger">{{ $errors->first('item.5.module_machine') }}</small>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <div class="col-md-6 col-sm-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.6.module') ? ' has-error' : '' }}">
                            {!! Form::label('module', 'Module') !!}
                            {!! Form::select('item[6][module]', App\Models\Module::where('id', 6)->pluck('name', 'id'), 6, ['class' => 'form-control', 'placeholder' => 'Choose Module']) !!}
                            <small class="text-danger">{{ $errors->first('item.6.module') }}</small>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.6.module_machine') ? ' has-error' : '' }}">
                            {!! Form::label('module_machine', 'Module Machine') !!}
                            {!! Form::select('item[6][module_machine]', App\Models\ModuleUser::where('module_id', 6)->pluck('name', 'id'), null, ['class' => 'form-control', 'placeholder' => 'Choose Module Machine']) !!}
                            <small class="text-danger">{{ $errors->first('item.6.module_machine') }}</small>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



    <div class="col-md-6 col-sm-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.7.module') ? ' has-error' : '' }}">
                            {!! Form::label('module', 'Module') !!}
                            {!! Form::select('item[7][module]', App\Models\Module::where('id', 7)->pluck('name', 'id'), 7, ['class' => 'form-control', 'placeholder' => 'Choose Module']) !!}
                            <small class="text-danger">{{ $errors->first('item.7.module') }}</small>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.7.module_machine') ? ' has-error' : '' }}">
                            {!! Form::label('module_machine', 'Module Machine') !!}
                            {!! Form::select('item[7][module_machine]', App\Models\ModuleUser::where('module_id', 7)->pluck('name', 'id'), null, ['class' => 'form-control', 'placeholder' => 'Choose Module Machine']) !!}
                            <small class="text-danger">{{ $errors->first('item.7.module_machine') }}</small>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


     <div class="col-md-6 col-sm-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.9.module') ? ' has-error' : '' }}">
                            {!! Form::label('module', 'Module') !!}
                            {!! Form::select('item[9][module]', App\Models\Module::where('id', 9)->pluck('name', 'id'), 9, ['class' => 'form-control', 'placeholder' => 'Choose Module']) !!}
                            <small class="text-danger">{{ $errors->first('item.9.module') }}</small>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.9.module_machine') ? ' has-error' : '' }}">
                            {!! Form::label('module_machine', 'Module Machine') !!}
                            {!! Form::select('item[9][module_machine]', App\Models\ModuleUser::where('module_id', 9)->pluck('name', 'id'), null, ['class' => 'form-control', 'placeholder' => 'Choose Module Machine']) !!}
                            <small class="text-danger">{{ $errors->first('item.9.module_machine') }}</small>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <div class="col-md-6 col-sm-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.8.module') ? ' has-error' : '' }}">
                            {!! Form::label('module', 'Module') !!}
                            {!! Form::select('item[8][module]', App\Models\Module::where('id', 8)->pluck('name', 'id'), 8, ['class' => 'form-control', 'placeholder' => 'Choose Module']) !!}
                            <small class="text-danger">{{ $errors->first('item.8.module') }}</small>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <div class=" m-0 form-group {{$errors->has('item.8.module_machine') ? ' has-error' : '' }}">
                            {!! Form::label('module_machine', 'Module Machine') !!}
                            {!! Form::select('item[8][module_machine]', App\Models\ModuleUser::where('module_id', 8)->pluck('name', 'id'), null, ['class' => 'form-control', 'placeholder' => 'Choose Module Machine']) !!}
                            <small class="text-danger">{{ $errors->first('item.8.module_machine') }}</small>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


   @endif



    

    <div class="col-md-12 col-sm-12 text-center">
        {!! Form::submit('Save Assign User', ['class' => 'btn btn-info']) !!}
    </div>
</div>

{!! Form::close() !!}

@endsection


@push('scripts')

@endpush