<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * @method static create(array $array)
 */
class MedicalAssessmentForm extends Model
{
    protected $table = "medical_assessment_form";

    protected $fillable = [
        "order_id",
        "product_id",
        "age",
        "symptoms",
        "conditions",
        "medicine",
        "pregnant_status",
        "condition_status",
        "medicine_status",
    ];

    /**
     * @param array $data
     * @param int $productId
     * @param int $orderId
     * @return MedicalAssessmentForm
     */
    public static function store(array $data, int $productId, int $orderId): MedicalAssessmentForm
    {
        return self::create(
            [
                "order_id"         => $orderId,
                "product_id"       => $productId,
                "age"              => $data['age'],
                "symptoms"         => $data["symptoms"],
                "conditions"       => $data["condition"],
                "medicine"         => $data["medicine"],
                "pregnant_status"  => $data["pregnant_status"],
                "condition_status" => $data["condition_status"],
                "medicine_status"  => $data["medicine_status"]
            ]
        );
    }

    /**
     * @return BelongsTo
     */
    public function order(): BelongsTo
    {
        return $this->belongsTo(Order::class, 'order_id', 'id');
    }

    public function product(): BelongsTo
    {
        return $this->belongsTo(Product::class, 'product_id', 'id');
    }
}
