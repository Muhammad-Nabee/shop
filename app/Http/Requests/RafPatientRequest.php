<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RafPatientRequest extends FormRequest
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
            'first_name'    => 'required|min:2|max:191',
            'last_name'     => 'required|min:2|max:191',
            'email'         => 'required|string|email|max:90|unique:kod_patients,email',
            'password'      => 'required|min:6|max:20|confirmed',
            'address_1'     =>'required',
            'town_city'     =>'required',
            'postcode'      =>'required',
            'mobile_no'     =>'required',
        ];
    }

    public function messages()
    {
        return [
            'password' => 'Password must be combination of digits, and alphabets and one alphabet must be in capital letters and length must be between 8 - 20 char long.',
        ];
    }


}