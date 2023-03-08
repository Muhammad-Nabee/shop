<?php

namespace App\Http\Traits;
use App\Models\MedicineCategory;
use App\Models\PharmacyMenu;
use App\Models\PharmacySettings;
use App\Models\PharmacyInfo;
use App\Models\PharmacyOpeningHour;
use App\Models\ProductCategory;
use Illuminate\Support\Facades\View;

use Mail;

trait CommanTrait {

    public $categories;

    public function commanData() {

       $this->pharmacy_info         = PharmacyInfo::first();
       $this->pharmacy_settings     = PharmacySettings::first();
       $this->pharmacy_opening_hour = PharmacyOpeningHour::first();

       $this->categories_menus = MedicineCategory::with(array('medicines'=>function($query){
           $query->where('status', 1);
           $query->select('id','hash_id', 'title', 'category_id', 'seo_url_slug');
       }, 'section'))->where('status', 1)->orderBy('display_order', 'ASC')->get();

        $this->pharmacy_menu = PharmacyMenu::withCount("pharmacy_menu_links","position")->with(["position" ,
            "pharmacy_menu_links.childs" => function ($query){
                $query->where('status', '1');
                $query->orderBy('display_order', 'ASC');
            },
            "pharmacy_menu_links.service",
            "pharmacy_menu_links.page",
            "pharmacy_menu_links.static_page",
            "pharmacy_menu_links.service",
            "pharmacy_menu_links.page",

            "pharmacy_menu_links" => function ($query){
                $query->where('status', '1');
                $query->where('parent_id', NULL);
                $query->orderBy('display_order', 'ASC');
            }
        ])->get();

        $this->categories = ProductCategory::where('status', 1)->where('parent_id','=',0)->with([
            'subCategories' => function ($query) {
                $query->where('status', 1);
            }
        ])->get();


       View::share('categories',            $this->categories);
       View::share('pharmacy_info',         $this->pharmacy_info);
       View::share('pharmacy_settings',     $this->pharmacy_settings);
       View::share('pharmacy_opening_hour', $this->pharmacy_opening_hour);

       View::share('pharmacy_menus',        $this->pharmacy_menu);
       View::share('categories_menus', $this->categories_menus);

    }

    public function PharmacyMenu(){


        return $Pharmacy_menu;

    }

    public function send_email_ses($to_email_address=false, $from_email_address=false, $reply_to_email_address=false, $email_from_text=false, $email_subject=false, $email_body=false, $attachment_arr=array()){

        $response = array();

        try {

            Mail::send([], [], function ($message) use($to_email_address,$from_email_address,$reply_to_email_address,$email_from_text,$email_subject,$email_body,$attachment_arr){

                $message->to($to_email_address);
                if(!empty($email_subject)){
                    $message->subject($email_subject);
                }

                if(!empty($reply_to_email_address)){
                    $message->replyTo($reply_to_email_address);
                }

                if(!empty($from_email_address)){
                    $message->from($from_email_address, $email_from_text);
                }


                if(!empty($email_body)){
                    $message->setBody($email_body, 'text/html');
                }

                if(!empty($attachment_arr)){
                    $message->attach($attachment_arr);
                }

            });

            $response['response_type'] = 'success';
            $response['message'] = 'Email sent';

            return $response;

        } // try
        catch(\Exception $e){

          // return $e->getMessage();

          $response['response_type'] = 'exception';
          $response['message'] = $e->getMessage();;

          // return $response;

          // echo '<pre>'; print_r($e); return '';

          // abort(403, $e->getMessage());

        }

    }

}
