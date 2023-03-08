<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductMetaTags extends Model
{
    
    /**
     * @var string
     */

    protected $table = 'kod_product_meta_tags';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'hash_id', 
        'product_id',
        'meta_title',
        'meta_keywords',
        'meta_description',
        'created_by_ip',
        'modified_by_ip'
    ];

    public static function get_common_fields($request){

        return [
            'meta_title'          => $request->meta_title,
            'meta_keywords'       => $request->meta_keywords,
            'meta_description'    => $request->meta_description,
        ];

    }


    /**
     * @Description Add medicine meta tags.
     */
    public static function store($request, $medicine){
        $common_fields = MedicineMetaTags::get_common_fields($request);
        $check_meta_tags = MedicineMetaTags::where('medicine_id', $medicine->id)->first();
        $data = '';
        if ($check_meta_tags) {
            $common_fields['medicine_id'] = $medicine->id;
            $common_fields['modified_by_ip'] = $request->ip();
            $data = $check_meta_tags->update($common_fields);
        } else {
            $common_fields['hash_id'] = generateHashId();
            $common_fields['medicine_id'] = $medicine->id;
            $common_fields['created_by_ip'] = $request->ip();
            $common_fields['modified_by_ip'] = $request->ip();
            $data = self::create($common_fields);
        }
        return $data;
    }
}
