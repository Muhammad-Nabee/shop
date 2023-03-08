<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Country extends Model
{

    use HasFactory;

    protected $table   = "kod_countries";
      protected $fillable = [
        'hash_id',
        'title',
        'country_code',
        'status',
        'modified_date',
        'modified_date',
        'updated_by_ip'
    ];

}