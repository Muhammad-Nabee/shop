<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FilledRaf extends Model
{
    protected $table   = "kod_filled_raf";

    protected $fillable = [
        'hash_id',
        'order_id',
        'med_cat_id',
        'medicine_id',
        'strength_id',
        'quantity_id',
        'raf_id',
        'raf_key',
        'raf_value',
        'created_by_ip',
        'modified_by_ip',
    ];
}
