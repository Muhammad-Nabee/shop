<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{

    //

	protected $table   = "kod_banners";

    protected $fillable = [
    	'hash_id',
    	'title',
    	'description',
    	'image',
    	'display_order',
    	'status',
    	'created_ip',
    	'updated_ip'
    ];

    /**
     * @Description Add record in banners table.
     */

    public static function store($request){

        $create_banner = self::create(
            [
                'hash_id'        => generateHashId(),
                'title'          => $request->title,
                'description'    => $request->description,
                'display_order' => $request->display_order,
                'status'         => $request->status,
                'created_ip'     => $request->ip()
            ]);
        if($request->file('image')){
             $create_banner->update(['image' => imageSaveDirectory($request->title,$request->file('image'),'banner',$create_banner->id)]);
        }
        return $create_banner;

    }

  

}
