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

class WebsiterUnderMaintanence
{
    /**
     * Handle an incoming request.
     *
     * @param Request $request
     * @param \Closure $next
     * @return mixed
     */
    
    public function handle(Request $request, Closure $next){
    
        $check_maintenance_mode = DB::table('kod_global_settings')->where('setting_key','website_under_maintenance')->where('setting_value',1)->first();
        if(!empty($check_maintenance_mode) && $check_maintenance_mode->setting_value){           
            return response(view('website.password.website_under_maintenance'), 403);
        }
        return $next($request); 

    }

}
