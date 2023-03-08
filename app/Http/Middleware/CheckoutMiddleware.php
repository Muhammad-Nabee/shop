<?php

namespace App\Http\Middleware;

use App\Classes\Cart;
use App\Providers\RouteServiceProvider;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckoutMiddleware
{
    /**
     * Handle an incoming request.
     * @param Request $request
     * @param Closure $next
     * @param null $guard
     * @return mixed
     */
    public function handle(Request $request, Closure $next, $guard = null)
    {
        $cart = session()->get('cart');
        $cart = new Cart($cart);

        if (!session()->has('cart') || $cart->totalQty < 1) {
            session()->forget('cart');
            return redirect('/');
        }

        if (!Auth::guard($guard)->check())
            return redirect('checkout/auth');

        return $next($request);
    }
}
