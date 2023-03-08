<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @method static where(string $string, int $int)
 */
class DeliveryMethods extends Model
{

    //
	protected $table   = "kod_delivery_methods";

    protected $fillable = [
        "hash_id",
        "title",
        "type_id",
        "description",
        "long_description",
        "image",
        "price",
        "display_order",
        "delivery_type",
        "status",
        "created_by_ip",
        "modified_by_ip"
    ];

    /**
     * @Description Add record in banners table.
     */

    public static function store($request){


        $delivery = [
            "hash_id"          => generateHashId(),
            "title"            => $request->title,
            "description"      => $request->description,
            "long_description" => $request->long_description,
            "price"            => $request->price,
            "display_order"    => $request->display_order,
            "delivery_type" => $request->delivery_type,
            "status"           => $request->status,
            "country"          => $request->country,
            "created_by_ip"    => $request->ip(),
        ];
        $deliveryMethods = self::create($delivery);
        if($request->file('image')){
             $deliveryMethods->update(['image' => imageSaveDirectory($request->title,$request->file('image'),'deliverymethods',$deliveryMethods->id)]);
        }
        return $deliveryMethods;

    }



}
