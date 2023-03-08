<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MedicineMetaTags extends Model
{
    /**
     * @var string
     */
    protected $table = 'kod_med_meta_tags';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'hash_id', 'medicine_id', 'meta_title', 'meta_keywords', 'meta_description',
        'created_by_ip', 'modified_by_ip'
    ];

    /**
     * @Description Add medicine meta tags.
     */

    public static function store($request, $medicine){
        $medicine_meta_tags_create = [
            'hash_id'        => generateHashId(),
            'medicine_id'          => $medicine->id,
            'meta_title'          => $request->meta_title,
            'meta_keywords'          => $request->meta_keywords,
            'meta_description'          => $request->meta_description,
            'created_by_ip'         => $request->ip(),
            'modified_by_ip'         => $request->ip(),
        ];
        $medicine_meta_tags_update = [
            'medicine_id'          => $medicine->id,
            'meta_title'          => $request->meta_title,
            'meta_keywords'          => $request->meta_keywords,
            'meta_description'          => $request->meta_description,
            'modified_by_ip'         => $request->ip(),
        ];
        $check_meta_tags = MedicineMetaTags::where('medicine_id', $medicine->id)->first();
        $data = '';
        if ($check_meta_tags) {
            $data = $check_meta_tags->update($medicine_meta_tags_update);
        } else {
            $data = self::create($medicine_meta_tags_create);
        }
        return $data;
    }

    public function medicine()
    {
        return $this->belongsTo(Medicine::class);
    }


}
