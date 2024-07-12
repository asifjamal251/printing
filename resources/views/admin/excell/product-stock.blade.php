 @php
 use Carbon\Carbon;
use App\Models\Transaction;
 $now = Carbon::now();
$currentMonth = $now->month;
$currentYear = $now->year;
$previousMonth = $now->subMonth()->month;

if (!function_exists('paperType')) {
    function paperType($paperType){
        if($paperType == 1){
            return 'White';
        }

        if($paperType == 2){
            return 'Yellow';
        }

        if($paperType == 3){
            return 'White Back';
        }

        if($paperType == 4){
            return 'Gray Back';
        }

        if($paperType == ''){
            return 'N/A';
        }
    }
}

if (!function_exists('totalweight')) {
function totalweight($wt_pc, $qty) {
        if (is_float($wt_pc) || (is_string($wt_pc) && preg_match('/\.\d*[1-9]/', $wt_pc))) {
            $formattedwt_pc = $wt_pc;
            $formattedqty = (float)$qty;
        } else {
            $formattedwt_pc = (int)$wt_pc;
            $formattedqty = (int)$qty;
        }

        $result = $formattedwt_pc * $formattedqty;

        // Format result to have two digits after the decimal point
        $result = number_format($result, 2);

        return $result;
    }
}

 @endphp
   <table class="table table-bordered text-center table-nowrap align-middle mb-0">
             
        <tr>
            <th style="width:200px;text-align:center;"><b>Product</b></th>
            <th style="width:200px;text-align:center;"><b>Product CM</b></th>
            <th style="width:200px;text-align:center;"><b>Product Type</b></th>
            <th style="width:200px;text-align:center;"><b>Paper Type</b></th>
            <th style="width:200px;text-align:center;"><b>Length</b></th>
            <th style="width:200px;text-align:center;"><b>Width</b></th>
            <th style="width:200px;text-align:center;"><b>GSM</b></th>
            <th style="width:200px;text-align:center;"><b>Quantity</b></th>
            <th style="width:200px;text-align:center;"><b>Unit</b></th>
            <th style="width:200px;text-align:center;"><b>WT/PC</b></th>
            <th style="width:200px;text-align:center;"><b>Total</b></th>
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
            <td style="width:200px;text-align:center;">{{$stock->name}}</td>
            <td style="width:200px;text-align:center;">{{$stock->name_cm}}</td>
            <td style="width:200px;text-align:center;">{{$stock->productType->type}}</td>
            <td style="width:200px;text-align:center;">{{paperType($stock->paper_type)}}</td>
            <td style="width:200px;text-align:center;">{{$stock->length}}</td>
            <td style="width:200px;text-align:center;">{{$stock->width}}</td>
            <td style="width:200px;text-align:center;">{{$stock->gsm}}</td>
            <td style="width:200px;text-align:center;">{{$stock->quantity??0}}</td>
            <td style="width:200px;text-align:center;">{{$stock->unit->name}}</td>
            <td style="width:200px;text-align:center;">{{$stock->weight_per_piece}}</td>
            <td style="width:200px;text-align:center;">{{totalweight($stock->weight_per_piece, $stock->quantity)}}</td>
        </tr>
        @endforeach

       

    </tbody>
</table>