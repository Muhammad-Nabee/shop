<?php

namespace App\Filters;

use Illuminate\Database\Eloquent\Builder;

/**
 * Class ItemFilter
 *
 * @package App\Filters
 */
class ProductFilter extends BaseFilter
{
    protected $filters = ['keywords', 'sortPrice', 'sortTitle'];

    /**
     * @param string|null $searchTerm
     */
    protected function keywords(?string $searchTerm)
    {
        if ($searchTerm) {
            $searchTerm = urldecode($searchTerm);
            $attributes = ['title'];

            $this->builder->where(
                function (Builder $query) use ($attributes, $searchTerm) {
                    foreach ($attributes as $attribute) {
                        $query->orWhere($attribute, 'LIKE', "%{$searchTerm}%");
                    }
                }
            );
        }
    }

    /**
     * @param string|null $sortPrice
     */
    protected function sortPrice(?string $sortPrice)
    {
        if (strlen($sortPrice) > 0) {
            $sortPrice = strtoupper($sortPrice) === "LOW" ? "ASC" : "DESC";
            $this->builder->orderBy('new_price', $sortPrice);
        }
    }

    /**
     * @param string|null $sortTitle
     */
    protected function sortTitle(?string $sortTitle)
    {
        if (strlen($sortTitle) > 0) {
            $sortTitle = strtoupper($sortTitle) === "ASC" ? "ASC" : "DESC";
            $this->builder->orderBy('title', $sortTitle);
        }
    }
}
