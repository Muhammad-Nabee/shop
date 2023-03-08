<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use App\Http\Traits\CommanTrait;
use App\Models\EmailTemplate;
use App\Models\PharmacyInfo;
use App\Helpers\CommonHelper;

/**
 * @method static where(string $string, $id)
 */

class Patient extends Authenticatable
{

    use Notifiable;

    /**
     * @var string
     */
    protected $table = 'kod_patients';

    public const UK_COUNTRY = 235;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'hash_id',
        'country_id',
        'first_name',
        'last_name',
        'address_1',
        'email',
        'town_city',
        'postcode',
        'mobile_no',
        'password',
        'status',
        'is_verified',
    ];

      /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */

    protected $hidden = [
        'password'
    ];

    /**
     * Store patient
     * @param $request
     * @return mixed
     */

    public static function get_common_fields($request){

        return [
            'first_name'     => ucfirst($request->first_name),
            'last_name'      => ucfirst($request->last_name),
            'address_1'     => ucfirst($request->address_1),
            'town_city'     =>ucfirst($request->town_city),
            'postcode'      =>$request->postcode,
            'email'      =>$request->email,
            'mobile_no'     =>$request->mobile_no,
        ];

    }

    public static function store($request) {

            $store_patient = self::create(
               [
                'hash_id'        => generateHashId(),
                'first_name'     => ucfirst($request->first_name),
                'last_name'      => ucfirst($request->last_name),
                'email'          => ucfirst($request->email),
                'address_1'      =>ucfirst($request->address_1),
                'town_city'     =>ucfirst($request->town_city),
                'postcode'      =>$request->postcode,
                'mobile_no'     =>$request->mobile_no,
                 'country_id'   =>$request->country_id,
                'is_verified'    => 1,
                'status'         => 1,
                'password'       => Hash::make($request->password),
                'created_by_ip'  => $request->ip(),
            ]);

            // Patient::registerEmailPatient($request,$store_patient);
            // Patient::registerEmailAdmin($request);


        return $store_patient;

    }

    public static function registerEmailAdmin($request){

        $email_template = EmailTemplate::where('id', 15)->first();
        $pharmacy_info = PharmacyInfo::first();
        $to_email_address = $pharmacy_info->email_address_primary;
        $from_email_address = $pharmacy_info->email_address_secondary;
        $reply_to_email_address =$pharmacy_info->email_address_primary;
        $email_from_text = $pharmacy_info->pharmacy_name;

        $email_subject  = $email_template->email_subject;
        $email_body     =    $email_template->email_body;

        $WEBSITE_DASHBOARD = '<a href="'.env('WEBSITE_DASHBOARD').'"> dashboard </a>';

        // $link = '<a href="'.$url.'">'.'reset password'.'</a>';

        $signature = signature();

        $search_arr = array(
            '[DASHBOARD]',
            '[PHARMACY_SIGNATURES]'
        );

        $replace_arr = array(
            $WEBSITE_DASHBOARD,
            $signature
        );
        $email_body = str_replace($search_arr, $replace_arr, $email_body);
        $attachment_arr = array();
        CommonHelper::send_email_ses(
            $to_email_address,
            $from_email_address,
            $reply_to_email_address,
            $email_from_text,
            $email_subject,
            $email_body,
            $attachment_arr
        );


    }

    public static function registerEmailPatient($request,$patient){

        $email_template = EmailTemplate::where('id', 14)->first();

        $pharmacy_info = PharmacyInfo::first();


        $to_email_address = $request->email;
        $from_email_address = $pharmacy_info->email_address_secondary;
        $reply_to_email_address =$pharmacy_info->email_address_primary;
        $email_from_text = $pharmacy_info->pharmacy_name;

        $email_subject  = $email_template->email_subject;
        $email_body     =    $email_template->email_body;

        $pharmacy_name =  $pharmacy_info->pharmacy_name;
        // $link = '<a href="'.$url.'">'.'reset password'.'</a>';

        $signature = signature();

        $search_arr = array(
            '[FIRST_NAME]',
            '[Onlinepharmacyshop]',
            '[PHARMACY_SIGNATURES]'
        );

        $replace_arr = array(
            ucfirst($patient->first_name),
            $pharmacy_name,
            $signature
        );
        $email_body = str_replace($search_arr, $replace_arr, $email_body);
        $attachment_arr = array();
        CommonHelper::send_email_ses(
            $to_email_address,
            $from_email_address,
            $reply_to_email_address,
            $email_from_text,
            $email_subject,
            $email_body,
            $attachment_arr
        );


    }


    public static function updateData($request, $hash_id){

        $common_fields = Patient::get_common_fields($request);
        $patient_settings = self::where('hash_id', $hash_id)->first();
        $patient_settings->update( $common_fields );
        return $patient_settings;

    }


    public static function updateAddresses($request, $hash_id)
    {

        $addresses = self::where('hash_id', $hash_id)->first();

        $addresses->update([
            'address_1'          => $request->address_1,
            'address_2'    => $request->address_2,
            'address_3'  => $request->address_3,
            'town_city'         => $request->town_city,
            'county'         => $request->county,
            'postcode'         => $request->postcode,
            'address_1'      =>$request->address_1,
             'town_city'     =>$request->town_city,
            'postcode'      =>$request->postcode,
            'mobile_no'     =>$request->mobile_no,
        ]);
        return $addresses;
    }

    public function patientAddress() {
        return $this->hasOne(PatientAddresses::class, 'patient_id');
    }




}