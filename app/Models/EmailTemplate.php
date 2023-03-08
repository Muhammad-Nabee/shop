<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @method static find(int $CONTACT_US_EMAIL)
 * @method static where(string $string, int $int)
 */
class EmailTemplate extends Model
{
	protected $table   = "kod_email_templates";

	public const ADMIN_DASHBOARD_LINK = "";

	public const ADMIN_ORDER_RECEIVED = 9;
	public const CUSTOMER_ORDER_COMPLETED = 10;
	public const CONTACT_US_EMAIL = 11;

    protected $fillable = [
    	"hash_id",
        "email_title",
        "email_subject",
        "email_body",
        "status",
        "created_by_ip",
        "modified_by_ip"
    ];

    public static function store($request){

        $create = self::create(
            [
                'hash_id'           => generateHashId(),
                'email_title'       => $request->email_title,
                'email_subject'     => $request->email_subject,
                'email_body'        => $request->email_body,
                'status'            => $request->status,
                'created_by_ip'     => $request->ip(),
            ]);
        return $create;

    }

}
