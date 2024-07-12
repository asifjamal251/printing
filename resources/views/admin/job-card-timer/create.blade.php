<div class="form-group{{ $errors->has('work') ? ' has-error' : '' }}">
    {!! Form::label('work', 'Work') !!}
    {!! Form::text('work', $job_timer->elapsed_time, ['class' => 'form-control', 'placeholder' => '0 Hr', 'readonly']) !!}
    <small class="text-danger">{{ $errors->first('work') }}</small>
</div>
<div class="form-group{{ $errors->has('pause') ? ' has-error' : '' }}">
    {!! Form::label('pause', 'Pause') !!}
    {!! Form::text('pause', $job_timer->paused_time, ['class' => 'form-control', 'placeholder' => '0 Hr', 'readonly']) !!}
    <small class="text-danger">{{ $errors->first('pause') }}</small>
</div>
<div class="m-0 text-start form-group{{ $errors->has('remarks') ? ' has-error' : '' }}">
    {!! Form::label('remarks', 'Remarks') !!}
    {!! Form::textarea('remarks', $job_timer->remarks, ['class' => 'form-control', 'placeholder' => 'Remarks', 'rows'=>3]) !!}
    <small class="text-danger">{{ $errors->first('remarks') }}</small>
</div>

{!! Form::hidden('id', $job_timer->id) !!}
{!! Form::hidden('job_card_id', $job_timer->job_card_id) !!}