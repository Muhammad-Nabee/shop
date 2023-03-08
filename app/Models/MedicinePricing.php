<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MedicinePricing extends Model
{
    /**
     * @var string
     */
    protected $table = 'kod_med_pricing';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'hash_id', 'medicine_id', 'strength_id', 'quantity_id', 'price',
        'qty_allowed', 'discount_price', 'created_by_ip', 'modified_by_ip'
    ];

    /**
     * @Description Add record in med section table.
     */

    public static function store($request, $medicine, $strength, $quantity){

        $med_section = self::create(
            [
                'hash_id'        => generateHashId(),
                'medicine_id'          => $medicine->id,
                'strength_id'          => $strength->id,
                'quantity_id'          => $quantity->id,
                'qty_allowed'          => $request->get('qty_allowed') == null ? 1 : $request->get('qty_allowed'),
                'price'          => $request->price,
                'discount_price'          => $request->get('qty_allowed') == null ? 0 : $request->get('qty_allowed'),
                'created_by_ip'         => $request->ip(),
                'modified_by_ip' => $request->ip(),
            ]
        );
        return $med_section;
    }

    /**
     * Get the section that owns the category.
     */
    public function strength()
    {
        return $this->belongsTo(MedicineStrength::class);
    }

    /**
     * Get the section that owns the category.
     */
    public function quantity()
    {
        return $this->belongsTo(MedicineQuantity::class);
    }
}
