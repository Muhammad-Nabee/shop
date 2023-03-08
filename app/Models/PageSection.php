<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PageSection extends Model
{

    //

	protected $table   = "kod_page_sections";

    protected $fillable = [
        "hash_id","title","url_slug","description","status","created_by_ip","modified_by_ip","advanced_settings"
    ];

    /**
     * @Description Add record in banners table.
     */

    public static function store($request){

        $create_banner = self::create(
            [
                'hash_id'        => generateHashId(),
                'url_slug'       => makeSlug($request->title),
                'title'          => $request->title,
                'description'    => $request->description,
                'status'         => $request->status,
                'created_ip'     => $request->ip(),
            ]
        );
        return $create_banner;

    }

  

}
