<?php

namespace App\Http\Controllers;

use App\Http\Requests\CustomerRequest;
use App\Http\Requests\PatientUpdateGPDetailsRequest;
use App\Http\Requests\RafPatientRequest;
use App\Http\Requests\UpdatePatientPasswordRequest;
use App\Http\Requests\UpdateProfileSettingsRequest;
use App\Mail\RafPatientForgetPasswordLink;
use App\Models\EmailTemplate;
use App\Models\FilledRaf;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\OrderNotes;
use App\Models\PatientAddresses;
use App\Models\PatientOrderAddress;
use App\Models\PharmacyInfo;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Traits\CommanTrait;
use App\Models\Patient;
use App\Http\Requests\PatientRequest;
use App\Http\Requests\PatientAddressesRequest;
use App\Models\Country;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Hash;
use App\Models\UserAttempt;
use CommonHelper;

class PatientController extends Controller
{

    use CommanTrait;

    public function __construct()
    {
        $this->commanData();
    }





    public function customeLogin(Request $request)
    {
         $request->validate([
            'email'    => 'required|string',
            'password' => 'required|string',
        ]);
        $recaptcha_attempt = globalSettings('recaptcha_attempt');
        $recaptcha_attempt = $recaptcha_attempt != null ? $recaptcha_attempt : Config::get('constants.keys.recaptcha_attempt');
        if(attemptCount() > $recaptcha_attempt){
           validateCaptcha($request->all())->validate();
        }
        $user = Patient::where('email', '=', $request->email)->first();
        if ($user && ! $user->status) {
            throw ValidationException::withMessages([$request->email=> __('Your account has been disabled, please contact administrator.')]);
        }




    }
           // login page
   public function customerlogin()
   {
    return view('frontend.login');
   }
   //register page
   public function customerregister()
   {

    return view('frontend.register');
   }
   public function placeOrderSuccess()
    {
        return view('frontend.placeOrderSuccess');
    }

    public function dashboard(Request $request){

        UserAttempt::deleteData($request);
        $orders = Order::with('orderDetails.product')->where('patient_id', Auth::user()->id)->orderBy('id', 'DESC')->get();

        return view('frontend.patient.orders')->with('orders',$orders);

    }

    public function orderDetail($hash_id){

        $orders = Order::with('orderDetails.product.media')->where('hash_id', $hash_id)->first();
        if($orders){
            return view('frontend.patient.order_details')->with('order',$orders);
        }
        abort(404);

    }

    public function profileSettings(){

        $patient    = Patient::with('patientAddress')->where('id', Auth::user()->id)->first();

        $countries  = DB::table('kod_countries')->get();
    	return view('frontend.patient.profile-settings')->with('patient', $patient)->with('countries', $countries);

    }

    public function patientAddress(){

        $patient    = PatientAddresses::where('patient_id', Auth::user()->id)->first();

        return view('frontend.patient.patient-address')->with('patient', $patient);

    }


    public function updateAddress(PatientAddressesRequest $request){

       $patient = Patient::where('hash_id', Auth::user()->hash_id)->first();

        if ($patient) {
            $patient_details = PatientAddresses::where('patient_id', $patient->id)->first();
            if (!$patient_details) {
                $patient_details = PatientAddresses::create(
                    [
                        'hash_id' => generateHashId(),
                        'patient_id' => $patient->id
                    ]
                );
            }
            $update = PatientAddresses::updateData($request, $patient_details->hash_id);
            
            if ($update) {

                Session::flash('success','Profile settings updated successfully');
                return redirect()->back();
            }
        }
        Session::flash('error','Oops! Somethings went wrong, please try again later.');
        return redirect()->back();

    }


    public function getGPForm() {
        $patient_details = PatientAddresses::where('patient_id', Auth::user()->id)->first();
        return view('frontend.patient.patient-gp-details')->with('patient_details',$patient_details);
    }

    public function updateGPDetails(PatientUpdateGPDetailsRequest $request) {

        $patient_details = PatientAddresses::where('hash_id', $request->hash_id)->first();
        if ($patient_details) {
            $update = $patient_details->update(
                [
                    'gp_surgery_name' => trim($request->gp_surgery_name),
                    'gp_surgery_email' => trim($request->gp_surgery_email),
                    'gp_surgery_address' => trim($request->gp_surgery_address),
                ]
            );

            if ($update) {
                Session::flash('raf_success','GP details updated successfully');
                return redirect()->back();
            }
        } else {
            $patient_details_create = PatientAddresses::storeData($request);

            if ($patient_details_create) {
                Session::flash('raf_success','GP details updated successfully');
                return redirect()->back();
            }
        }

        Session::flash('raf_error','Oops! Somethings went wrong, please try again later.');
        return redirect()->back();

    }

    public function updateProfileSettings(UpdateProfileSettingsRequest $request) {

        $patient = Patient::where('hash_id', Auth::user()->hash_id)->first();

        if ($patient) {
            $update_patient = Patient::updateData($request, $patient->hash_id);
            if ($update_patient) {

                Session::flash('success','Profile settings updated successfully');
                return redirect()->back();
            }
        }
        Session::flash('error','Oops! Somethings went wrong, please try again later.');
        return redirect()->back();


    }

    public function changePasswordPage() {
        return view('frontend.patient.patient-change-password');
    }

    public function updatePatientPassword(UpdatePatientPasswordRequest $request) {

        $patient = Patient::where('hash_id', Auth::user()->hash_id)->update([
            "password" => Hash::make($request->get('password'))
        ]);
        if($patient){
            Session::flash('success','Password updated successfully');
            return redirect()->back();
        }else{
            Session::flash('error','Some thing went wrong, please try again');
            return redirect()->back();
        }

    }

