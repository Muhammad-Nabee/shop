<?php


namespace App\Helpers;


use App\Http\Traits\GetCartTotalPrices;
use App\Models\GlobalSetting;
use App\Models\Medicine;
use App\Models\MedicineMedia;
use App\Models\MedicinePricing;
use App\Models\MedicineQuantity;
use App\Models\MedicineStrength;
use App\Models\PageSection;
use App\Models\Product;
use App\Models\RafList;
use App\Models\ProductCategory;
use Illuminate\Support\Facades\Mail;


class CommonHelper
{

    public static function getPageSection($slug){

        $section = PageSection::where('url_slug', $slug)->where('status', 1)->first();
        if($section){
            return $section->description;
        }

    }
    public static function getRafHashId($plain_id){
        if (!empty($plain_id)) {
            $raf = RafList::where('id', $plain_id)->first();
            return $raf->hash_id;
        }

    }

    public static function getMedicineDetails($id){
        return Medicine::where('id', $id)->first();
    }

    public static function getMedicineStrengthDetails($id){
        return MedicineStrength::where('id', $id)->first();
    }

    public static function getMedicineQuantityDetails($id){
        return MedicineQuantity::where('id', $id)->first();
    }

    public static function getMedicinePricingDetails($medicine_id, $strength_id, $quantity_id){
        return MedicinePricing::where('medicine_id', $medicine_id)
                                ->where('strength_id', $strength_id)
                                ->where('quantity_id', $quantity_id)
                                ->first();
    }

    public static function getMedicineMediasDetails($medicine_id) {
        return MedicineMedia::where('medicine_id', $medicine_id)->get();
    }

    public static function checkKeyFromGlobalSettings($key) {
        return GlobalSetting::where('setting_key', $key)->first();
    }


    public static function send_email_ses($to_email_address=false, $from_email_address=false, $reply_to_email_address=false, $email_from_text=false, $email_subject=false, $email_body=false, $attachment_arr=array()){

        try {
            return Mail::send([], [], function ($message) use($to_email_address,$from_email_address,$reply_to_email_address,$email_from_text,$email_subject,$email_body,$attachment_arr){

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

        } // try

        catch(Exception $e){

            abort(403, $e->getMessage());

        }

    }


    /**
     * @return HasMany
     */
    
    public static function productCount($category)
    {
         
        $cIds = [];
        $cIds = CommonHelper::getIds($cIds, $category);
        return Product::whereIn('category_id',$cIds)->where('status',1)->count();
        
    }


    public static function getIds(array $ids, ProductCategory $category): array
    {
        $ids[] = $category->id;
        $categories = $category->subCategories;
        foreach ($categories as $category)
            $ids = CommonHelper::getIds($ids, $category);
        return $ids;
    }


}
