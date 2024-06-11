<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\Schema;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Validator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
       // \URL::forceScheme('https');
        Paginator::useBootstrap();
        Schema::defaultStringLength(191);
        Blade::if('can', function ($expression,$type='admin') {
            return  auth('admin')->user()->hasAccess($expression);
           
        });

        Validator::extend('less_than_old_quantity', function ($attribute, $value, $parameters, $validator) {
            $data = $validator->getData();
            $index = explode('.', $attribute)[1];
            $oldQuantity = $data['billing_items'][$index]['old_quantity'];
            return $value <= $oldQuantity;
        });

        \ALajusticia\Logins\Logins::getIpAddressUsing(function () {
            return request()->ip();
        });
    }
}
