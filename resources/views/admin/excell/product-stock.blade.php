 @php
 use Carbon\Carbon;
use App\Models\Transaction;
 $now = Carbon::now();
$currentMonth = $now->month;
$currentYear = $now->year;
$previousMonth = $now->subMonth()->month;
 @endphp
   <table class="table table-bordered text-center table-nowrap align-middle mb-0">
             
        <tr>
            <th style="width:200px;text-align:center;"><b>Product Name</b></th>
            <th style="width:200px;text-align:center;"><b>Subcategory</b></th>
            <th style="width:200px;text-align:center;"><b>Current Stock</b></th>
            <th style="width:60px;text-align:center;"><b>Open Stock</b></th>
        </tr>
                        
    <tbody>
     
        @foreach($stocks as $stock)

        @php
        $transaction = Transaction::where('product_id', $stock->id)->whereYear('created_at', $currentYear)
        ->whereMonth('created_at', $currentMonth)->first();
        
        $transaction_prev = Transaction::where('product_id', $stock->id)->whereYear('created_at', $currentYear)
        ->whereMonth('created_at', $previousMonth)->latest()->first();
        
        @endphp

        <tr>
            <td>{{$stock->name}}</td>
            <td>{{$stock->category->name}}</td>
            <td style="text-align:center;">{{$stock->quantity}}</td>
            <td style="text-align:center;">{{@$transaction->current_quantity??@$transaction_prev->total_quantity}}</td>
        </tr>
        @endforeach

       

    </tbody>
</table>