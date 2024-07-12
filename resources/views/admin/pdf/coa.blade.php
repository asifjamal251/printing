<!DOCTYPE html>
<html>
<head>
    <title>Coa</title>
    <style>
        *{
            padding: 0;
            margin-left: 5px;
            margin-right: 10px;
            margin-top: 5px;
            margin-bottom: 5px;
        }
        @font-face {
            font-family: 'Roboto Regular';
            font-weight: normal;
            font-style: normal;
            font-variant: normal;
            src: url("storage/fonts/roboto/Roboto-Regular.ttf") format('truetype');

        }

        @font-face {
            font-family: 'Anta';
            font-weight: 400;
            font-style: normal;
            font-variant: normal;
            src: url("fonts/Anta/Anta-Regular.ttf") format('truetype');

        }
        body {
            font-family: 'Roboto Regular', sans-serif;
            font-size: 12px;
            text-transform: uppercase;
        }
        .anta-regular {
            font-family: "Anta", sans-serif;
            font-weight: 400;
            font-style: normal;
            font-size: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }
        table{
            width: 100%;
            max-width: 600px;
        }
        table , td, th {
            border: 1px solid #595959;
            border-collapse: collapse;
        }
        td, th {
            padding: 3px;
            width: 30px;
            height: 25px;
        }
        th {
            background: #fff;
        }
        
         .col-25 { width: 25%; }
    .col-50 { width: 50%; }
    .col-75 { width: 75%; }
    </style>
</head>
<body>


   <table class="table table-bordered border-secondary table-nowrap">
    <colgroup>
        <col class="col-25">
        <col class="col-25">
        <col class="col-25">
        <col class="col-25">
    </colgroup>
    <tr>
        <th colspan="4" style="text-align: center;">CERTIFICATE OF ANALYSIS</th>
    </tr>
    <tr>
        <th colspan="2" class="col-50">FROM</th>
        <th colspan="2" class="col-50">CLIENT NAME</th>
    </tr>
    <tr>
<<<<<<< HEAD
<<<<<<< HEAD
        <td colspan="2" class="col-50"><b>{{get_app_setting('title')}}</b></td>
        <td colspan="2" class="col-50"><b>{{$billing->PO->client->company_name}}</b>S</td>
=======
        <td colspan="2" class="col-50">{{get_app_setting('title')}}</td>
        <td colspan="2" class="col-50">{{$billing->PO->client->company_name}}</td>
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
        <td colspan="2" class="col-50">{{get_app_setting('title')}}</td>
        <td colspan="2" class="col-50">{{$billing->PO->client->company_name}}</td>
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
    </tr>
    <tr>
        <td style="width: 50%;" colspan="2">{!! get_app_setting('address') !!}</td>
        <td style="width: 50%;" colspan="2">{!! $billing->PO->client->address !!}</td>
    </tr>
    <tr>
        <td style="width:50%;" colspan="2">{{get_app_setting('city')}}</td>
        <td style="width:50%;" colspan="2"> {{$billing->PO->client->city}}</td>
    </tr>

    <tr style="visibility:collapse;" style="display:none;">
        <td style="width:25%;"></td>
        <td style="width:25%;"></td>
        <td style="width:25%;"></td>
        <td style="width:25%;"></td>
    </tr>


    <tr>
<<<<<<< HEAD
<<<<<<< HEAD
        <td style="width: 25%;"><b>PO NO</b></td>
        <td style="width: 25%;">{{$billing->PO->po_no}}</td>
        <td style="width: 25%;"><b>PRODUCT NAME</b></td>
        <td style="width: 25%;">{{$coa->product}}</td>
    </tr>

    <tr>
        <td style="width: 25%;"><b>PO DATE</b></td>
        <td style="width: 25%;">{{$coa->po_date}}</td>
        <td style="width: 25%;"><b>PRODUCT CODE</b></td>
        <td style="width: 25%;">{{$coa->product_code}}</td>
    </tr>

    <tr>
        <td style="width: 25%;"><b>INVOICE NO.</b></td>
        <td style="width: 25%;">{{$billing->billing->invoice_no}}</td>
        <td style="width: 25%;"><b>QUANTITY</b></td>
        <td style="width: 25%;">{{$coa->quantity}}</td>
    </tr>

    <tr>
        <td style="width: 25%;"><b>INVOICE DATE</b></td>
        <td style="width: 25%;">{{$coa->invoice_date}}</td>
