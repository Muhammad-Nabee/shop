<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class OrderNotes extends Model
{
    protected $table   = "kod_notes";

    protected $fillable = [
        'hash_id',
        'type',
        'module_id',
        'order_id',
        'user_id',
        'note',
        'created_by_ip',
        'modified_by_ip'
    ];

}
