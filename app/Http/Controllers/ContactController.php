<?php

namespace App\Http\Controllers;

use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use App\Http\Traits\CommanTrait;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\ValidationException;
use App\Models\PharmacyInfo;

class ContactController extends Controller
{
    //

     use CommanTrait;

    public function __construct(){

        $this->commanData();

    }

    public function index(){

       return view('frontend.contactus.index');

    }

    /**
     * @param Request $request
     * @return RedirectResponse
     * @throws ValidationException
     */
    public function store(Request $request)
    {
        validateCaptcha($request->all())->validate();
        $this->validate($request, [
            'first_name'     => ['required'],
            'last_name'      => ['required'],
            'email_address'  => ['required'],
            'message'        => ['required'],
        ]);

        // $pharmacy_signatures = $this->pharmacy_info->pharmacy_name;


        $email_template = DB::table('kod_email_templates')->where("id", 11)->first();
        if($email_template) {

            $to_email_address = $this->pharmacy_info->email_address_primary;
            $reply_to_email_address = $request->email_address;
            $from_email_address = $this->pharmacy_info->email_address_secondary;
            $email_from_text = $request->first_name.' '.$request->last_name;
            $email_subject =   $email_template->email_subject;
            $email_body = $email_template->email_body;

            $pharmacy_signatures = signature();

            $search_arr = array(
                '[MESSAGE]',
                '[FULL_NAME]',
                '[CONTACT_NO]',
                '[EMAIL_ADDRESS]',
                '[PHARMACY_SIGNATURES]'
            );

            $replace_arr = array(
                $request->message,
                $request->first_name.' '.$request->last_name,
                $request->contact_no,
                $request->email_address,
                $pharmacy_signatures
            );

            $email_body = str_replace($search_arr, $replace_arr, $email_body);
            $attachment_arr = array();

            $this->send_email_ses(
                $to_email_address,
                $from_email_address,
                $reply_to_email_address,
                $email_from_text,
                $email_subject,
                $email_body,
                $attachment_arr
            );
            return redirect()->back()->with('success', 'Thank you for contacting us, we will get to you as soon as possible.');
        }
        return redirect()->back()->with('error', 'Email template not found.');
    }

}
