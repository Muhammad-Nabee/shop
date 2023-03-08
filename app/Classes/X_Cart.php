<?php

namespace App\Classes;

use App\Models\Offer;
use App\Models\Product;
use App\Models\ProductCategory;

class X_Cart
{
    public $items = [];
    public $offers = [];
    public $totalQty = 0;
    public $discountPrice = 0;
    public $totalPrice = 0;
    public $addresses = [];

    /**
     * @param $oldCart
     */
    public function __construct($oldCart)
    {
        if ($oldCart) {
            $this->items         = $oldCart->items;
            $this->addresses     = $oldCart->addresses;
            $this->offers        = $oldCart->offers;
            $this->totalQty      = $oldCart->totalQty;
            $this->discountPrice = $this->totalQty == 0 ? 0 : $oldCart->discountPrice;
            $this->totalPrice    = $this->totalQty == 0 ? 0 : $oldCart->totalPrice;
        } else {
            $offerCollection = Offer::where('status', 1)->whereDate('expiry', '>=', now())->get(['id', 'categories']);
            foreach ($offerCollection as $item) {
                $categories = ProductCategory::whereIn('id', explode(',', $item->categories))
                    ->where('status', 1)->get();
                $cIds = [];
                foreach ($categories as $category) {
                    $cIds = $category->getIds($cIds, $category);
                }
                $this->offers[$item->id] = [
                    'products'   => [],
                    'categories' => $cIds
                ];
            }
        }
    }

    public function add($item, $id, int $qty = 1)
    {
        if (!empty($item->offer) && array_key_exists($item->offer->id, $this->offers)) {
            if ($key = (array_search($item->id, $this->offers[$item->offer->id]['products'])) === false)
                $this->offers[$item->offer->id]['products'][] = $item->id;
        }

        $storedItem = [
            'qty'            => 0,
            'discount_price' => $item->discount_price,
            'price'          => $item->price,
            'item'           => $item
        ];

        if($this->items && array_key_exists($id, $this->items))
            $storedItem = $this->items[$id];

        $storedItem['qty'] += $qty;
        $storedItem['price']          = $item->price * $storedItem['qty'];
        $storedItem['discount_price'] = $item->discount_price * $storedItem['qty'];
        $this->items[$id] = $storedItem;

        $this->checkOffers();
        $this->updateCartInformation();
    }

    /**
     * @param $item
     * @param $id
     */
    public function remove($item, $id)
    {
        if ($this->items[$id]['qty'] == 1) {
            if (!empty($item->offer) && array_key_exists($item->offer->id, $this->offers)) {
                if (($key = array_search($item->id, $this->offers[$item->offer->id]['products'])) !== false)
                    unset($this->offers[$item->offer->id]['products'][$key]);
            }
        }

        if($this->items && array_key_exists($id, $this->items)) {

            $flag = false;
            foreach ($this->offers as $offerItem) {
                if ((!empty($item->offer) && array_key_exists($item->offer->id, $this->offers)) || (empty($item->offer) && array_search($item->category_id, $offerItem['categories'])))
                    $flag = true;
            }

            $storedItem = $this->items[$id];
            if ($storedItem['qty'] <= 1) {
                unset($this->items[$id]);
            }
            else {
                $storedItem['qty']--;
                if (!$flag) { // A product that has no offer && its category also has no offer
                    $storedItem['discount_price'] = $item->discount_price * $storedItem['qty'];
                    $storedItem['price'] = $item->price * $storedItem['qty'];
                }
                $this->items[$id] = $storedItem;
            }
        }
        $this->checkOffers();
        $this->updateCartInformation();
    }

    /**
     * @param $item
     * @param $id
     */
    public function removeCompletely($item, $id)
    {
        if ($this->items[$id]['qty'] == 1) {
            if (!empty($item->offer) && array_key_exists($item->offer->id, $this->offers)) {
                if (($key = array_search($item->id, $this->offers[$item->offer->id]['products'])) !== false)
                    unset($this->offers[$item->offer->id]['products'][$key]);
            }
        }

        if($this->items && array_key_exists($id, $this->items)) {
            unset($this->items[$id]);
            $this->checkOffers();
            $this->updateCartInformation();
        }
    }

