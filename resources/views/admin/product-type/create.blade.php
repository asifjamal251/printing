{!! Form::open(['method' => 'POST', 'route' => 'admin.'.request()->segment(2).'.store', 'class' => 'form-horizontal','id'=>'requisitionForm']) !!}
                    
    <div class="form-group{{ $errors->has('product_type') ? ' has-error' : '' }}">
        {!! Form::label('product_type', 'Product Type') !!}
        {!! Form::text('product_type', null, ['class' => 'form-control', 'required' => 'required','placeholder'=>'Product Type']) !!}
        <small class="text-danger">{{ $errors->first('product_type') }}</small>
    </div>

    <div class="form-group{{ $errors->has('start_series') ? ' has-error' : '' }}">
        {!! Form::label('start_series', 'Start Series') !!}
        {!! Form::text('start_series', null, ['class' => 'form-control', 'placeholder' => 'Start Series']) !!}
        <small class="text-danger">{{ $errors->first('start_series') }}</small>
    </div>

    <div class="btn-group">
        {!! Form::button("Create Product Type", ['class' => 'btn btn-soft-secondary ','onClick'=>'createTag(this)']) !!}
    </div>

{!! Form::close() !!}