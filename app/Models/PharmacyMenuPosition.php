<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PharmacyMenuPosition extends Model
{

    protected $table = 'kod_menu_positions';
    protected $fillable = ['title','status'];
}
