<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class ReviewAllowe extends Model
{

    protected $table   = "kod_allowe_reviews";

    protected $fillable = [
        'hash_id',
        'one_star',
        'two_star',
        'three_star',
        'four_star',
        'five_star'
    ];



}