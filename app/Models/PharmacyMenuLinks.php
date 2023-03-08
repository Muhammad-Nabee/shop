<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PharmacyMenuLinks extends Model
{

    protected $table = 'kod_menu_links';
    protected $fillable = ['menu_id', 'parent_id', 'reference_id', 'reference_url', 'new_tab', 'reference_type', 'title', 'display_order', 'status'];


    public function childs(){

        return $this->hasMany('App\Models\PharmacyMenuLinks', 'parent_id', 'id');
    
    }

        
    public function service(){

        return $this->hasOne('App\Models\Service','id', 'reference_id');

    }


    public function page(){

        return $this->hasOne('App\Models\Page','id', 'reference_id');

    }
    
    public function static_page(){

        return $this->hasOne('App\Models\StaticPage','id', 'reference_id');

    }
    

}

