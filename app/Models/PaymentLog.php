<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PaymentLog extends Model
{

    //

	protected $table   = "kod_payment_logs";

    protected $fillable = [
    	'user_requests',
    	'user_response',
    	'ip',
        'status_code'
    ];

   
  

}
