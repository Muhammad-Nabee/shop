<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MedicineQuantity extends Model
{
    /**
     * @var string
     */
    protected $table = 'kod_med_quantity';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'hash_id', 'medicine_id', 'strength_id', 'qty', 'form',
        'display_order', 'status', 'created_by_ip', 'modified_by_ip'
    ];

    /**
     * @Description Add med quantity
     */

    public static function store($request, $medicine){
        $med_quantity = self::create(
            [
                'hash_id'        => generateHashId(),
                'medicine_id'          => $medicine->id,
                'strength_id'          => $request->strength_ids,
                'qty'          => $request->qty,
                'form'          => $request->form,
                'status'         => $request->status,
                'display_order' => $request->display_order_qty,
                'created_by_ip' => $request->ip(),
                'modified_by_ip' => $request->ip(),
            ]
        );
        return $med_quantity;
    }

    /**
     * Get the section that owns the category.
     */
    public function strength()
    {
        return $this->belongsTo(MedicineStrength::class);
    }

    /**
     * Get the categories for the section.
     */
    public function pricings()
    {
        return $this->hasMany(MedicinePricing::class, 'quantity_id');
    }

    public function price()
    {
        return $this->hasOne(MedicinePricing::class, 'quantity_id');
    }
}
