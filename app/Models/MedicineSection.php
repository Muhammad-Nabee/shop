<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MedicineSection extends Model
{
    /**
     * @var string
     */
    protected $table = 'kod_med_sections';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'hash_id', 'title', 'display_order', 'status'
    ];


    /**
     * @Description Add record in med section table.
     */

    public static function store($request){

        $med_section = self::create(
            [
                'hash_id'        => generateHashId(),
                'title'          => $request->title,
                'status'         => $request->status,
                'display_order' => $request->display_order,
            ]
        );
        return $med_section;
    }


    /**
     * Get the categories for the section.
     */
    public function categories()
    {
        return $this->hasMany(MedicineCategory::class, 'section_id');
    }

    public function allactivecategories()
    {
        return $this->hasMany(MedicineCategory::class, 'section_id')->where('status', 1);
    }
}
