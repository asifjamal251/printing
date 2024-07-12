{!! Form::open(['method' => 'POST', 'route' => 'admin.district.store', 'class' => 'form-horizontal','files'=>true, 'id'=>'storeDistrict']) !!}
                        <div class="form-group{{ $errors->has('state') ? ' has-error' : '' }}">
                            {!! Form::label('state', 'State') !!}
                            {!! Form::select('state', App\Models\State::pluck('name', 'id'), null, ['id' => 'state', 'class' => 'select2 form-control', 'placeholder' => 'Choose State',]) !!}
                            <small class="text-danger">{{ $errors->first('state') }}</small>
                        </div>

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            {!! Form::label('name', 'Name') !!}
                            {!! Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'District Name']) !!}
                            <small class="text-danger">{{ $errors->first('name') }}</small>
                        </div>

                        {!! Form::button('Save District', ['class' => 'btn btn-success store']) !!}
                    {!! Form::close() !!}