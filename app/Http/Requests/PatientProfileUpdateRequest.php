<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PatientProfileUpdateRequest extends FormRequest
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
            'gender'        => 'required|string',
            'contact_no'    => 'required',
            'day'           => 'required|digits_between:1,31',
            'month'         => 'required|digits_between:1,12',
            'year'          => 'required',
            'country_id'    => 'required|numeric|min:1',
            'address_1'     => 'required:String',
            'town_city'     => 'required',
            'postcode'      => 'required'
        ];
    }

    

}
