<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PharmacyInfo extends Model
{

    //
	protected $table   = "kod_pharmacy_profile";

    protected $fillable = [
        "hash_id",
        "pharmacy_name",
        "business_name",
        "contact_number_p",
        "contact_number_s",
        "mobile_number",
        "whats_number",
        "fax_number",
        "company_number",
        "gphc_reg_number",
        "vat_number",
        "address_1",
        "address_2",
        "address_3",
        "city",
        "county",
        "post_code",
        "facebook_url",
        "instagram_url",
        "twitter_url",
        "linkedin_url",
        "youtube_url",
        "created_by_ip",
        "modified_by_ip"
    ];

    /**
     * @Description Add record in banners table.
     */

    public static function store($request){

         $pharmcayInfo = [
            "hash_id"          => generateHashId(),
            "pharmacy_name"    => $request->pharmacy_name,
            "business_name"    => $request->business_name,
            "contact_number_p" => $request->contact_number_primary,
            "contact_number_s" => $request->contact_number_secondary,
            "mobile_number"    => $request->mobile_number,
            "whats_number"     => $request->whats_number,
            "fax_number"       => $request->fax_number, 
            "company_number"   => $request->company_number,
            "gphc_reg_number"  => $request->gphc_reg_number,
            "vat_number"       => $request->vat_number,
            "address_1"        => $request->address_1,
            "address_2"        => $request->address_2,
            "address_3"        => $request->address_3,
            "city"             => $request->city,
            "county"           => $request->county,
            "post_code"        => $request->post_code,
            "facebook_url"     => $request->facebook_url,
            "instagram_url"    => $request->instagram_url,
            "twitter_url"      => $request->twitter_url,
            "linkedin_url"     => $request->linkedin_url,
            "youtube_url"      => $request->youtube_url,
            "created_by_ip"    => $request->ip(),
            "modified_by_ip"   => $request->ip()
        ];

        $createUpdatePharmcayInfo = self::first();
        if($createUpdatePharmcayInfo){
           unset($pharmcayInfo[0]);
           $createUpdatePharmcayInfo->update($pharmcayInfo);
        }else{
           $createUpdatePharmcayInfo = self::create($pharmcayInfo);
        }
        return $createUpdatePharmcayInfo;

    }

}