    public function checkOffers()
    {
        $this->checkOffersByProduct();
        $this->checkOffersByCategory();
    }

    public function checkOffersByCategory()
    {
        foreach ($this->items as $item)
        {
            if (is_null($item['item']['offer'])) {
                $cProduct = $item['item'];
                foreach ($this->offers as $key => $offerItem) {
                    if (array_search($cProduct['category_id'], $offerItem['categories'])) {
                        $offer = Offer::find($key);
                        if ($offer) {
                            if ($offer->type === Offer::TYPE_QUANTITY) {
                                $offerMax  = $offer->max;
                                $offerFree =  $offer->free;
                                $totalFreeOffered = 0;
                                $totalQty = 0;

                                $products = Product::where('category_id', $cProduct['category_id'])->orderBy('price', 'ASC')->where('status', 1)->get();
                                $products = $products->merge(
                                    Product::whereIn('id', $offerItem['products'])->orderBy('price', 'ASC')->with(['category','media'])->get()
                                );
                                $products = $products->sortBy('price');

                                foreach ($products as $pKey => $product) {
                                    if (array_key_exists($product->id, $this->items) && (is_null($product->offer) || $product->offer->id == $offer->id))
                                        $totalQty += $this->items[$product->id]['qty'];
                                }

                                foreach ($products as $pKey => $product) {
                                    if (array_key_exists($product->id, $this->items) && (is_null($product->offer) || $product->offer->id == $offer->id)) {
                                        $qty = $this->items[$product->id]['qty'];
                                        $this->items[$product->id]['price']          = 0;
                                        $this->items[$product->id]['discount_price'] = 0;
                                        for ($i = 0; $i<=$totalQty; $i++) {
                                            if ($qty > $i && (int) floor($totalQty/$offerMax) >  $totalFreeOffered) {
                                                $this->items[$product->id]['discount_price'] += $product->discount_price * (1 - $offerFree);
                                                $this->items[$product->id]['price']          += $product->price * (1 - $offerFree);
                                                $totalFreeOffered +=1;
                                            }else if ($qty > $i) {
                                                $this->items[$product->id]['discount_price'] += $product->discount_price;
                                                $this->items[$product->id]['price']          += $product->price;
                                            }
                                        }
                                    }
                                }
                            } // Offer::TYPE_QUANTITY == $offer->type

                            if ($offer->type === Offer::TYPE_PERCENT) {
                                $offPercent = $offer->off;
                                $products = Product::where('category_id', $cProduct['category_id'])->orderBy('price', 'ASC')->where('status', 1)->get();
                                $products = $products->merge(
                                    Product::whereIn('id', $offerItem['products'])->orderBy('price', 'ASC')->with(['category','media'])->get()
                                );
                                $products = $products->sortBy('price');
                                foreach ($products as $product) {
                                    if (array_key_exists($product->id, $this->items) && (is_null($product->offer) || $product->offer->id == $offer->id)) {
                                        $product->price = $product->price * ($offPercent / 100);
                                        $product->discount_price = $product->discount_price * ($offPercent / 100);
                                        $this->updateProductViaOffers($product);
                                    }
                                }
                            } // if ($offer->type === Offer::TYPE_PERCENT) {

                            if ($offer->type === Offer::TYPE_PRICE) {
                                $offPrice = $offer->off;
                                $products = Product::where('category_id', $cProduct['category_id'])->orderBy('price', 'ASC')->where('status', 1)->get();
                                $products = $products->merge(
                                    Product::whereIn('id', $offerItem['products'])->orderBy('price', 'ASC')->with(['category','media'])->get()
                                );
                                $products = $products->sortBy('price');
                                foreach ($products as $product) {
                                    if (array_key_exists($product->id, $this->items) && (is_null($product->offer) || $product->offer->id == $offer->id)) {
                                        $product->price = $product->price - $offPrice;
                                        $product->discount_price = $product->discount_price - $offPrice;
                                        $this->updateProductViaOffers($product);
                                    }
                                }
                            } // if ($offer->type === Offer::TYPE_PRICE) {

                        } // if ($offer)

                    } // if (array_search($product['category_id'], $offerItem['categories'])) {
                } // foreach [offers]
            }
        }
    }

