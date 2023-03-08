<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PatientRequest extends FormRequest
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
            'gender'        => 'required|string',
            'mobile_no'    => 'required',
            'day'           => 'required|digits_between:1,31',
            'month'         => 'required|digits_between:1,12',
            'year'          => 'required',
            'password'      => 'required|min:6|max:20',
        ];
        
    }

   


}
