<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateProfileSettingsRequest extends FormRequest
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
            'first_name'     => 'required|min:2|max:191',
            'last_name'      =>  'required|min:2|max:191',
            // 'gender'         => 'required|string',
            // 'day'         => 'required|min:1',
            // 'month'         => 'required|min:1',
            // 'year'         => 'required',
            'email'         => 'required',
            'address_1'         => 'required',
            'town_city'         => 'required',
            'postcode'         => 'required',
            'mobile_no'         => 'required',

        ];
    }


}