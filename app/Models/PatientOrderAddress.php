<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

/**
 * @method static firstOrNew(array $create)
 */
class PatientOrderAddress extends Model
{
    protected $table   = "kod_patients_orders_addresses";

    protected $fillable = [
        "hash_id",
        "order_id",
        "order_id",
        "address_1",
        "address_2",
        "address_3",
        "town",
        "county",
        "postcode",
        "b_address_1",
        "b_address_2",
        "b_address_3",
        "b_town",
        "b_address_1",
        "b_country",
        "b_mobile_no",
        "b_county",
        "b_postcode",
        "b_first_name",
        "b_last_name",
        "d_first_name",
        "email",
        "d_last_name",
        "d_address_1",
        "d_address_2",
        "d_address_3",
        "d_town",
        "d_county",
        "d_country",
        "d_mobile_no",
        "d_postcode",
        "gp_doctor_name",
        "gp_contact_no",
        "gp_fax_number",
        "gp_email_address",
        "gp_surgery_name",
        "gp_surgery_address",
        "gp_surgery_name_new",
        "gp_surgery_address_new",
        "created_by_ip",
        "modified_by_ip",
        "email",
    ];

    public static function storeData(PatientAddresses $patient_address, int $order_id) {

        $patient = auth()->user();
        $create = [
            "hash_id" => generateHashId(),
            "order_id" => $order_id,
            "b_address_1" => $patient_address->b_address_1,
            "b_address_2" => $patient_address->b_address_2,
            "b_address_3" => $patient_address->b_address_3,
            "b_town" => $patient_address->b_town,
            "b_county" => $patient_address->b_county,
            "b_first_name" => $patient_address->b_first_name,
            "b_last_name" => $patient_address->b_last_name,
            "b_postcode" => $patient_address->b_postcode,
            "d_address_1" => $patient_address->d_address_1,
            "d_address_2" => $patient_address->d_address_2,
            "d_address_3" => $patient_address->d_address_3,
            "d_town" => $patient_address->d_town,
            "d_county" => $patient_address->d_county,
            "d_first_name" => $patient_address->b_first_name,
            "d_last_name" => $patient_address->b_last_name,
            "d_postcode" => $patient_address->d_postcode,
        ];
        $create_order_address = self::firstOrNew( $create );
        $create_order_address->save();
        return $create_order_address;

    }
}