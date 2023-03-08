<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Holiday extends Model
{

       /**
     * @var string
     */
    protected $table = 'kod_holidays';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $fillable = [
        'hash_id', 
        'title',
        'date',
    ];
    

}
