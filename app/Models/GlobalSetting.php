<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @method static where(string $string, string $string1)
 */
class GlobalSetting extends Model
{
	protected $table   = "kod_global_settings";

	public const NO_PAYMENT_KEY = 'no_payment_or_reservation';

    protected $fillable = [
        "setting_title",
        "setting_value",
        "setting_key"
    ];

}
