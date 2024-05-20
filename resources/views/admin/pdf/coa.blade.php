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
            background: #f0e6cc;
        }
        .even {
            background: #fbf8f0;
        }
        .odd {
            background: #fefcf9;
        }
        .text-center{
            text-align: center;
        }
    </style>
</head>
<body>


    <table>
    <tbody>
        <tr class="text-center">
            <td colspan="4">
                <h4 class="anta-regular">{{$coa->title}}</h4>
                <p>{{$coa->address}}</p>
            </td>
        </tr>
        <tr class="text-center">
            <td colspan="4">Company Description</td>
        </tr>
        <tr class="text-center">
            <td colspan="4">Certificate of Analysis</td>
        </tr>
        <tr>
            <td colspan="4"><b>Name of the customer: </b> {{$coa->client}}</td>
        </tr>
        <tr>
            <td colspan="4"><b>Product Name: </b></b> {{$coa->product}}</td>
        </tr>
        <tr>
            <td colspan="2"><b>Product Code: </b> {{$coa->product_code}}</td>
            <td colspan="2"><b>Manufacturing Date: </b>{{$coa->manufacturing_date->format('d F, Y')}}</td>
        </tr>

        <tr>
            <td colspan="2"><b>Batch No: </b>{{$coa->batch}}</td>
            <td colspan="2"><b>Expiry Date: </b>{{$coa->expiry_date->format('d F, Y')}}</td>
        </tr>
       <tr>
            <th>Sr. No</th>
            <th>Parameters</th>
            <th>Specification</th>
            <th>Results</th>
        </tr>
        @php
            $count = 1;
        @endphp
        @foreach($coa->coaItems as $item)
            <tr>
                <td>{{$loop->index+1}}</td>
                <td>{{$item->parameter}}</td>
                <td>{{$item->specification}}</td>
                <td>{{$item->result}}</td>
            </tr>
            @php
                $count++;
            @endphp
        @endforeach
        <tr>
            <td>{{$count}}</td>
            <td>TEXT</td>
            <td>AS PER APPROVAL</td>
            <td>AS PER APPROVAL</td>
        </tr>

        

    </tbody>
</table>

<table style="margin-top: 40px;border: none;">
    <tr style="border: none;">
        <td style="padding-bottom: 20px;border:none;" colspan="2">PREPARED BY<br></td>
        <td style="padding-bottom: 20px;border:none;text-align:right" colspan="2">For COLOUR IMPRESSIONS</td>
    </tr>
    <tr style="border: none;">
        <td style="padding-bottom: 20px;border:none;" colspan="2"><br></td>
        <td style="padding-bottom: 20px;border:none;text-align:right" colspan="2">Auth  sign. </td>
    </tr>
</table>

</body>
</html>