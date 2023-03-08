<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MedicineLongDescription extends Model
{
    /**
     * @var string
     */
    protected $table = 'kod_med_long_description';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'hash_id', 'medicine_id', 'title', 'description', 'display_order', 'status',
        'created_by_ip', 'modified_by_ip'
    ];

    /**
     * @Description Add med long desc.
     */

    public static function store($request, $medicine){
        $med_long_desc = self::create(
            [
                'hash_id'        => generateHashId(),
                'medicine_id'          => $medicine->id,
                'title'          => $request->title,
                'description'          => $request->description,
                'status'         => $request->status,
                'display_order' => $request->display_order,
                'created_by_ip' => $request->ip(),
                'modified_by_ip' => $request->ip(),
            ]
        );
        return $med_long_desc;
    }
}
