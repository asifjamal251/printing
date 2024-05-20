<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class SiteSettingController extends Controller
{
    public function checkGstin($gstinNumber)
    {
        $response = Http::get("http://sheet.gstincheck.co.in/check/90e81dc57aced51487e38e59c5816f03/{$gstinNumber}");
        if ($response->successful()) {
            return $response->json();
        } else {
            return response()->json(['error' => 'Failed to fetch GSTIN information'], $response->status());
        }
    }

}
