<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class ValidateMobileNumber implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed   $value
     * @return bool
     */

    public function passes($attribute, $value)
    {

        $regex = "/^[0-9+']*$/";
        return preg_match($regex, $value);

    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'Please enter a valid contact number.';
    }
}
