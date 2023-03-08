<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductDescription extends Model
{
    /**
     * @var string
     */
    protected $table = 'kod_product_long_description';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $fillable = [
        'hash_id',
        'product_id', 
        'title',
        'description',
        'display_order',
        'status',
        'created_by_ip',
        'modified_by_ip'
    ];


    public static function get_common_fields($request){

        return [
            'title'          => $request->title,
            'description'          => $request->description,
            'status'         => $request->status,
            'display_order' => $request->display_order,
        ];

    }


    public static function storeData($request, $medicine){

        $common_fields = MedicineLongDescription::get_common_fields($request);
        $common_fields['product_id'] = $medicine->id;
        $common_fields['description'] = $request->longdescription;
        $common_fields['created_by_ip'] = $request->ip();
        $common_fields['modified_by_ip'] = $request->ip();
        $create_med_long_description = self::firstOrNew( $common_fields );
        if(!empty($create_med_long_description)){
            $create_med_long_description->hash_id =  generateHashId();
            $create_med_long_description->save();
            return $create_med_long_description;
        }
    }

    public static function updateData($request, $hash_id){

        $common_fields = MedicineLongDescription::get_common_fields($request);

        $long_desc = self::where('hash_id', $hash_id)->first();
        $common_fields['description'] = $request->longdescriptionedit;
        $long_desc->update( $common_fields );

        return $long_desc;

    }

    public static function deleteData($hash_id){

        $desc = MedicineLongDescription::where('hash_id', $hash_id)->first();

        return $desc->delete();

    }
}
