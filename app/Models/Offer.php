<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @method static where(string $column, $value)
 * @method static find(int|string $key)
 * @method static whereDate(string $string, string $string1, \Illuminate\Support\Carbon $now)
 */
class Offer extends Model
{
    protected $table = 'kod_offers';

    public const TYPE_QUANTITY = "Quantity";
    public const TYPE_PERCENT  = "Percent";
    public const TYPE_PRICE    = "Price";

    public const TYPE = [
        self::TYPE_QUANTITY,
        self::TYPE_PERCENT,
        self::TYPE_PRICE
    ];
}
