<?php

namespace App\Models;

use App\Filters\ProductFilter;
use App\Models\ReviewAllowe;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Builder;

/**
 * @property mixed category
 * @property mixed price
 * @property mixed discount_price
 * @method static where(string $string, string $string1)
 * @method static find(int $id)
 * @method static filter(ProductFilter $filters)
 * @method static whereIn(string $string, mixed $products)
 * @property int $id
 * @property int $stock_level
 *
 */
class Product extends Model
{
    /**
     * @var string
     */

    protected $table = 'kod_products';

    protected $appends = [
        "save_percent",
        "offer",
        "new_price"
    ];

    public const TYPE_GSM     = "GSM";
    public const TYPE_POM     = "POM";
    public const TYPE_POM_GSM = "POM+GSL";


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'hash_id',
        'category_id',
        'title',
        'seo_url_slug',
        'sub_heading',
        'special_note',
        'description',
        'price',
        'discount_price',
        'stock_level',
        'quantity_allowe_to_buy',
        'generic_branded',
        'position',
        'type',
        'display_order',
        'status',
        'stock_level'
    ];

    /**
     * Apply all relevant item filters.
     * @param Builder    $query
     * @param ProductFilter $filter
     * @return Builder
     */
    public function scopeFilter(Builder $query, ProductFilter $filter): Builder
    {
        return $filter->apply($query);
    }

    /**
     * @param $cart
     * @return mixed
     */

    public function maf($cart) // medical assessment form
    {
        $id = $this->id;
        if ($cart && array_key_exists($id, $cart['items']) && array_key_exists('maf', $cart['items'][$id]['item']))
        {
            return $cart['items'][$id]['item']['maf'];
        }
        return false;
    }

    /**
     * @param $value
     * @return string
     */
    public function getSeoUrlSlugAttribute($value): string
    {

        if ($value) {
            $category = $this->category;
            if ($category) {
                return asset('products/'.$category->seo_url_slug.'/'.$value);
            }
        }
        return asset('/');

    }

    /**
     * @param $value
     * @return int
     */
    public function getQuantityAlloweToBuyAttribute($value): int
    {
        if (empty($value) || $value > $this->stock_level) {
            return $this->stock_level;
        }
        return $value;
    }

    /**
     * @param $value
     * @return int
     */
    public function getStockLevelAttribute($value): int
    {
        if (empty($value) || $value < 1)
            return 0;
        return $value;
    }

    public function getDiscountPriceAttribute($value)
    {
        if (empty($value) || $value < 0.001) {
            return $this->price;
        }
        return $value;
    }

    public function getOfferAttribute()
    {
        $id = $this->id;
        // TODO [add] -> where expiry > now()
        $offer = Offer::where('status', 1)->whereDate('expiry', '>=', now())->where(function ($q) use ($id) {
            $q->where('products', 'LIKE', '%'.$id.',%')->orWhere('products', 'LIKE', '%,'.$id.'%');
        })->where(function ($q) use ($id) {
            $q->where('products', 'LIKE', '%,'.$id.'%')->orWhere('products', 'LIKE', '%'.$id.',%');
        })->first();
        if (!$offer)
            $offer = Offer::where('status', 1)->whereDate('expiry', '>=', now())->where('products', $id)->first();
        return $offer;
    }

    public function getSavePercentAttribute()
    {
        $price = $this->price;
        $discountPrice = $this->discount_price;
        if (!empty($price) && !empty($discountPrice)) {
            $percent = ($discountPrice/$price)*100;
            return (100 - $percent);
        }
        return 5;
    }

    public function getNewPriceAttribute()
    {
        $price = $this->price;
        $discountPrice = $this->discount_price;
        if (empty($discountPrice) || $price < $discountPrice || $discountPrice == 0 || $discountPrice == 0.00)
            return $price;
        return $discountPrice;
    }

    /**
     * @return HasMany
     */
    public function descriptions(): HasMany
    {
        return $this->hasMany(ProductDescription::class, 'product_id', 'id')->orderBy('display_order','asc');
    }

    /**
     * @return HasOne
     */
    public function regNo(): HasOne
    {
        return $this->hasOne(ProductRegNo::class, 'product_id', 'id');
    }

    /**
     * @return BelongsTo
     */
    public function category(): BelongsTo
    {
        return $this->belongsTo(ProductCategory::class, 'category_id', 'id');
    }

    /**
     * @return HasMany
     */
    public function media(): HasMany
    {
        return $this->hasMany(ProductMedia::class, 'product_id', 'id');
    }

    public function seoSetting(): HasOne
    {
        return $this->hasOne(ProductMetaTags::class, 'product_id', 'id');
    }

    /**
     * @return HasMany
     */

    public function reviews(): HasMany
    {

        $allowe_raviews = self::getAlloweReviews();
        return $this->hasMany(ProductReviews::class, 'product_id', 'id')->whereIn('rating',$allowe_raviews)->where('status','APPROVED');

    }

    public static function getAlloweReviews(){

        $review_allowe = ReviewAllowe::first();
        $review = [];
        if($review_allowe){
            if($review_allowe->one_star){
                array_push($review, 1);
            }
            if($review_allowe->two_star){
                array_push($review, 2);
            }
            if($review_allowe->three_star){
                array_push($review, 3);
            }
            if($review_allowe->four_star){
                array_push($review, 4);
            }
            if($review_allowe->five_star){
                 array_push($review, 5);
            }
        }
        return $review;

    }

    public static function get_common_fields($request){

        return [
            'category_id'            => $request->category_id,
            'title'                  => $request->titles,
            'sub_heading'            => $request->sub_heading,
            'special_note'           => $request->special_note,
            'description'            => $request->descriptions,
            'price'                  => $request->price,
            'discount_price'         => $request->discount_price,
            'stock_level'            => $request->stock_level,
            'quantity_allowe_to_buy' => $request->quantity_allowe_to_buy,
            'generic_branded' => $request->generic_branded,
            'position' => $request->position,
            'type'  => $request->type,
            'display_order' => $request->display_order_info,
            'status' => $request->status_info,
        ];

    }

    public static function storeData($request){

        $common_fields = self::get_common_fields($request);
        $common_fields['seo_url_slug'] = makeSlug($request->titles);
        $create_products = self::firstOrNew( $common_fields );
        if(!empty($create_products)){
            $create_products->hash_id =  generateHashId();
            $create_products->save();
            return $create_products;
        }

    }


    public static function updateData($request, $hash_id) {

        $common_fields = self::get_common_fields($request);
        $medicine = self::where('hash_id', $hash_id)->first();
        $common_fields['seo_url_slug'] = makeSlug($request->seo_url_slug);
        $medicine->update( $common_fields);

        return $medicine;

    }

    /**
     * @param int $qty
     */
    public function updateQty(int $qty)
    {
        $stock_level = $this->stock_level - $qty;
        if ($stock_level <= 0)
            $stock_level = 0;
        $this->update(['stock_level' => $stock_level]);
    }


}
