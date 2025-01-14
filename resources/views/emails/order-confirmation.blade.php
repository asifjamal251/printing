<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Order Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 12px;
        }
        table, th, td {
            border: 1px solid #595959;
            border-collapse: collapse;
        }
        th, td {
            padding: 5px;
            text-align: left;
        }
        th {
            background-color: #f0e6cc;
        }
        .even {
            background-color: #fbf8f0;
        }
        .odd {
            background-color: #fefcf9;
        }
    </style>
</head>
<body>
<p>Respected Madam/Sir</p>
<p>Greetings from <b>{{get_app_setting('title')}} !!!</b></p>
<p>Please find attached purchase order</p>
<p>for your urgent execution.</p>
<p>Thankyou</p>
<p>Purchase Team:- {{get_app_setting('title')}}</p>

</body>
</html>
