@if($product->gsm != '')
{!! Form::open(['route'=>'admin.'.request()->segment(2).'.store', 'files'=>true, 'id'=>'productSaveFormPaper']) !!}

                <div class="row">

                    {!! Form::hidden('id', $product->id) !!}
                    

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="w-100 form-group{{ $errors->has('paper_length') ? ' has-error' : '' }}">
                            {!! Form::label('paper_length', 'Length') !!}
                            {!! Form::text('paper_length', $product->length, ['class' => 'form-control length', 'placeholder' => 'Length']) !!}
                            <small class="text-danger">{{ $errors->first('paper_length') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="w-100 form-group{{ $errors->has('paper_width') ? ' has-error' : '' }}">
                            {!! Form::label('paper_width', 'Width') !!}
                            {!! Form::text('paper_width', $product->width, ['class' => 'form-control width', 'placeholder' => 'Width']) !!}
                            <small class="text-danger">{{ $errors->first('paper_width') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="w-100 form-group{{ $errors->has('paper_length_cm') ? ' has-error' : '' }}">
                            {!! Form::label('paper_length_cm', 'Length CM') !!}
<<<<<<< HEAD
                            {!! Form::text('paper_length_cm', $product->length_cm, ['class' => 'form-control length-cm', 'placeholder' => 'Length CM']) !!}
=======
                            {!! Form::text('paper_length_cm', $product->length_cm, ['class' => 'form-control length', 'placeholder' => 'Length CM']) !!}
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                            <small class="text-danger">{{ $errors->first('paper_length_cm') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="w-100 form-group{{ $errors->has('paper_width_cm') ? ' has-error' : '' }}">
                            {!! Form::label('paper_width_cm', 'Width CM') !!}
<<<<<<< HEAD
                            {!! Form::text('paper_width_cm', $product->width_cm, ['class' => 'form-control width-cm', 'placeholder' => 'Width CM']) !!}
=======
                            {!! Form::text('paper_width_cm', $product->width_cm, ['class' => 'form-control width', 'placeholder' => 'Width CM']) !!}
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                            <small class="text-danger">{{ $errors->first('paper_width_cm') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="w-100 form-group{{ $errors->has('paper_gsm') ? ' has-error' : '' }}">
                            {!! Form::label('paper_gsm', 'GSM') !!}
                            {!! Form::text('paper_gsm', $product->gsm, ['class' => 'form-control gsm', 'placeholder' => 'GSM']) !!}
                            <small class="text-danger">{{ $errors->first('paper_gsm') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('product_code') ? ' has-error' : '' }}">
                            {!! Form::label('product_code', 'Product Code') !!}
                            {!! Form::text('product_code', $product->code, ['class' => 'form-control', 'placeholder' => 'Product']) !!}
                            <small class="text-danger">{{ $errors->first('product_code') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="w-100 form-group{{ $errors->has('category') ? ' has-error' : '' }}">
                            {!! Form::label('category', 'Category') !!}
                            {!! Form::select('category', App\Models\Category::pluck('name', 'id'), $product->category_id,['class' => 'form-control product_category', 'required' => 'required']) !!}
                            <small class="text-danger">{{ $errors->first('category') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('paper_type') ? ' has-error' : '' }}">
                            {!! Form::label('paper_type', 'Paper Type') !!}
                            {!! Form::select('paper_type', [1=>'White', 2=>'Yellow', 3=>'White Back', 4=>'Gray Back' , 5 => 'ART Paper', 6 => 'Maplitho'], $product->paper_type, ['id' => 'paper_type', 'class' => 'form-control', 'placeholder' => 'Choose Paper Type']) !!}
                            <small class="text-danger">{{ $errors->first('paper_type') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('product_type') ? ' has-error' : '' }}">
                            {!! Form::label('product_type', 'Paper Type') !!}
                            {!! Form::select('product_type', App\Models\ProductType::pluck('type', 'id'), $product->product_type_id, ['id' => 'product_type', 'class' => 'form-control', 'required' => 'required', 'placeholder'=>'Choose an option']) !!}
                            <small class="text-danger">{{ $errors->first('product_type') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('paper_hsn') ? ' has-error' : '' }}">
                            {!! Form::label('paper_hsn', 'Paper HSN') !!}
                            {!! Form::text('paper_hsn', $product->hsn, ['class' => 'form-control', 'placeholder' => 'Paper HSN']) !!}
                            <small class="text-danger">{{ $errors->first('paper_hsn') }}</small>
                        </div>
                    </div>

                    

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('paper_packet_weight') ? ' has-error' : '' }}">
                            {!! Form::label('paper_packet_weight', 'Packet Weight') !!}
                            {!! Form::text('paper_packet_weight', $product->packet_weight, ['class' => 'form-control get-weight-per-sheet', 'placeholder' => 'Packet Weight']) !!}
                            <small class="text-danger">{{ $errors->first('paper_packet_weight') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('sheet_per_packet') ? ' has-error' : '' }}">
                            {!! Form::label('sheet_per_packet', 'Sheet/Packet') !!}
                            {!! Form::text('sheet_per_packet', $product->item_per_packet, ['class' => 'form-control get-weight-per-sheet', 'placeholder' => 'Sheet/Packet']) !!}
                            <small class="text-danger">{{ $errors->first('sheet_per_packet') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('weight_per_sheet') ? ' has-error' : '' }}">
                            {!! Form::label('weight_per_sheet', 'Weight Per Sheet') !!}
                            {!! Form::text('weight_per_sheet', $product->weight_per_piece, ['class' => 'form-control', 'placeholder' => 'Weight Per Sheet']) !!}
                            <small class="text-danger">{{ $errors->first('weight_per_sheet') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('paper_unit') ? ' has-error' : '' }}">
                            {!! Form::label('paper_unit', 'Unit') !!}
                            {!! Form::select('paper_unit', \App\Models\Unit::select(\DB::raw('CONCAT(name, " (", code, ") ") as unit'), 'id')->pluck('unit', 'id'), $product->unit_id, ['id' => 'unit', 'class' => 'form-control', 'placeholder' => 'Choose an option']) !!}
                            <small class="text-danger">{{ $errors->first('paper_unit') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('in_hand_quantity') ? ' has-error' : '' }}">
                            {!! Form::label('in_hand_quantity', 'In Hand Quantity') !!}
                            {!! Form::text('in_hand_quantity', $product->in_hand_quantity, ['class' => 'form-control', 'placeholder' => 'In Hand Quantity']) !!}
                            <small class="text-danger">{{ $errors->first('in_hand_quantity') }}</small>
                        </div>
                    </div>

              </div>


              {!! Form::close() !!}

              @else


              {!! Form::open(['route'=>'admin.'.request()->segment(2).'.store', 'files'=>true, 'id'=>'productSaveForm']) !!}

                <div class="row">

                    {!! Form::hidden('id', $product->id) !!}

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('category') ? ' has-error' : '' }}">
                            {!! Form::label('category', 'Category') !!}
                             {!! Form::select('category', App\Models\Category::pluck('name', 'id'), $product->category_id,['class' => 'form-control product_category', 'required' => 'required']) !!}
                            {{-- {!! Form::hidden('category', $product->category_id,['class' => 'productCategoryID']) !!} --}}
                            <small class="text-danger">{{ $errors->first('category') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('product_code') ? ' has-error' : '' }}">
                            {!! Form::label('product_code', 'Product Code') !!}
                            {!! Form::text('product_code', $product->code, ['class' => 'form-control', 'placeholder' => 'Product']) !!}
                            <small class="text-danger">{{ $errors->first('product_code') }}</small>
                        </div>
                    </div>



                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('product_name') ? ' has-error' : '' }}">
                            {!! Form::label('product_name', 'Product Name') !!}
                            {!! Form::text('product_name', $product->name, ['class' => 'form-control', 'placeholder' => 'Product Name']) !!}
                            <small class="text-danger">{{ $errors->first('product_name') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('product_type') ? ' has-error' : '' }}">
                            {!! Form::label('product_type', 'Product Type') !!}
                            {!! Form::select('product_type', App\Models\ProductType::pluck('type', 'id'), $product->product_type_id, ['id' => 'product_type', 'class' => 'form-control', 'required' => 'required', 'placeholder'=>'Choose an option']) !!}
                            <small class="text-danger">{{ $errors->first('product_type') }}</small>
                        </div>
                    </div>

                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('hsn') ? ' has-error' : '' }}">
                            {!! Form::label('hsn', 'HSN') !!}
                            {!! Form::text('hsn', $product->hsn, ['class' => 'form-control', 'placeholder' => 'HSN']) !!}
                            <small class="text-danger">{{ $errors->first('hsn') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('weight_per_piece') ? ' has-error' : '' }}">
                            {!! Form::label('weight_per_piece', 'Weight Per Piece') !!}
                            {!! Form::text('weight_per_piece', $product->weight_per_piece, ['class' => 'form-control', 'placeholder' => 'Weight Per Piece']) !!}
                            <small class="text-danger">{{ $errors->first('weight_per_piece') }}</small>
                        </div>
                    </div>


                    <div class="form-group col-md-4 col-sm-12">
                        <div class="form-group{{ $errors->has('unit') ? ' has-error' : '' }}">
                            {!! Form::label('unit', 'Unit') !!}
                            {!! Form::select('unit', \App\Models\Unit::select(\DB::raw('CONCAT(name, " (", code, ") ") as unit'), 'id')->pluck('unit', 'id'), $product->unit_id, ['id' => 'unit', 'class' => 'form-control', 'placeholder' => 'Choose an option']) !!}
                            <small class="text-danger">{{ $errors->first('unit') }}</small>
                        </div>
                    </div>

              </div>


              {!! Form::close() !!} 
    @endif




