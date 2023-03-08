<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MedicineStrength extends Model
{
    /**
     * @var string
     */
    protected $table = 'kod_med_strengths';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'hash_id', 'medicine_id', 'strength', 'display_order', 'status', 'created_by_ip', 'modified_by_ip'
    ];


    /**
     * @Description Add med strength
     */

    public static function store($request, $medicine){
        $med_strength = self::create(
            [
                'hash_id'        => generateHashId(),
                'medicine_id'          => $medicine->id,
                'strength'          => $request->strength,
                'status'         => $request->status,
                'display_order' => $request->display_order_str,
                'created_by_ip' => $request->ip(),
                'modified_by_ip' => $request->ip(),
            ]
        );
        return $med_strength;
    }

    /**
     * Get the categories for the section.
     */
    public function quantities()
    {
        return $this->hasMany(MedicineQuantity::class, 'strength_id');
    }

    /**
     * Get the categories for the section.
     */
    public function pricings()
    {
        return $this->hasMany(MedicinePricing::class, 'strength_id');
    }


    public function allactivequantities()
    {
        return $this->hasMany(MedicineQuantity::class, 'strength_id')
            ->where('status', 1);
    }
}
