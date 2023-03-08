<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;

use App\Mail\RafPatientForgetPasswordLink;
use App\Models\EmailTemplate;
use App\Models\PharmacyInfo;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Traits\CommanTrait;
use App\Models\Patient;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Hash;
use App\Models\UserAttempt;
use CommonHelper;

class ForgotPasswordController extends Controller
{

    use CommanTrait;

    public function __construct()
    {
        $this->commanData();
    }

    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset emails and
    | includes a trait which assists in sending these notifications from
    | your application to your users. Feel free to explore this trait.
    |
    */

    // use SendsPasswordResetEmails;


    public function forgotPassword(Request $request) {




        Session::flash('selected_tab',"forgot-password");
        $recaptcha_attempt = globalSettings('recaptcha_attempt');
        $recaptcha_attempt = $recaptcha_attempt != null ? $recaptcha_attempt : Config::get('constants.keys.recaptcha_attempt');
        if(attemptCount() > $recaptcha_attempt){
           validateCaptcha($request->all())->validate();
        }
        $request->validate([
            'email' => 'required|email|exists:kod_patients',
        ]);

        $token   = Str::random(64);
        $created = DB::table('password_resets')->insert(
            ['email' => $request->email, 'token' => $token, 'created_at' => Carbon::now()]
        );

        $patient        = Patient::where('email', $request->email)->first();
        $email_template = EmailTemplate::where('id', 8)->first();

        $to_email_address = $request->email;
        $from_email_address = $this->pharmacy_info->email_address_secondary;
        $reply_to_email_address = $this->pharmacy_info->email_address_primary;
        $email_from_text = $this->pharmacy_info->pharmacy_name;


        $email_subject  = $email_template->email_subject;
        $email_body     =    $email_template->email_body;
        $link = url('/forgot-password-reset').'/'.$token.'/'.$patient->email;

        // $link = '<a href="'.$url.'">'.'reset password'.'</a>';

        $signature = signature();

        $search_arr = array(
            '[FIRST_NAME]',
            '[LINK]',
            '[PHARMACY_SIGNATURES]'
        );

        $pharmacy_info = PharmacyInfo::first();
        $replace_arr = array(
            ucfirst($patient->first_name),
            $link,
            $signature
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

        UserAttempt::deleteData($request);

        Session::flash('raf_success','We have e-mailed your password reset link!');

        return redirect()->back()->with('success', 'We have e-mailed your password reset link!');

    }

    public function getForgotPassword(){

         return view('frontend.patient.forgot-password');

    }

    public function getForgotPasswordPage($token = '', $email = '') {

        $updatePassword = DB::table('password_resets')
            ->where(['email' =>$email, 'token' => $token])
            ->first();
        if (!empty($updatePassword)) {
            return view('frontend.patient.reset_password')->with('token', $token);
        } else {
            abort(404);
        }

    }

    public function updatePassword(Request $request) {

        $recaptcha_attempt = globalSettings('recaptcha_attempt');
        $recaptcha_attempt = $recaptcha_attempt != null ? $recaptcha_attempt : Config::get('constants.keys.recaptcha_attempt');
        if(attemptCount() > $recaptcha_attempt){
           validateCaptcha($request->all())->validate();
        }

        $request->validate([
            'password' => 'required|string|min:6|confirmed',
            'password_confirmation' => 'required',
        ]);

        $updatePassword = DB::table('password_resets')
            ->where(['token' => $request->token])
            ->first();

        if(empty($updatePassword)){
            return back()->withInput()->with('error', 'Invalid token!');
        }

        $date1 = strtotime($updatePassword->created_at);
        $date2 = strtotime(date('Y-m-d H:i:s'));
        $totalSecondsDiff = abs($date1-$date2); //42600225
        $totalHoursDiff   =$totalSecondsDiff/60/60;//11833.39
        $totalHoursDiff = (int)$totalHoursDiff; // 252

        if($totalHoursDiff > 24){
            return redirect()->back()->with('raf_error', 'Following link is expire!');
        }


        $parient = Patient::where('email', $updatePassword->email)
                        ->update(['password' => Hash::make($request->password)]);

        if ($parient) {

            DB::table('password_resets')->where('token' ,$request->token)->delete();
            UserAttempt::deleteData($request);
            Session::flash('success','Your password has been changed successfully!');
            return redirect('customr-login');

        }

    }

}