<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Maf extends Model
{

    //

	protected $table   = "kod_maf";

    protected $fillable = [
        "order_details_id",
        "age",
        "symptoms",
        "pregnant_status",
        "condition_status",
        "medicine_status",
        "conditions",
        "medicine"
    ];


    /**
     * @Description Add record in banners table.
     */


    public static function storeData($cart_item,$order_id){
      
        $create = self::create(
            [
                "order_details_id"       => $order_id,
                "age"              => $cart_item['maf']['age'],
                "symptoms"         => $cart_item['maf']['symptoms'] ,
                "pregnant_status"  => $cart_item['maf']['pregnant_status'],
                "condition_status" => $cart_item['maf']['condition_status'],
                "medicine_status"  => $cart_item['maf']['medicine_status'],
                "conditions"       => $cart_item['maf']['condition'],
                "medicine"         => $cart_item['maf']['medicine'],
            ]
        );

        return $create;

    }

  

}
