<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Page extends Model
{


	protected $table   = "kod_pages";

    protected $fillable = [
    	"hash_id","title","url_slug","description","image","meta_title","meta_keywords","meta_description","status","created_by_ip","modified_by_ip","advanced_settings"
    ];

    public static function store($request){

         $create = self::create(
            [
                'hash_id'           => generateHashId(),
                'title'             => $request->title,
                'url_slug'          => makeSlug($request->title),
                'description'       => $request->description,
                'status'            => $request->status,
                'meta_title'        => $request->meta_title,
                'meta_keywords'     => $request->meta_keywords,
                'meta_description'  => $request->meta_description,
                'created_by_ip'     => $request->ip(),
            ]);
         if($request->file('image')){
             $create->update(['image' => imageSaveDirectory($request->title,$request->file('image'),'page',$create->id)]);
         }
         return $create;

    }

  

}
