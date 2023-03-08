<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PatientAddressesUpdateRequest extends FormRequest
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

        if ($this->type === 'billing'){
            return [
                'b_address_1'     => 'required:String',
                'b_town'         => 'required',
                'b_postcode'      => 'required',
            ];
        }

        if ($this->type === 'delivery'){
            return [
                'd_address_1'     => 'required:String',
                'd_town'         => 'required',
                'd_postcode'      => 'required',
            ];
        }

        if ($this->type === 'gp'){
            return [
                'address_1'     => 'required:String',
                'town_city'         => 'required',
                'postcode'      => 'required',
            ];
        }
    }

    public function messages()
    {
        return [
            'b_address_1.required' => 'The address 1 field is required',
            'b_town.required' => 'The town field is required',
            'b_postcode.required' => 'The postcode field is required',

            'd_address_1.required' => 'The address 1 field is required',
            'd_town.required' => 'The town field is required',
            'd_postcode.required' => 'The postcode field is required',
        ];
    }
}
