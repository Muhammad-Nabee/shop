<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PatientAddressesRequest extends FormRequest
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
            'b_address_1'      => 'required:String',
            'b_town'           => 'required',
            'b_postcode'       => 'required',
            'd_address_1'      => 'required:String',
            'd_town'           => 'required',
            'd_postcode'       => 'required',
            'b_first_name'     => 'required',
            'b_last_name'      => 'required',
            'd_first_name'     => 'required',
            'd_last_name'      => 'required'
        ];
    }

    public function messages()
    {
        return [
            'b_address_1.required' => 'Billing address 1 field is required',
            'b_town.required' => 'Billing town field is required',
            'b_postcode.required' => 'Billing postcode is required',
            'd_address_1.required' => 'Delivery address 1 field is required',
            'd_town.required' => 'Delivery town field is required',
            'd_postcode.required' => 'Delivery postcode is required',
        ];
    }
}
