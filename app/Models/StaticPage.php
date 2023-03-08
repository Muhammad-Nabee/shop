<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StaticPage extends Model
{

    protected $table = 'kod_static_pages';
    protected $fillable = ['title', 'url', 'display_order', 'status', 'created_at', 'created_by_ip', 'updated_at', 'modified_by_ip'];

}
