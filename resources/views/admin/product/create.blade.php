@if($type == 'paper')
{!! Form::open(['route'=>'admin.'.request()->segment(2).'.store', 'files'=>true, 'id'=>'productSaveFormPaper']) !!}

                <div class="row">


                     <div class="form-group col-md-4 col-sm-12">
                        <div class="w-100 form-group{{ $errors->has('paper_length') ? ' has-error' : '' }}">
                            {!! Form::label('paper_length', 'Length') !!}
                            {!! Form::text('paper_length', null, ['class' => 'form-control length', 'placeholder' => 'Length']) !!}
                            <small class="text-danger">{{ $errors->first('paper_length') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="w-100 form-group{{ $errors->has('paper_width') ? ' has-error' : '' }}">
                            {!! Form::label('paper_width', 'Width') !!}
                            {!! Form::text('paper_width', null, ['class' => 'form-control width', 'placeholder' => 'Width']) !!}
                            <small class="text-danger">{{ $errors->first('paper_width') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="w-100 form-group{{ $errors->has('paper_length_cm') ? ' has-error' : '' }}">
                            {!! Form::label('paper_length_cm', 'Length CM') !!}
                            {!! Form::text('paper_length_cm', null, ['class' => 'form-control length-cm', 'placeholder' => 'Length CM']) !!}
                            <small class="text-danger">{{ $errors->first('paper_length_cm') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="w-100 form-group{{ $errors->has('paper_width_cm') ? ' has-error' : '' }}">
                            {!! Form::label('paper_width_cm', 'Width CM') !!}
                            {!! Form::text('paper_width_cm', null, ['class' => 'form-control width-cm', 'placeholder' => 'Width CM']) !!}
                            <small class="text-danger">{{ $errors->first('paper_width_cm') }}</small>
                        </div>
                    </div>



                    <div class="form-group col-md-4 col-sm-12">
                        <div class="w-100 form-group{{ $errors->has('paper_gsm') ? ' has-error' : '' }}">
                            {!! Form::label('paper_gsm', 'GSM') !!}
                            {!! Form::text('paper_gsm', null, ['class' => 'form-control gsm', 'placeholder' => 'GSM']) !!}
                            <small class="text-danger">{{ $errors->first('paper_gsm') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12" style="display:none;">
                        <div class="w-100 form-group{{ $errors->has('category') ? ' has-error' : '' }}">
                            {!! Form::label('category', 'Category') !!}
                            {!! Form::select('category', App\Models\Category::where('id', $category_id)->pluck('name', 'id'), $category_id,['class' => 'form-control product_category', 'required' => 'required', 'readonly']) !!}
                            <small class="text-danger">{{ $errors->first('category') }}</small>
                        </div>
                    </div>

                     <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('paper_type') ? ' has-error' : '' }}">
                            {!! Form::label('paper_type', 'Paper Type') !!}
                            {!! Form::select('paper_type', [1=>'White', 2=>'Yellow', 3=>'White Back', 4=>'Gray Back' , 5 => 'ART Paper', 6 => 'Maplitho'], null, ['id' => 'paper_type', 'class' => 'form-control', 'placeholder' => 'Choose Paper Type']) !!}
                            <small class="text-danger">{{ $errors->first('paper_type') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('product_type') ? ' has-error' : '' }}">
                            {!! Form::label('product_type', 'Product Type') !!}
                            {!! Form::select('product_type', App\Models\ProductType::pluck('type', 'id'), null, ['id' => 'product_type', 'class' => 'form-control', 'required' => 'required', 'placeholder'=>'Choose an option']) !!}
                            <small class="text-danger">{{ $errors->first('product_type') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('product_code') ? ' has-error' : '' }}">
                            {!! Form::label('product_code', 'Product Code') !!}
                            {!! Form::text('product_code', null, ['class' => 'form-control', 'placeholder' => 'Product']) !!}
                            <small class="text-danger">{{ $errors->first('product_code') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('paper_hsn') ? ' has-error' : '' }}">
                            {!! Form::label('paper_hsn', 'Paper HSN') !!}
                            {!! Form::text('paper_hsn', 4810, ['class' => 'form-control', 'placeholder' => 'Paper HSN']) !!}
                            <small class="text-danger">{{ $errors->first('paper_hsn') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('sheet_per_packet') ? ' has-error' : '' }}">
                            {!! Form::label('sheet_per_packet', 'Sheet/Packet') !!}
                            {!! Form::text('sheet_per_packet', 100, ['class' => 'form-control get-weight-per-sheet', 'placeholder' => 'Sheet/Packet']) !!}
                            <small class="text-danger">{{ $errors->first('sheet_per_packet') }}</small>
                        </div>
                    </div>


                     <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('paper_packet_weight') ? ' has-error' : '' }}">
                            {!! Form::label('paper_packet_weight', 'Packet Weight') !!}
                            {!! Form::text('paper_packet_weight', null, ['class' => 'form-control packet_weight', 'placeholder' => 'Packet Weight']) !!}
                            <small class="text-danger">{{ $errors->first('paper_packet_weight') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('weight_per_sheet') ? ' has-error' : '' }}">
                            {!! Form::label('weight_per_sheet', 'Weight Per Sheet') !!}
                            {!! Form::text('weight_per_sheet', null, ['class' => 'form-control', 'placeholder' => 'Weight Per Sheet', 'readonly']) !!}
                            <small class="text-danger">{{ $errors->first('weight_per_sheet') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('paper_unit') ? ' has-error' : '' }}">
                            {!! Form::label('paper_unit', 'Unit') !!}
                            {!! Form::select('paper_unit', \App\Models\Unit::select(\DB::raw('CONCAT(name, " (", code, ") ") as unit'), 'id')->pluck('unit', 'id'), null, ['id' => 'unit', 'class' => 'form-control', 'placeholder' => 'Choose an option']) !!}
                            <small class="text-danger">{{ $errors->first('paper_unit') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('quantity') ? ' has-error' : '' }}">
                            {!! Form::label('quantity', 'Quantity') !!}
                            {!! Form::text('quantity', null, ['class' => 'form-control', 'placeholder' => 'Quantity']) !!}
                            <small class="text-danger">{{ $errors->first('quantity') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('in_hand_quantity') ? ' has-error' : '' }}">
                            {!! Form::label('in_hand_quantity', 'In Hand Quantity') !!}
                            {!! Form::text('in_hand_quantity', null, ['class' => 'form-control', 'placeholder' => 'In Hand Quantity']) !!}
                            <small class="text-danger">{{ $errors->first('in_hand_quantity') }}</small>
                        </div>
                    </div>

              </div>


              {!! Form::close() !!} 



              @else


              {!! Form::open(['route'=>'admin.'.request()->segment(2).'.store', 'files'=>true, 'id'=>'productSaveForm']) !!}

                <div class="row">



                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('category') ? ' has-error' : '' }}">
                            {!! Form::label('category', 'Category') !!}
                            {!! Form::select('category', App\Models\Category::where('id', $category_id)->pluck('name', 'id'), $category_id,['class' => 'form-control product_category', 'required' => 'required', 'readonly']) !!}
                            {!! Form::hidden('category', $category_id,['class' => 'productCategoryID']) !!}
                            <small class="text-danger">{{ $errors->first('category') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('product_code') ? ' has-error' : '' }}">
                            {!! Form::label('product_code', 'Product Code') !!}
                            {!! Form::text('product_code', null, ['class' => 'form-control', 'placeholder' => 'Product']) !!}
                            <small class="text-danger">{{ $errors->first('product_code') }}</small>
                        </div>
                    </div>



                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('product_name') ? ' has-error' : '' }}">
                            {!! Form::label('product_name', 'Product Name') !!}
                            {!! Form::text('product_name', null, ['class' => 'form-control', 'placeholder' => 'Product Name']) !!}
                            <small class="text-danger">{{ $errors->first('product_name') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('hsn') ? ' has-error' : '' }}">
                            {!! Form::label('hsn', 'HSN') !!}
                            {!! Form::text('hsn', null, ['class' => 'form-control', 'placeholder' => 'HSN']) !!}
                            <small class="text-danger">{{ $errors->first('hsn') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('product_type') ? ' has-error' : '' }}">
                            {!! Form::label('product_type', 'Product Type') !!}
                            {!! Form::select('product_type', App\Models\ProductType::pluck('type', 'id'), null, ['id' => 'product_type', 'class' => 'form-control', 'required' => 'required', 'placeholder'=>'Choose an option']) !!}
                            <small class="text-danger">{{ $errors->first('product_type') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('weight_per_piece') ? ' has-error' : '' }}">
                            {!! Form::label('weight_per_piece', 'Weight Per Piece') !!}
                            {!! Form::text('weight_per_piece', null, ['class' => 'form-control', 'placeholder' => 'Weight Per Piece']) !!}
                            <small class="text-danger">{{ $errors->first('weight_per_piece') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('unit') ? ' has-error' : '' }}">
                            {!! Form::label('unit', 'Unit') !!}
                            {!! Form::select('unit', \App\Models\Unit::select(\DB::raw('CONCAT(name, " (", code, ") ") as unit'), 'id')->pluck('unit', 'id'), null, ['id' => 'unit', 'class' => 'form-control', 'placeholder' => 'Choose an option']) !!}
                            <small class="text-danger">{{ $errors->first('unit') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('quantity') ? ' has-error' : '' }}">
                            {!! Form::label('quantity', 'Quantity') !!}
                            {!! Form::text('quantity', null, ['class' => 'form-control', 'placeholder' => 'Quantity']) !!}
                            <small class="text-danger">{{ $errors->first('quantity') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('in_hand_quantity') ? ' has-error' : '' }}">
                            {!! Form::label('in_hand_quantity', 'In Hand Quantity') !!}
                            {!! Form::text('in_hand_quantity', null, ['class' => 'form-control', 'placeholder' => 'In Hand Quantity']) !!}
                            <small class="text-danger">{{ $errors->first('in_hand_quantity') }}</small>
                        </div>
                    </div>

              </div>


              {!! Form::close() !!} 
    @endif




