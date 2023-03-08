<?php

namespace App\Http\Controllers\Auth;

use App\Http\Traits\CommanTrait;

use App\Helpers\ValidatorHelper;
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\User;
use Illuminate\Auth\Events\Registered;
use Illuminate\Contracts\Auth\StatefulGuard;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;
use Illuminate\View\View;
use App\Http\Requests\PatientRequest;
use App\Models\Patient;

use Session;
use DB;


class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use CommanTrait; // RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */

    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');

        $this->commanData();
    }


    /**
     * Show the application registration form.
     *
     * @return View
     */
    public function showRegistrationForm(): View
    {

        $country = DB::table('kod_countries')->get();
        return view('frontend.patient.register')->with('countries',$country);

    }

    /**
     * Handle a registration request for the application.
     *
     * @param Request $request
     * @return RedirectResponse|JsonResponse
     * @throws ValidationException
     */

    public function register(PatientRequest $request)
    {


        $recaptcha_attempt = globalSettings('recaptcha_attempt');
        $recaptcha_attempt = $recaptcha_attempt != null ? $recaptcha_attempt : Config::get('constants.keys.recaptcha_attempt');
        if(attemptCount() > $recaptcha_attempt){
           validateCaptcha($request->all())->validate();
        }

        $store_patient = Patient::store($request);
        if($store_patient){
            $credentials = $request->only('email', 'password');
            if (Auth::attempt($credentials)){
                if (session()->has('cart'))
                    return redirect('checkout');
                return redirect()->intended('patient-dashboard');
            } else {
                return redirect()->back();
            }
        }else{
            return redirect()->back()->with('error','Registration not save successfully');
        }


        // event(new Registered($user = $this->create($userData)));

        // $this->guard()->login($user);

        // if ($response = $this->registered($request, $user)) {
        //     return $response;
        // }

        // return $request->wantsJson()
        //     ? new JsonResponse([], 201)
        //     : redirect($this->redirectPath());

    }

    /**
     * Get the guard to be used during registration.
     *
     * @return StatefulGuard
     */
    protected function guard(): StatefulGuard
    {
        return Auth::guard();
    }


}
