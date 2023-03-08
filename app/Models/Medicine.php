<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Medicine extends Model
{
    /**
     * @var string
     */
    protected $table = 'kod_med_medicines';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'hash_id', 'category_id', 'raf_id', 'raf_type', 'title',
        'seo_url_slug', 'sub_heading', 'description', 'type', 'generic_branded',
        'display_order', 'status'
    ];

    /**
     * @Description Add medicine.
     */

    public static function store($request){
        $medicine = self::create(
            [
                'hash_id'        => generateHashId(),
                'category_id'          => $request->category_id,
                'title'          => $request->title,
                'seo_url_slug'          => makeSlug($request->title),
                'status'         => $request->status,
                'display_order' => $request->display_order
            ]
        );
        return $medicine;
    }

    /** Update medicine info
     * @param $request
     * @return bool
     */
    public static function updateMedicineInfo($request, $medicine) {
        $updated = $medicine->update(
            [
                'category_id'          => $request->category_id,
                'title'          => $request->titles,
                'sub_heading'          => $request->sub_heading,
                'description'          => $request->descriptions,
                'generic_branded'          => $request->get('generic_branded', null),
                'status'         => $request->status_info,
                'display_order' => $request->display_order_info
            ]
        );
        return $updated;
    }

    /**
     * Get the medicine that owns the category.
     */
    public function category()
    {
        return $this->belongsTo(MedicineCategory::class);
    }

    public function medias()
    {
        return $this->hasMany(MedicineMedia::class, 'medicine_id');
    }

    public function allactivemedias()
    {
        return $this->hasMany(MedicineMedia::class, 'medicine_id')
                                ->where('status', 1);
    }

    public function medicineReviews()
    {
        return $this->hasMany(MedicineReviews::class, 'medicine_id')
            ->where('status', 'APPROVED')->orderBy('id', 'DESC');
    }

    public function allactivelongdesc()
    {
        return $this->hasMany(MedicineLongDescription::class, 'medicine_id')
            ->where('status', 1);
    }

    public function medicineprices()
    {
        return $this->hasMany(MedicinePricing::class, 'medicine_id');
    }
    public function allactivestrengths()
    {
        return $this->hasMany(MedicineStrength::class, 'medicine_id')
            ->where('status', 1)->orderBy('display_order','ASC');
    }

    public function allactivequantitiesNoStrength()
    {
        return $this->hasMany(MedicineQuantity::class, 'medicine_id')
            ->where('status', 1)->where('strength_id', '0');
    }

    public function metatags()
    {
        return $this->has(MedicineMetaTags::class, 'medicine_id');
    }
    public function metatag()
    {
        return $this->hasOne(MedicineMetaTags::class);
    }
}
