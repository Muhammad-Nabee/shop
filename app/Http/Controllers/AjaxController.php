<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Throwable;

class AjaxController extends Controller
{
    /**
     * @throws Throwable
     */
    public function product(int $id)
    {
        $product = Product::find($id);
        if ($product)
            return view('frontend.components.quick-view', ['product' => $product])->render();
        return '';
    }
}
