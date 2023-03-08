<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * @method static where(string $string, int $int)
 * @method static whereIn(string $string, false|string[] $cIds)
 * @property mixed subCategories
 * @property mixed id
 */
class ProductCategory extends Model
{
    protected $table = 'kod_pro_categories';

    public const PAGE_BANNER = 1;

    public function getIds(array $ids, ProductCategory $category): array
    {
        $ids[] = $category->id;
        $categories = $category->subCategories;
        foreach ($categories as $category)
            $ids = $category->getIds($ids, $category);
        return $ids;
    }

    /**
     * @return HasMany
     */

    public function subCategories(): HasMany
    {
        return $this->hasMany(ProductCategory::class, 'parent_id', 'id');
    }

    /**
     * @return HasMany
     */

    public function getBreadCrumbCategory(array $breadcrumb_ids, ProductCategory $category)
    {
        $breadcrumb_ids[] = $category->id;
        while($category->parent_id != 0) {
            $category = self::where('id',$category->parent_id)->first();
            $breadcrumb_ids[] = $category->id;
        } 
        
        return $this->getBreadCrumbData(array_reverse($breadcrumb_ids));
    }

    public function getBreadCrumbData(array $breadcrumb_ids){

        return self::whereIn('id',$breadcrumb_ids)->get(['title','seo_url_slug']);
   
    }


}
