<div class="table-responsive table-card">
    <table class="table table-nowrap table table-bordered border-light mb-0">
        <thead>
            <tr>
                
                <th scope="col">Carton Name</th>
                <th scope="col">Carton Size</th>
                <th scope="col">Quantity</th>
                <th scope="col">Rate</th> 
                <th scope="col">Action</th> 
            </tr>
        </thead>
        <tbody>
            @foreach($items as $item)
                 {!! Form::open(['route'=>['admin.common.po.items.update',$item->id],'method'=>'put', 'files'=>true]) !!}
                    <tr>
                        <td>{{$item->carton_name}}</td>
                        <td>{{$item->carton_size}}</td>
                        <td>{{$item->quantity}}</td>
                        <td>{{$item->rate}}</td>
                        <td>
                            <div class="form-check mb-2">
                                <input class="form-check-input" type="checkbox" id="carton-name-{{$item->id}}" checked="">
                                <label class="form-check-label" for="carton-name-{{$item->id}}">
                                    Carton Name
                                </label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="rate-{{$item->id}}" checked="">
                                <label class="form-check-label" for="rate-{{$item->id}}">
                                    Rate
                                </label>
                            </div>

                        </td>
                    </tr>
                {!! Form::close() !!}
            @endforeach
          
        </tbody>
    </table>
</div>