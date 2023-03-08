<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductRegNo extends Model
{
    /**
     * @var string
     */

    protected $table = 'kod_product_reg_no';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $fillable = [
        'hash_id',
        'product_id', 
        'sku',
        'pip_code',
        'ean',
    ];

}
