<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PlaceOrderRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'b_first_name'     => 'required',
            'b_last_name'      => 'required',
             'b_email'       => 'required',
            'b_address_1'      => 'required:String',
            'b_postcode'       => 'required',
            'b_country'           => 'required',
            'b_mobile_no'       => 'required',
            'b_town_city' => 'required',
            'b_country'=> 'required',
            'd_first_name'     => 'required',
            'd_last_name'      => 'required',
            'd_address_1'      => 'required:String',
            'd_postcode'       => 'required',
            'd_town_city' => 'required',
            'd_country'=> 'required',





        ];
    }
}