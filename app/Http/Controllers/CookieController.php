<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CookieController extends Controller
{
    /**
     * @param Request $request
     * @return string
     */
    public function accept(Request $request): string
    {
        setcookie('acceptedCookie', encrypt($request->input('acceptedCookie', 'yes')), 0, '/');
        return 'SUCCESS';
    }
}