    public function deleteAccountConfirmPage() {
        return view('frontend.patient.patient-delete-account');
    }

    public function deletePatientAccount(Request $request) {

        $orders = Order::where('patient_id', Auth::user()->id)->get();
        if ($orders) {
            foreach ($orders as $key => $order) {
                $filled_raf = FilledRaf::where('order_id', $order->id)->delete();
                $order_detail = OrderDetails::where('order_id', $order->id)->delete();
                $order_notes = OrderNotes::where('module_id', $order->id)->where('type', 'Order')->delete();
                $patient_order_Addresses = PatientOrderAddress::where('order_id', $order->id)->delete();
                $order = Order::where('id', $order->id)->delete();
            }
        }

        $patient_addresses = PatientAddresses::where('patient_id', Auth::user()->id)->delete();
        $patient = Patient::where('id', Auth::user()->id)->first();

        if ($patient) {
            Auth::logout();
            $patient->delete();
            return view('frontend.patient-account-deleted');
        }
        Session::flash('raf_error','Some thing went wrong, please try again');
        return redirect()->back();

    }



    /******************************************/
    /******** Start => Raf Patient Functions *******/

    public function rafPatientRegister(RafPatientRequest $request) {

        $recaptcha_attempt = globalSettings('recaptcha_attempt');
        $recaptcha_attempt = $recaptcha_attempt != null ? $recaptcha_attempt : Config::get('constants.keys.recaptcha_attempt');
        if(attemptCount() > $recaptcha_attempt){
           validateCaptcha($request->all())->validate();
        }

        $register_patient = Patient::store($request);

        if($register_patient){
            $credentials = $request->only('email', 'password');
            if (Auth::attempt($credentials)){
                Session::flash('raf_success','You account has been created successfully.');

                    return redirect()->intended('patient-dashboard');

            }
        } else {
            Session::flash('raf_error','Oops! Something went wrong, please try again later.');
            return redirect()->back();
        }

    }

    public function rafPatientLogin(Request $request) {
        if($request->checkout)
        {
                   $recaptcha_attempt = globalSettings('recaptcha_attempt');
        $recaptcha_attempt = $recaptcha_attempt != null ? $recaptcha_attempt : Config::get('constants.keys.recaptcha_attempt');
        if(attemptCount() > $recaptcha_attempt){
           validateCaptcha($request->all())->validate();
        }

        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)){
            Session::flash('raf_success','Logged in successfully.');
                return redirect()->intended('checkout-new');


        } else {

            Session::flash('raf_error','Oops! Something went wrong, please try again later.');
            return redirect()->back()->with('raf_error','These credentials do not match our records.');

        }
        }
        else{
                    $recaptcha_attempt = globalSettings('recaptcha_attempt');
        $recaptcha_attempt = $recaptcha_attempt != null ? $recaptcha_attempt : Config::get('constants.keys.recaptcha_attempt');
        if(attemptCount() > $recaptcha_attempt){
           validateCaptcha($request->all())->validate();
        }

        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)){
            Session::flash('raf_success','Logged in successfully.');
                return redirect()->intended('patient-dashboard');


        } else {

            Session::flash('raf_error','Oops! Something went wrong, please try again later.');
            return redirect()->back()->with('raf_error','These credentials do not match our records.');

        }

        }

    }

    public function forgotPassword()
    {
        return view('frontend.patient.forgot-password');
    }

    public function rafPatientForgetPassword(Request $request) {

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

        $patient = Patient::where('email', $request->email)->first();
        $email_template = EmailTemplate::where('id', 8)->first();
        $email_subject = $email_template->email_subject;
        $email_body    =    $email_template->email_body;
        $url = url('/reset-forgot-password').'/'.$token.'/'.$patient->email;
        $link = $url;
        $search_arr = array(
            '[FIRST_NAME]',
            '[LINK]',
            '[PHARMACY_SIGNATURES]'
        );
        $pharmacy_info = PharmacyInfo::first();
        $replace_arr = array(
            $patient->first_name.' '.$patient->last_name,
            $link,
            addressWithComma($pharmacy_info)
        );
        $email_body = str_replace($search_arr, $replace_arr, $email_body);


        CommonHelper::send_email_ses($patient->email,'faheem@marvelouscoders.com','faheem@marvelouscoders.com','13212',$email_subject,$email_body,[]);

        UserAttempt::deleteData($request);

        return redirect()->back()->with('raf_success', 'We have e-mailed your password reset link!');

    }



    public function getForgotPasswordPage($token = '', $email = '') {

        $updatePassword = DB::table('password_resets')
            ->where(['email' =>$email, 'token' => $token])
            ->first();
        if (!empty($updatePassword)) {
            return view('frontend.reset_password.index')->with('token', $token);
        } else {
            abort(404);
        }

    }

    public function rafPatientUpdatePassword(Request $request) {

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


        if(empty($updatePassword))
        {
            return redirect()->back()->with('raf_error', 'Invalid token!');
        }

        $date1 = strtotime($updatePassword->created_at);
        $date2 = strtotime(date('Y-m-d H:i:s'));
        $totalSecondsDiff = abs($date1-$date2); //42600225
        $totalHoursDiff   =$totalSecondsDiff/60/60;//11833.39
        $totalHoursDiff = (int)$totalHoursDiff; // 252

        if($totalHoursDiff > 24){
            return redirect()->back()->with('raf_error', 'link is expire!');
        }

        $patient = Patient::where('email', $updatePassword->email)
                        ->update(['password' => Hash::make($request->password)]);

        DB::table('password_resets')->where('token' ,$request->token)->delete();
        Session::flash('raf_success','Your password has been changed successfully!');
        return redirect('treatments/signin');

    }

    /******************************************/
    /******** End => Raf Patient Functions *******/


}