{!! Form::open(['method' => 'put', 'route' => 'admin.district.store', 'class' => 'form-horizontal','files'=>true, 'id'=>'storeDistrict']) !!}
                        <div class="form-group{{ $errors->has('state') ? ' has-error' : '' }}">
                            {!! Form::label('state', 'State') !!}
                            {!! Form::select('state', App\Models\State::pluck('name', 'id'), $city->state_id, ['id' => 'state', 'class' => 'select2 form-control', 'placeholder' => 'Choose State',]) !!}
                            <small class="text-danger">{{ $errors->first('state') }}</small>
                        </div>

                        <div class="form-group{{ $errors->has('district') ? ' has-error' : '' }}">
                            {!! Form::label('district', 'District') !!}
                            {!! Form::select('district', App\Models\District::where('state_id', $city->state_id)->pluck('name', 'id'), $city->district_id, ['id' => 'district', 'class' => 'form-control', 'placeholder' => 'District']) !!}
                            <small class="text-danger">{{ $errors->first('district') }}</small>
                        </div>

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            {!! Form::label('name', 'Name') !!}
                            {!! Form::text('name', $city->name, ['class' => 'form-control', 'placeholder' => 'District Name']) !!}
                            <small class="text-danger">{{ $errors->first('name') }}</small>
                        </div>

                        {!! Form::button('Update District', ['class' => 'btn btn-success update', 'data-id'=>$city->id]) !!}
                    {!! Form::close() !!}