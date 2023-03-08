<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserAttempt extends Model
{
    //

    protected $table = "kod_user_attempts";

    protected $fillable = [
      'ip','type'
    ];

    public static function createData($request){
     
      Self::create(['ip' => $request->ip(),'type' => 'patient_login']);
   
    }

    public static function deleteData($request){

      Self::where('ip',$request->ip())->where('type','patient_login')->delete();

    }

}
