<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;
use Auth;

class PatientDetail extends Model
{
    /**
     * @var string
     */
    protected $table = 'kod_patient_details';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'patient_id',
        'delivery_address_1',
        'delivery_address_2',
        'delivery_address_3',
        'delivery_town_city',
        'delviery_county',
        'delivery_postcode',
        'billing_address_1',
        'billing_address_2',
        'billing_address_3',
        'billing_town_city',
        'billing_county',
        'billing_postcode'
        
    ];

    public static function deliveryAddressStoreUpdate($request){

        $user = Auth::guard('patient')->user();
        $data = [
            'patient_id'         => $user->id,
            'delivery_address_1' => $request->delivery_address_1,
            'delivery_address_2' => $request->delivery_address_2,
            'delivery_address_3' => $request->delivery_address_3,
            'delivery_town_city' => $request->delivery_town_city,
            'delivery_county'    => $request->delivery_county,
            'delivery_postcode'  => $request->delivery_postcode,
        ];

        $patient_details = self::where('patient_id',$user->id);
        if($patient_details){
            $patient_details->update($data);
        }else{
            $patient_details = self::create($data);
        }
        return $patient_details;

    }


    public static function billingAddressCreateUpdate($request){

        $user = Auth::guard('patient')->user();
        $data = [

                'patient_id'         => $user->id,
                'billing_address_1'  => $request->billing_address_1,
                'billing_address_2'  => $request->billing_address_2,
                'billing_address_3'  => $request->billing_address_3,
                'billing_town_city'  => $request->billing_town_city,
                'billing_county'     => $request->billing_county,
                'billing_postcode'   => $request->billing_postcode,
        
        ];
        $patient_details = self::where('patient_id',$user->id);
        if($patient_details){
            $patient_details->update($data);
        }else{
            $patient_details = self::create($data);
        }
        return $patient_details;

    }




}
