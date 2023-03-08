<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Faqs;
use App\Http\Traits\CommanTrait;

class FaqController extends Controller
{

    use CommanTrait; 
   
    public function __construct()
    { 
        $this->commanData();
    }

    /**
     * @Description
     * Display a listing of the all banners.
     *
     * @return \Illuminate\Http\Response
     */

    public function faqs()
    {
           
        $faq = Faqs::where('status',1)->orderBy('display_order','asc')->get();
        return view("frontend.pages.faqs")->with('faqs',$faq);

    }

}
