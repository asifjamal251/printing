{!! Form::open(['method' => 'put', 'route' => 'admin.district.store', 'class' => 'form-horizontal','files'=>true, 'id'=>'storeDistrict']) !!}
                        <div class="form-group{{ $errors->has('state') ? ' has-error' : '' }}">
                            {!! Form::label('state', 'State') !!}
                            {!! Form::select('state', App\Models\State::pluck('name', 'id'), $district->state_id, ['id' => 'state', 'class' => 'select2 form-control', 'placeholder' => 'Choose State',]) !!}
                            <small class="text-danger">{{ $errors->first('state') }}</small>
                        </div>

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            {!! Form::label('name', 'Name') !!}
                            {!! Form::text('name', $district->name, ['class' => 'form-control', 'placeholder' => 'District Name']) !!}
                            <small class="text-danger">{{ $errors->first('name') }}</small>
                        </div>

                        {!! Form::button('Update District', ['class' => 'btn btn-success update', 'data-id'=>$district->id]) !!}
                    {!! Form::close() !!}