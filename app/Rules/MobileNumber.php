<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class MobileNumber implements Rule
{
    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        // Mobile number regex
        $mobileRegex = '/^\+91[6-9]\d{9}$/';
        // Landline number regex
        $landlineRegex = '/^\+91\d{2,4}\d{6,8}$/';
        
        return preg_match($mobileRegex, $value) || preg_match($landlineRegex, $value);
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'The :attribute must be a valid mobile or landline number with +91 country code.';
    }
}
