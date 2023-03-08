<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Route;
use App\Models\UserAttempt;
use Throwable;
use Illuminate\Validation\ValidationException;
use Log;

class UserAttemptMiddleware
{
   
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */

    public function handle($request, Closure $next)
    {

        return $next($request);

    }

    public function terminate($request, $response)
    {
      
        if($request->method() == 'POST' && $request->path() == "login"){

            UserAttempt::createData($request);
        
        }

        if($request->method() == 'POST' && $request->path() == "register"){

            UserAttempt::createData($request);
        
        }

        if($request->method() == 'POST' && $request->path() == "patients/login-process"){

            UserAttempt::createData($request);
        
        }

        if($request->method() == 'POST' && $request->path() == "patients/register-process"){
            
            UserAttempt::createData($request);
    
        }

        if($request->method() == 'POST' && $request->path() == "forgot-password"){
            
            UserAttempt::createData($request);
    
        }


        if($request->method() == 'POST' && $request->path() == "patients/forget-password"){
            
            UserAttempt::createData($request);
    
        }

        if($request->method() == 'POST' && $request->path() == "patients/update-password"){
            
            UserAttempt::createData($request);
    
        }

        if($request->method() == 'POST' && $request->path() == "update-forgot-password"){
            
            UserAttempt::createData($request);
    
        }



        

    }




}
