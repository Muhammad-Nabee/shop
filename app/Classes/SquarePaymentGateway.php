<?php

namespace App\Classes;

use Dotenv\Dotenv;
use Square\Models\CreateOrderRequest;
use Square\Models\CreateCheckoutRequest;
use Square\Models\Order;
use Square\Models\OrderLineItem;
use Square\Models\OrderServiceCharge;
use Square\Models\Money;
use Square\Models\OrderLineItemDiscount;
use Square\Models\OrderLineItemDiscountType;
use Square\Models\OrderSource;
use Square\Models\OrderLineItemAppliedDiscount;
use Square\Models\ChargeRequestAdditionalRecipient;
use Square\Exceptions\ApiException;
use Square\SquareClient;
use Square\Models\CreatePaymentRequest;
use Illuminate\Validation\ValidationException;
use App\Models\DeliveryMethods;
use App\Models\PaymentLog;

class SquarePaymentGateway
{

    public $access_token = null;
    public $location_id  = null;
    public $client       = null;
    public $SQUARE_APPLICATION_ID = null;

    /**
     * Define Globael Varible in Constructer
     */

    public function __construct()
    {

        // Use the environment and the key name to get the appropriate values from the .env file.

        $this->access_token = env('SQUARE_ACCESS_TOKEN');
        $this->location_id =  env('SQUARE_LOCATION_ID');
        $this->SQUARE_APPLICATION_ID =  env('SQUARE_APPLICATION_ID');

        // Initialize the authorization for Square

        $this->client = new SquareClient([
            'accessToken' => $this->access_token,
            'environment' => env('SQUARE_ENVIRONMENT')
        ]);


    }

    //Onsite Integartion Square Pay /// Start----------///

    public function payNow($request,$grand_total){

        $payment_response = ['error' => false,'status_code' => null,'data' => null];
        $nonce = $request->nonce;
        if (is_null($nonce)) {
            throw ValidationException::withMessages(['error' => 'Invalid card data']);
        }
        $payments_api = $this->client->getPaymentsApi();
        $amount = $grand_total;
        $money = new Money();
        $money->setAmount(100*$amount);
        $money->setCurrency($this->getPaymentCurrency());
        $create_payment_request = new CreatePaymentRequest($nonce, uniqid(), $money);
        try {
            $response = $payments_api->createPayment($create_payment_request);
            $status_code = $response->getStatusCode();
            PaymentLog::create(['user_requests' => @json_encode($request->all()),'user_response' => @$response->getBody(),'status_code' =>@$status_code,'ip'=>@$request->ip()]);
            if ($response->isError()) {
                $errors = $response->getErrors();
                throw ValidationException::withMessages(['payment_error' => $errors['0']->getDetail()]);
            }
            if($status_code == 200){
                $payment_response['status_code'] = $status_code;
                $payment_response['data'] = $response->getBody();
                return $payment_response;
            }
            $this->errorExceptionPaymentStatusCode($status_code);

        } catch (ApiException $e) {

            throw ValidationException::withMessages(['error' => 'Caught exception']);
       
        }

    }

    /**
     * Get Selecte Currency
     * @return Application|Factory|View|void
     */

    public function getPaymentCurrency(){
        return 'GBP';
    }

    //Extra Exception Stataus Code

    public function errorExceptionPaymentStatusCode($status_code){

        $defineStatusCode = [

            // Informational 1xx
            "100" => 'Continue',
            "101" => 'Switching Protocols',

            // Success 2xx
            "200" => 'Success',
            "201" => 'Created',
            "202" => 'Accepted',
            "203" => 'Non-Authoritative Information',
            "204" => 'No Content',
            "205" => 'Reset Content',
            "206" => 'Partial Content',

            // Redirection 3xx
            "300" => 'Multiple Choices',
            "301" => 'Moved Permanently',
            "302" => 'Found',  // 1.1
            "303" => 'See Other',
            "304" => 'Not Modified',
            "305" => 'Use Proxy',
            // 306 is deprecated but reserved
            "307" => 'Temporary Redirect',

            // Client Error 4xx
            "400" => 'Bad Request',
            "401" => 'Unauthorized',
            "402" => 'Payment Required',
            "403" => 'Forbidden',
            "404" => 'Not Found',
            "405" => 'Method Not Allowed',
            "406" => 'Not Acceptable',
            "407" => 'Proxy Authentication Required',
            "408" => 'Request Timeout',
            "409" => 'Conflict',
            "410" => 'Gone',
            "411" => 'Length Required',
            "412" => 'Precondition Failed',
            "413" => 'Request Entity Too Large',
            "414" => 'Request-URI Too Long',
            "415" => 'Unsupported Media Type',
            "416" => 'Requested Range Not Satisfiable',
            "417" => 'Expectation Failed',

            // Server Error 5xx
            "500" => 'Internal Server Error',
            "501" => 'Not Implemented',
            "502" => 'Bad Gateway',
            "503" => 'Service Unavailable',
            "504" => 'Gateway Timeout',
            "505" => 'HTTP Version Not Supported',
            "509" => 'Bandwidth Limit Exceeded'
        ];

        throw ValidationException::withMessages(['payment_error' => $defineStatusCode[$status_code]]);

    }


}
