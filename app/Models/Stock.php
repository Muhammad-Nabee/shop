<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Stock extends Model
{

    protected $table = "kod_med_stock";

    protected $fillable = [
        'hash_id',
        'medicine_id',
        'strength_id',
        'quantity_id',
        'stock_level',
        'in_stock',
        'created_by_ip',
        'modified_by_ip'
    ];
}
