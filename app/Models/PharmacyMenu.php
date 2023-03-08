<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PharmacyMenu extends Model
{

    protected $table = 'kod_menus';
   
    protected $fillable = ['pharmacy_id','position_id','parent_id','reference_id','reference_url','new_tab','reference_type','title','display_order','status'];

    public function position(){
        return $this->belongsTo('App\Models\PharmacyMenuPosition','position_id', 'id');
    }

    public function pharmacy_menu_links(){
        return $this->hasMany('App\Models\PharmacyMenuLinks', 'menu_id', 'id');
    }
    
   

}
