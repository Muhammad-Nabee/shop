<?php

namespace App\Filters;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

/**
 * Class BaseFilter
 *
 * @package App\Filters
 */
abstract class BaseFilter
{
    public const DATE_FILTER_NONE  = 0;
    public const DATE_FILTER_TODAY = 1;
    public const DATE_FILTER_WEEK  = 2;
    public const DATE_FILTER_MONTH = 3;
    public const DATE_FILTER_YEAR  = 4;

    /**
     * @var Request
     */
    protected $request;

    /**
     * The Eloquent builder.
     *
     * @var Builder
     */
    protected $builder;

    /**
     * Registered filters to operate upon.
     *
     * @var array
     */
    protected $filters = [];

    /**
     * Create a new Filters instance.
     *
     * @param Request $request
     */
    public function __construct(Request $request)
    {
        $this->request = $request;
    }

    /**
     * Apply the filters.
     *
     * @param Builder $builder
     *
     * @return Builder
     */
    public function apply(Builder $builder): Builder
    {
        $this->builder = $builder;
        foreach ($this->getFilters() as $filter => $value) {
            if (method_exists($this, $filter)) {
                $this->$filter($value);
            }
        }

        return $this->builder;
    }

    /**
     * Fetch all relevant filters from the request.
     *
     * @return array
     */
    public function getFilters(): array
    {
        return $this->request->only($this->filters);
    }

    /**
     * @return string
     */
    public function getDateField(): string
    {
        return $this->request->input('dateField', 'created_at');
    }

    /**
     * @param $dateFilter
     */
    protected function filterByDateRange($dateFilter)
    {
        $field = $this->getDateField();
        switch ($dateFilter) {
            case self::DATE_FILTER_TODAY:  //today
                $this->builder->whereDate($field, Carbon::today());
                break;
            case self::DATE_FILTER_WEEK: //this week
                $this->builder->whereDate($field, now()->startOfWeek())->whereDate($field, now()->endOfWeek());
                break;
            case self::DATE_FILTER_MONTH: //this month
                $this->builder->whereMonth($field, now());
                break;
            case self::DATE_FILTER_YEAR: //this year
                $this->builder->whereYear($field, now());
                break;
            case self::DATE_FILTER_NONE: // custom search
                $this->builder->whereDate($field, $this->request->input('date', now()));
        }
    }
}
