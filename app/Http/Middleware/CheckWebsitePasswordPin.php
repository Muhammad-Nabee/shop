<?php

namespace App\Http\Middleware;

use App\Services\ServicesService;
use Carbon\Carbon;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Encryption\DecryptException;
use Illuminate\Support\Arr;
use DB;

class CheckWebsitePasswordPin
{
    /**
     * Handle an incoming request.
     *
     * @param Request $request
     * @param \Closure $next
     * @return mixed
     */
    
    public function handle(Request $request, Closure $next){
    
        $now = now();
        $expiry = Carbon::tomorrow();
        $expired = false;        
        $passs_pin = DB::table('kod_global_settings')->where('setting_key','website_lock_password')->first();
        if(!empty($passs_pin) && $passs_pin->setting_value != null){
            $password = $passs_pin->setting_value;
            $passwords = explode(',', $password);
            if (in_array($request->get('site-password-protected'), $passwords)) {
                setcookie('site-password-protected', encrypt($request->get('site-password-protected')), time() + (60 * 1440));
                return redirect($request->url());
            }
            try {
                $usersPassword = decrypt(Arr::get($_COOKIE, 'site-password-protected'));
                if (in_array($usersPassword, $passwords)) {
                    return $next($request);
                }
            } catch (DecryptException $e) {
            }
            return response(view('website.password.password_protection'), 403);
        }
        return $next($request); 

    }

}
