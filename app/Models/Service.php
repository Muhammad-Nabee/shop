<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{

    //

	protected $table   = "kod_services";

    protected $fillable = [
        "hash_id",
        "title",
        "short_description",
        "long_description",
        "price",
        "thumbnail",
        "image",
        "display_order",
        "status",
        "slug",
        "meta_title",
        "meta_keywords",
        "meta_description",
        "position",
        "category",
        "fa_icon",
        "service_url",
        "bookable"
    ];

    /**
     * @Description Add record in banners table.
     */

    public static function store($request){

         $services =[
            "hash_id"           => generateHashId(),
            "title"             => $request->title,  
            "short_description" => $request->short_description,
            "long_description"  => $request->long_description,
            "price"             => $request->price,
            "display_order"     => $request->display_order,
            "status"            => $request->status,
            "slug"              => makeSlug($request->title),
            "meta_title"        => $request->meta_title,
            "meta_keywords"     => $request->meta_keywords,
            "meta_description"  => $request->meta_description,
            "position"           => $request->position,
            "category"          => $request->category,
            "fa_icon"           => $request->fa_icon,
            "service_url"       => $request->service_url,
            "bookable"          => $request->bookable
        ];

        $createService = self::create($services);
        if($request->file('image')){
            $createService->update(['image' => imageSaveDirectory($request->title,$request->file('image'),'services',$createService->id)]);
        }
        if($request->file('thumbnail')){
           $createService->update(['thumbnail' => imageSaveDirectory($request->title,$request->file('thumbnail'),'services/thumbnail',$createService->id)]);
        }
        return $createService;

    }

}