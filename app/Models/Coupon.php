<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @method static where(string $string, string $coupon_code)
 */
class Coupon extends Model
{
    /**
     * @var string
     */
    protected $table = 'kod_coupons';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'hash_id',
        'title',
        'description',
        'coupon_code',
        'discount_value',
        'usage_limit',
        'usage_total',
        'coupon_type',
        'expiry_date_time',
        'has_expiry_date',
        'status',
        'created_by_ip',
        'updated_by_ip'
    ];

    /**
     * Store coupon
     * @param $request
     * @return mixed
     */
    public static function store($request) {
        $store_coupon = self::create(
            [
                'hash_id'        => generateHashId(),
                'title'          => $request->title,
                'description'    => $request->description,
                'coupon_code' => $request->coupon_code,
                'usage_limit' => $request->usage_limit,
                'coupon_type' => $request->coupon_type,
                'discount_price' => $request->dis_price,
                'discount_percentage' => $request->dis_percent,
                'expiry_date_time' => $request->expiry_date,
                'has_expiry_date' => $request->has_expiry,
                'is_expired' => $request->expired_status,
                'status'         => $request->active_status,
                'created_ip'     => $request->ip()
            ]);
        return $store_coupon;
    }
}
