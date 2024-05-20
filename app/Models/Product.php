<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class Product extends Model
{

    use HasFactory,SoftDeletes;
    use LogsActivity;
    protected $table = 'products';
    protected $fillable = ['id','quantity', 'product_type_id', 'code'];


    public function product(){
        return $this->hasOne(Product::class,'id','product_id');
    }

    public function category(){
        return $this->hasOne(Category::class,'id','category_id');
    }

    public function unit(){
        return $this->hasOne(Unit::class,'id','unit_id');
    }

    

    public function transaction(){
        return $this->hasMany(Transaction::class, 'product_id', 'id');
    }


    public function productType()
    {
        return $this->belongsTo(ProductType::class);
    }

    public static function boot()
    {
        parent::boot();

        static::creating(function ($product) {
            // Generate code number based on product type
            $product->code = static::generateCode($product->productType);
        });
    }

 protected static function generateCode($productType)
{
    if (!$productType) {
        return null; // Handle invalid product type
    }

    $startSeries = $productType->start_series;

    // Get the last product of this type to determine the next code number
    $lastProduct = static::where('product_type_id', $productType->id)->orderBy('code', 'desc')->first();
    $lastCodeNumber = $lastProduct ? intval(substr($lastProduct->code, strlen($startSeries))) : 0;

    // Increment the code number
    $nextCodeNumber = $lastCodeNumber + 1;

    // Combine start series with the generated number, padding with leading zeros
    $code = $startSeries . str_pad($nextCodeNumber, strlen($startSeries), '0', STR_PAD_LEFT);

    return $code;
}

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->useLogName('product')
        ->setDescriptionForEvent(fn(string $eventName) => "product has been {$eventName}")
        ->logOnly(['*']);
        // Chain fluent methods for configuration options
    }
}
