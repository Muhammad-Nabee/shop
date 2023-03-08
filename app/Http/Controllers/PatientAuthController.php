<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Traits\CommanTrait;
use App\Models\Patient;
use App\Http\Requests\PatientRequest;
use DB;
use Auth;
class PatientAuthController extends Controller
{

    use CommanTrait;

    public function __construct()
    {
        $this->commanData();
    }

    // public function register(){

    //     $country = DB::table('kod_countries')->get();
    //     return view('frontend.patient.register')->with('countries',$country);

    // }

    // public function store(PatientRequest $request){

    //     $store_patient = Patient::store($request);
    //     if($store_patient){
    //         $credentials = $request->only('email', 'password');
    //         if (Auth::guard('patient')->attempt($credentials)){
    //              return redirect()->intended('patient-dashboard');
    //         }
    //     }else{
    //         return redirect()->back()->with('error','Registration not save successfully');
    //     }

    // }

    // public function login(){

    //     return view('frontend.patient.login');

    // }

    // public function patientLogin(Request $request){

    //    $request->validate([
    //         'email' => 'required',
    //         'password' => 'required',
    //     ]);
    //     $credentials = $request->only('email', 'password');
    //     if (Auth::guard('patient')->attempt($credentials)){
    //         return redirect()->intended('patient-dashboard');
    //     }
    //     return redirect("login")->with('error','These credentials do not match our records.');

    // }

    public function patientLogout()
    {
       
        auth()->guard()->logout();
        session()->invalidate();
        session()->flush();
        session()->regenerateToken();
       return redirect('customr-login');
    }

}