=======
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
        <td style="width: 25%;"><b>COA NO</b></td>
        <td style="width: 25%;">1</td>
        <td style="width: 25%;"><b>PRODUCT NAME</b></td>
        <td style="width: 25%;">Hello World</td>
    </tr>

    <tr>
        <td style="width: 25%;"><b>INVOICE NO.</b></th>
        <td style="width: 25%;">1</td>
        <td style="width: 25%;"><b>QUANTITY</td>
        <td style="width: 25%;">200</td>
    </tr>

    <tr>
        <td style="width: 25%;"><b>MFG DATE</b></td>
        <td style="width: 25%;">1</td>
        <td style="width: 25%;"><b>EXP DATE</b></td>
        <td style="width: 25%;">200</td>
    </tr>

    <tr>
        <td style="width: 25%;"><b>PRODUCT CODE</b></td>
        <td style="width: 25%;">1</td>
<<<<<<< HEAD
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
        <td style="width: 25%;"><b>BATCH NO.</b></td>
        <td style="width: 25%;">200</td>
    </tr>

    <tr style="visibility:collapse;" style="display:none;">
        <td style="width:25%;"></td>
        <td style="width:25%;"></td>
        <td style="width:25%;"></td>
        <td style="width:25%;"></td>
    </tr>
</table>

<table class="table table-bordered border-secondary table-nowrap">
    <colgroup>
        <col class="col-25">
        <col class="col-25">
        <col class="col-25">
        <col class="col-25">
    </colgroup>
    <tr>
        <th colspan="4" style="text-align: center;">ATTRIBUTE PARAMETERS (VISUAL INSPECTION)</th>
    </tr>

    <tr style="visibility:collapse;" style="display:none;">
        <td style="width:25%;"></td>
        <td style="width:25%;"></td>
        <td style="width:25%;"></td>
        <td style="width:25%;"></td>
    </tr>

    <tr>
        <th style="width: 10%;">SR. NO.</th>
        <th style="width: 30%;">PARAMETER</th>
        <th style="width: 30%;">SPECIFICATION</th>
        <th style="width: 30%;">RESULT</th>
    </tr>

    @php
    $count = 1;
    @endphp
    @foreach($coa->coaItems as $item)
    <tr>
        <td style="width: 10%;">
            {!! $loop->index+1 !!}.
        </td>
        <td style="width: 30%;">
            {!! $item->parameter !!}
        </td>
        <td style="width: 30%;">
            {!! $item->specification !!}
        </td>
        <td style="width: 30%;">
            {!! $item->result !!}
        </td>
    </tr>
    @php
    $count++;
    @endphp
    @endforeach
</table>

<table class="table table-bordered border-secondary table-nowrap">
    <colgroup>
        <col class="col-25">
        <col class="col-25">
        <col class="col-25">
        <col class="col-25">
    </colgroup>
    <tr>
        <th class="col-25" style="text-align: left;">REMARKS</th>
        <td colspan="2" class="col-50">
            {{$coa->remarks}}
        </td>
        <td class="col-25"  rowspan="2" style="height:70px;vertical-align: text-top;with:20%;">AUTH. SIG.</td>
    </tr>

    <tr>
        <th class="col-25" style="text-align: left;">PREPARED BY</th>
        <td colspan="2" class="col-50">
            {{$coa->prepared_by}}
        </td>
    </tr>

</table>

</body>
</html>