<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

/**
 * @method static where(string $string, $id)
 */
class PatientAddresses extends Model
{

	protected $table   = "kod_patients_addresses";

    protected $fillable = [
        "hash_id",
        "patient_id",
        "b_address_1",
        "b_address_1",
        "b_address_2",
        "b_address_3",
        "b_town",
        "b_county",
        "b_country",
        "b_postcode",
        "d_address_1",
        "d_address_2",
        "d_address_3",
        "d_town",
        "d_county",
        "d_postcode",
        'b_first_name',
        'b_last_name',
        'd_first_name',
        'd_last_name',
        'mobile_no',
        'b_address_1',
        'b_country',
        'b_postcode',
        'b_mobile_no',
        'd_country',
        'd_email',
        'b_email',
         'd_mobile_no',

    ];


    public static function get_common_fields($request){

        return [
            'b_address_1'    => $request->b_address_1,
            'b_town'         => $request->b_town,
            'b_country'       => $request->b_country,
            'd_country'       => $request->b_country,
            'b_postcode'     => $request->b_postcode,
            'd_address_1'    => $request->d_address_1,
            'd_town'         => $request->d_town,
            'd_postcode'     => $request->d_postcode,
            'b_first_name'   => $request->b_first_name,
            'b_last_name'    => $request->b_last_name,
            'd_first_name'   => $request->d_first_name,
            'd_last_name'    => $request->d_last_name,
            'b_mobile_no'    => $request->b_mobile_no,
            'b_email'    => $request->b_email,
            'd_email'    => $request->d_email,



        ];

    }

    public static function storeData($request){

        $common_fields = PatientAddresses::get_common_fields($request);
        $create_addresses = self::firstOrNew( $common_fields );
        if(!empty($create_addresses)){
            $create_addresses->hash_id =  generateHashId();
            $create_addresses->patient_id = Auth::user()->id;
            $create_addresses->save();
            return $create_addresses;
        }

    }

    public static function updateData($request, $hash_id)
    {
        $common_fields = PatientAddresses::get_common_fields($request);
        $addresses = self::where('hash_id', $hash_id)->first();
        $addresses->update($common_fields);
        return $addresses;
    }

    public static function updateGp($request, $hash_id)
    {

        $addresses = self::where('hash_id', $hash_id)->first();

        $addresses->update([
            'gp_surgery_name'         => $request->gp_surgery_name,
            'gp_surgery_address'         => $request->gp_surgery_address,
            'gp_surgery_email'         => $request->gp_surgery_email,
        ]);
        return $addresses;
    }

    public static function updateBillingAddress($request, $hash_id)
    {

        $addresses = self::where('hash_id', $hash_id)->first();

        $addresses->update([
            'b_address_1'    => $request->b_address_1,
            'b_town'         => $request->b_town,
            'b_country'       => $request->b_country,
            'd_country'       => $request->b_country,
            'b_postcode'     => $request->b_postcode,
            'd_address_1'    => $request->d_address_1,
            'd_town'         => $request->d_town,
            'd_postcode'     => $request->d_postcode,
            'b_first_name'   => $request->b_first_name,
            'b_last_name'    => $request->b_last_name,
            'd_first_name'   => $request->d_first_name,
            'd_last_name'    => $request->d_last_name,
            'b_mobile_no'    => $request->b_mobile_no,
            'b_email'    => $request->b_email,
            'd_email'    => $request->d_email,
        ]);
        return $addresses;
       
    }

    public static function storeBillingAddress($request) {

        return self::create([
            'b_address_1'          => $request->b_address_1,
            'b_address_2'    => $request->b_address_2,
            'b_address_3'  => $request->b_address_3,
            'b_town'         => $request->b_town,
            'b_county'         => $request->b_county,
            'b_postcode'         => $request->b_postcode,
        ]);

    }

    public static function updateDeliveryAddress($request, $hash_id)
    {

        $addresses = self::where('hash_id', $hash_id)->first();

        $addresses->update([
            'd_address_1'          => $request->d_address_1,
            'd_address_2'    => $request->d_address_2,
            'd_address_3'  => $request->d_address_3,
            'd_town'         => $request->d_town,
            'd_county'         => $request->d_county,
            'd_postcode'         => $request->d_postcode,
        ]);
        return $addresses;
    }


}