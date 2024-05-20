
   <table class="table table-bordered text-center table-nowrap align-middle mb-0">
             
        <tr>
            <th style="width:200px;text-align:center;"><b>Current Stock</b></th>
            <th style="width:200px;text-align:center;"><b>New Stock</b></th>
            <th style="width:60px;text-align:center;"><b>Total Stock</b></th>
        </tr>
                        
    <tbody>
     
        @foreach($stocks as $stock)

        <tr>
            <td style="text-align:center;">{{$stock->current_quantity}}</td>
            <td style="text-align:center;">{{$stock->new_quantity}}</td>
            <td style="text-align:center;">{{$stock->total_quantity}}</td>
        </tr>
        @endforeach

       

    </tbody>
</table>