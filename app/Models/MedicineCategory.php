<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MedicineCategory extends Model
{
    /**
     * @var string
     */
    protected $table = 'kod_med_categories';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'hash_id', 'section_id', 'position_id', 'raf_id', 'title', 'sub_heading', 'description', 'seo_url_slug',
        'image_1', 'image_2', 'display_order', 'status', 'advance_settings', 'meta_title', 'meta_keywords', 'meta_description',
        'embed_video'
    ];

    /**
     * @param $med_category_hash_id
     *
     * @return mixed
     * @description Return med cat instance
     */
    public static function hashedMedicineCategory($med_category_hash_id)
    {
        return self::where('hash_id', '=', $med_category_hash_id)->first();
    }

    /**
     * @Description Add med category.
     */

    public static function store($request){
//        $med_section   = MedicineSection::where('hash_id', $request->get('section_id'))->first();
        $med_category = self::create(
            [
                'hash_id'        => generateHashId(),
                'section_id'          => $request->section_id,
                'position_id'          => $request->position_id,
                'raf_id'          => $request->raf_id,
                'title'          => $request->title,
                'sub_heading'          => $request->sub_heading,
                'seo_url_slug'          => makeSlug($request->title),
                'description'          => $request->description,
                'status'         => $request->status,
                'display_order' => $request->display_order,
                'embed_video' => $request->embed_video,
                'advance_settings' => $request->advance_settings,
                'meta_title' => $request->meta_title,
                'meta_keywords' => $request->meta_keywords,
                'meta_description' => $request->meta_description,
            ]
        );
        if($request->file('image_1')){
            $med_category->update(['image_1' => imageSaveDirectory("image_1",$request->file('image_1'),'category',$med_category->hash_id)]);
        }
        if($request->file('image_2')){
            $med_category->update(['image_2' => imageSaveDirectory("image_2",$request->file('image_2'),'category',$med_category->hash_id)]);
        }
        return $med_category;
    }

    /**
     * Get the section that owns the category.
     */
    public function section()
    {
        return $this->belongsTo(MedicineSection::class);
    }

    /**
     * Get the medicines for the category.
     */
    public function medicines()
    {
        return $this->hasMany(Medicine::class, 'category_id');
    }
}
