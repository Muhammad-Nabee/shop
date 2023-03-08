<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Faqs extends Model
{

    //

	protected $table   = "kod_faqs";

    protected $fillable = [
        "hash_id","question","answer","display_order","status","created_by_ip","modified_by_ip"
    ];

    /**
     * @Description Add record in banners table.
     */

    public static function store($request){

        $create_banner = self::create(
            [
                'hash_id'        => generateHashId(),
                'question'       => $request->question,
                'answer'         => $request->answer,
                'display_order'  => $request->display_order,
                'status'         => $request->status,
                'created_ip'     => $request->ip(),
            ]
        );
        return $create_banner;

    }

  

}