    public function checkOffersByProduct()
    {
        foreach ($this->offers as $key => $offerItem) {
            $offer = Offer::find($key);
            if ($offer) {
                if ($offer->type === Offer::TYPE_QUANTITY) {
                    $offerMax  = $offer->max;
                    $offerFree =  $offer->free;
                    $totalFreeOffered = 0;
                    $totalQty = 0;
                    // TODO where -> [price, discount_price]
                    $products = Product::whereIn('id', $offerItem['products'])->orderBy('price', 'ASC')->with(['category','media'])->get();
                    foreach ($products as $pKey => $product)
                        $totalQty += $this->items[$product->id]['qty'];
                    foreach ($products as $pKey => $product) {
                        $qty = $this->items[$product->id]['qty'];
                        $this->items[$product->id]['price']          = 0;
                        $this->items[$product->id]['discount_price'] = 0;
                        for ($i = 0; $i<=$totalQty; $i++) {
                            if ($qty > $i && (int) floor($totalQty/$offerMax) >  $totalFreeOffered) {
                                $this->items[$product->id]['discount_price'] += $product->discount_price * (1 - $offerFree);
                                $this->items[$product->id]['price']          += $product->price * (1 - $offerFree);
                                $totalFreeOffered +=1;
                            }else if ($qty > $i) {
                                $this->items[$product->id]['discount_price'] += $product->discount_price;
                                $this->items[$product->id]['price']          += $product->price;
                            }
                        }

                    }

                }
                if ($offer->type === Offer::TYPE_PERCENT) {
                    $offPercent = $offer->off;
                    $products = Product::whereIn('id', $offerItem['products'])->orderBy('price', 'ASC')->with(['category','media'])->get();
                    foreach ($products as $product) {
                        $product->price = $product->price * ($offPercent / 100);
                        $product->discount_price = $product->discount_price * ($offPercent / 100);
                        $this->updateProductViaOffers($product);
                    }
                }
                if ($offer->type === Offer::TYPE_PRICE) {
                    $offPrice = $offer->off;
                    $products = Product::whereIn('id', $offerItem['products'])->orderBy('price', 'ASC')->with(['category','media'])->get();
                    foreach ($products as $product) {
                        $product->price = $product->price - $offPrice;
                        $product->discount_price = $product->discount_price - $offPrice;
                        $this->updateProductViaOffers($product);
                    }
                }
            }else
                unset($this->offers[$key]);
        }
    }

    public function updateProductViaOffers($item)
    {
        $this->discountPrice -= $this->items[$item->id]['discount_price'];
        $this->totalPrice    -= $this->items[$item->id]['price'];

        $this->items[$item->id]['price']          = $this->items[$item->id]['qty'] * $item->price;
        $this->items[$item->id]['discount_price'] = $this->items[$item->id]['qty'] * $item->discount_price;
        $this->items[$item->id]['item']           = $item;

        $this->discountPrice += $this->items[$item->id]['discount_price'];
        $this->totalPrice    += $this->items[$item->id]['price'];
    }

    public function checkLimit($id, $qty): bool
    {
        if(array_key_exists($id, $this->items)) {
            $qty += $this->items[$id]['qty'];
            $limit = empty($this->items[$id]['item']['quantity_allowe_to_buy']) ? 5 : (int) $this->items[$id]['item']['quantity_allowe_to_buy'];
            if ($qty > $limit)
                return false;
        }
        return true;
    }

    public function updateCartInformation()
    {
        $this->totalQty      = 0;
        $this->discountPrice = 0;
        $this->totalPrice    = 0;

        foreach ($this->items as $item) {
            $this->totalPrice    += $item['price'];
            $this->discountPrice += $item['discount_price'];
            $this->totalQty      += $item['qty'];
        }
    }

    public function setAddresses(array $address)
    {
        $this->addresses = $address;
    }
}
