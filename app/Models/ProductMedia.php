<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use phpDocumentor\Reflection\Types\Self_;

class ProductMedia extends Model
{
    /**
     * @var string
     */
    protected $table = 'kod_product_medias';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'hash_id', 
        'product_id',
        'media',
        'media_no',
        'display_order',
        'status',
        'created_by_ip',
        'modified_by_ip',
    ];

    /**
     * @Description Add medicine.
     */

    public static function store($request, $product){

        $media = [
            'product_id'          => $product->id,
            'created_by_ip'         => $request->ip(),
            'modified_by_ip'         => $request->ip(),
        ];
        
        if ($request->file('product_image')) {
            $media['hash_id']  = generateHashId();
            $media['display_order'] = $request->media_display_order;
            $media['status'] = '1';
            $create = self::create($media);
            $create->update(['media' => imageSaveDirectory("media_1", $request->file('product_image'), 'products', $create->id)]);
        }

        return $create;

    }

}
