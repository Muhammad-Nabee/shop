<?php


use App\Http\Controllers\Controller;
namespace App\Http\Controllers\Auth;
use App\Providers\RouteServiceProvider;
use App\User;
use Carbon\Carbon;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;
use App\Http\Traits\CommanTrait;
use App\Models\Patient;
use Config;

class LoginController extends Controller
{

    // public $decayMinutes = 1; // minutes to lockout

    // public $maxAttempts = 8;

    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use CommanTrait, AuthenticatesUsers;

    protected function showLoginForm() {

        return view('frontend.patient.login');

    }
    // login page
   public function login()
   {
    return view('frontend.login');
   }
   //register page
   public function register()
   {
    return view('frontend.register');
   }
    /**
     * Custom credentials to validate the status of user.
     */

    public function credentials(Request $request)
    {
        return [
            'email'     => $request->email,
            'password'  => $request->password,
            'status' => '1'
        ];
    }

    protected function validateLogin(Request $request)
    {

        $recaptcha_attempt = globalSettings('recaptcha_attempt');
        $recaptcha_attempt = $recaptcha_attempt != null ? $recaptcha_attempt : Config::get('constants.keys.recaptcha_attempt');
        if(attemptCount() > $recaptcha_attempt){
           validateCaptcha($request->all())->validate();
        }

        $user = Patient::where('email', '=', $request->email)->first();
        if ($user && ! $user->status) {
            throw ValidationException::withMessages([$request->email=> __('Your account has been disabled, please contact administrator.')]);
        }

        $request->validate([
            'email'    => 'required|string',
            'password' => 'required|string',
        ]);

    }

    /**
       * Where to redirect users after login.
       *
       * @var string
      */
      //   protected $redirectTo = RouteServiceProvider::HOME;
      /**
      * After Login redirect
      * @return string
    */

    public function redirectTo(): string
    {
        if (session()->has('cart'))
            return 'checkout';
        return 'patient-dashboard';
    }

    /**
     * Create a new controller instance.
     *
     * @return void
    */

    public function __construct()
    {

        $this->commanData();
        $this->middleware('guest')->except('logout');

    }


}