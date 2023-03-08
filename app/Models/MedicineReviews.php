<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class MedicineReviews extends Model
{

    protected $table   = "kod_med_reviews";

    protected $fillable = [
        'hash_id',
        'order_id',
        'patient_id',
        'medicine_id',
        'strength_id',
        'quantity_id',
        'type',
        'rating',
        'rating_text',
        'status',
        'created_by_ip',
        'updated_by_ip',
        'updated_by_user_id'
    ];

    public static function get_common_fields($request){

        return [

            'rating'  => $request->rating,
            'rating_text'          => $request->rating_text,
            'status'         => trim('PENDING'),
            'created_by_ip'     => $request->ip()

        ];
    }

    public static function storeData($request, $order_detail){

        $common_fields = MedicineReviews::get_common_fields($request);
        $create_review = self::firstOrNew( $common_fields );
        if(!empty($create_review)){
            $create_review->hash_id =  generateHashId();
            $create_review->order_id =  $order_detail->order_id;
            $create_review->medicine_id =  $order_detail->medicine_id;
            $create_review->strength_id =  $order_detail->strength_id;
            $create_review->quantity_id =  $order_detail->quantity_id;
            $create_review->type = 'Product';
            $create_review->patient_id =  Auth::user()->id;
            $create_review->save();
            return $create_review;
        }

    }

    public function reviewPatient()
    {
        return $this->hasOne(Patient::class, 'id', 'patient_id');
    }
}
