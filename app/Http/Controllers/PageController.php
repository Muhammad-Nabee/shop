<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Page;
use App\Http\Traits\CommanTrait;

class PageController extends Controller
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

    public function pageDetails($slug)
    {
        $page = Page::where('url_slug',$slug)->where('status',1)->first();
        if($page){
           return view("frontend.pages.cms")->with('page',$page);
        }else{
           abort(404, ' Page not found');
        }
    }

}
