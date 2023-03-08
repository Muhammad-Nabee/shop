@extends('frontend.master')
@section('title', 'My Cart')
@section('style')
@stop
@section('content')

    <link rel="stylesheet" href="{{ asset('assets/css/square.css')}}">
    <script type="text/javascript" src="{{env('SQUARE_CDN')}}">
        </script>

    <!-- link to the local SqPaymentForm initialization -->

    <script type="text/javascript">

            // Set the application ID
            var applicationId = "{{env('SQUARE_APPLICATION_ID')}}";
            // Set the location ID
            var locationId =  "{{env('SQUARE_LOCATION_ID')}}";

            function buildForm(form) {
              if (SqPaymentForm.isSupportedBrowser()) {
                form.build();
                form.recalculateSize();
              }
            }

            function buildForm1() {
                if (SqPaymentForm.isSupportedBrowser()) {
                  var paymentDiv = document.getElementById("form-container");
                  if (paymentDiv.style.display === "none") {
                      paymentDiv.style.display = "block";
                  }
                  paymentform.build();
                  paymentform.recalculateSize();
                } else {
                  // Show a "Browser is not supported" message to your buyer
                }
            }

            /*
             * function: requestCardNonce
             *
             * requestCardNonce is triggered when the "Pay with credit card" button is
             * clicked
             *
             * Modifying this function is not required, but can be customized if you
             * wish to take additional action when the form button is clicked.
             */
            function requestCardNonce(event) {
              // Don't submit the form until SqPaymentForm returns with a nonce
              event.preventDefault();

              // Request a nonce from the SqPaymentForm object
              paymentForm.requestCardNonce();
            }

            // Create and initialize a payment form object
            var paymentForm = new SqPaymentForm({

              // Initialize the payment form elements
              applicationId: applicationId,
              locationId: locationId,
              inputClass: 'sq-input',
              autoBuild: false,

              // Customize the CSS for SqPaymentForm iframe elements
              inputStyles: [{
                fontSize: '16px',
                fontFamily: 'Helvetica Neue',
                padding: '16px',
                color: '#373F4A',
                backgroundColor: 'transparent',
                lineHeight: '24px',
                placeholderColor: '#CCC',
                _webkitFontSmoothing: 'antialiased',
                _mozOsxFontSmoothing: 'grayscale'
              }],

              // Initialize Apple Pay placeholder ID
              applePay: false,

              // Initialize Masterpass placeholder ID
              masterpass: false,

              // Initialize the credit card placeholders
              cardNumber: {
                elementId: 'sq-card-number',
                placeholder: 'XXXX XXXX XXXX XXXX',
              },
              cvv: {
                elementId: 'sq-cvv',
                placeholder: 'CVV'
              },
              expirationDate: {
                elementId: 'sq-expiration-date',
                placeholder: 'MM/YY'
              },
              postalCode: {
                elementId: 'sq-postal-code',
                placeholder: '12345'
              },

              // SqPaymentForm callback functions
              callbacks: {

                /*
                 * callback function: createPaymentRequest
                 * Triggered when: a digital wallet payment button is clicked.
                 * Replace the JSON object declaration with a function that creates
                 * a JSON object with Digital Wallet payment details
                 */

                // createPaymentRequest: function () {

                //   return {
                //     requestShippingAddress: false,
                //     requestBillingInfo: true,
                //     currencyCode: "GBP",
                //     countryCode: "UK",
                //     total: {
                //       label: "MERCHANT NAME",
                //       amount: "100",
                //       pending: false
                //     },
                //     lineItems: [
                //       {
                //         label: "Subtotal",
                //         amount: "100",
                //         pending: false
                //       }
                //     ]
                //   }
                // },

                /*
                 * callback function: cardNonceResponseReceived
                 * Triggered when: SqPaymentForm completes a card nonce request
                 */
                cardNonceResponseReceived: function (errors, nonce, cardData) {
                  $('#error-card').addClass('d-none');
                  $('#error-card').html('');
                  if (errors) {
                     //  document.getElementById("error-card").style.display = "";
                     // document.getElementById("error-card").innerHTML = errors[0].message;
                    // Log errors from nonce generation to the Javascript console
                    // console.log("Encountered errors:",JSON.stringify(errors[0].message));
                    errors.forEach(function (error) {
                      console.log(error);
                      // alert(item);
                      $('#error-card').removeClass('d-none');
                      var new_html = '<li> '+ error.message +' </li>';
                       $('#error-card').append(new_html);
                    // console.log(' er= ' + JSON.stringify(error));
                    });
                    return;
                  }

                  // Assign the nonce value to the hidden form field
                  document.getElementById('card-nonce').value = nonce;

                  // POST the nonce form to the payment processing page
                  document.getElementById('nonce-form').submit();

                },

                /*
                 * callback function: unsupportedBrowserDetected
                 * Triggered when: the page loads and an unsupported browser is detected
                 */
                unsupportedBrowserDetected: function () {
                  /* PROVIDE FEEDBACK TO SITE VISITORS */
                },

                /*
                 * callback function: inputEventReceived
                 * Triggered when: visitors interact with SqPaymentForm iframe elements.
                 */
                inputEventReceived: function (inputEvent) {
                  switch (inputEvent.eventType) {
                    case 'focusClassAdded':
                      /* HANDLE AS DESIRED */
                      break;
                    case 'focusClassRemoved':
                      /* HANDLE AS DESIRED */
                      break;
                    case 'errorClassAdded':
                      break;
                    case 'errorClassRemoved':
                      break;
                    case 'cardBrandChanged':
                      /* HANDLE AS DESIRED */
                      break;
                    case 'postalCodeChanged':
                      /* HANDLE AS DESIRED */
                      break;
                  }
                },

                /*
                 * callback function: paymentFormLoaded
                 * Triggered when: SqPaymentForm is fully loaded
                 */
                paymentFormLoaded: function () {
                  /* HANDLE AS DESIRED */
                  console.log("The form loaded!");
                }
              }
            });
    </script>

    <!-- link to the custom styles for SqPaymentForm -->
    <script>
     document.addEventListener("DOMContentLoaded", function(event) {
      if (SqPaymentForm.isSupportedBrowser()) {
        paymentForm.build();
        paymentForm.recalculateSize();
      }
    });
    </script>

    <main id="main">

        <!-- ======= Breadcrumbs Section ======= -->

      {{--   <section id="cta" class="cta breadcrmbstopmargin">
            <div class="container aos-init aos-animate" data-aos="zoom-in">

                <div class="text-center">
                    <h2 class="text-white">Payment</h2>

                </div>
            </div>
        </section> --}}
        <!-- End Breadcrumbs Section -->
        <!-- ======= Featured Services Section ======= -->
        <section id="featured-services" class="featured-services pt-0 bg-light">
            <div class="container pb-45 pt-15" data-aos="fade-up">
                @include("frontend.include.message")
                @inject('GetCartTotalPrices', 'App\Repositories\MedicineCheckClassForBlade')
                 <?php

                  $cart_total = $GetCartTotalPrices->getTotalPrice();

                  ?>
                <div class="row mt-6" >
                    <div class="col-md-7 mb-3 mt-4">
                        <div class="card cartcard">
                            {{--     <div class="card-header">
                               <span><a href="javascript:;" class="edit-patient-details" data-type="gp"></a></span>
                            </div> --}}
                            <div class="card-body">
                               <h3 class="mb-3 mt-1"> <strong>Payment</strong></h3>

                                <div class="alert alert-danger d-none"  id="error-card">

                                </div>


                                 <form id="nonce-form" novalidate action="{{url('checkout/pay-now')}}" method="post">
                                  @csrf()
                                  <fieldset>
                                    <span class="label">Card Number</span>
                                    <div id="sq-card-number"></div>
                                    <div class="third">
                                      <span class="label">Expiration</span>
                                      <div id="sq-expiration-date"></div>
                                    </div>
                                    <div class="third">
                                      <span class="label">CVV</span>
                                      <div id="sq-cvv"></div>
                                    </div>
                                    <div class="third">
                                      <span class="label">Postal</span>
                                      <div id="sq-postal-code"></div>
                                    </div>
                                  </fieldset>
                                  <button id="sq-creditcard" class="button-credit-card" onclick="requestCardNonce(event)">Pay £{{ number_format(cartPrice(), 2) }}</button>
                                  <div id="error"></div>

                                  <!--
                                    After a nonce is generated it will be assigned to this hidden input field.
                                  -->

                                  <input type="hidden" id="total_amount" name="total_amount" value="<?php echo round(cartPrice(), 2) ?>">
                                  <input type="hidden" id="card-nonce" name="nonce">

                                </form>

                            </div>
                        </div>
                    </div>

                     <div class="col-md-5 mb-3 mt-4">
                        <div class="card cartcard">

                            <div class="card-body">


                               <?php
                                $cart = new \App\Classes\Cart(session()->get("cart"));
                                $cart_total         = $cart->discountPrice;
                                $show_free_dev      = false;
                                ?>

                                <table class="table table-bordered" >


                                  <thead>
                                    <th>Item</th>
                                    <th>Price (&pound;)</th>
                                  </thead>
                                  <tbody>

                                  @foreach($cart->items as $item)
                                      <?php
                                      $product = $item["item"];
                                      $offer = getOffer(!empty($item["hasOffer"]) ? $item["hasOffer"] : 0);
                                      ?>
                                      <tr>
                                          <td>
                                              <p class="mb-1">{{ $product->title }}</p>
                                              @if(!empty($offer))
                                              <p class="text-success">
                                                  <strong>Offer: </strong>
                                                  <small>
                                                      {{ $offer->name }}
                                                  </small>
                                              </p>
                                              @endif
                                          </td>
                                          <td>
                                              {{ $item['qty']}} x {{number_format($item["item"]['discount_price'],2) }}
                                          </td>
                                      </tr>
                                  @endforeach

                                  <tr>
                                      <?php
                                        $deliveryMethodId = session()->get('delivery_method_id');
                                        $method = \Illuminate\Support\Facades\DB::table("kod_delivery_methods")->where("id", $deliveryMethodId)->first();
                                      ?>
                                      <td>{{ $method->title }}</td>
                                      <td>{{ number_format($method->price, 2) }}</td>
                                  </tr>

                                  @if($cart->couponFree > 0)
                                  <tr>
                                      <td> <strong>Coupon Applied </strong></td>
                                      <td>{{ number_format($cart->couponFree, 2) }}</td>
                                  </tr>
                                  @endif

                                <tr  class="bg-light">

                                  <td ><strong>Total Price</strong></td>
                                  <td>
                                      <strong>&pound;{{ number_format(cartPrice(), 2) }}</strong>
                                  </td>
                                </tr>

                                  </tbody>
                                </table>
                               <img src="{{asset('assets/img/square_payment_logo.jpeg')}}" class="img-fluid mt-4" style="height: 80px;" >
                            </div>
                        </div>
                    </div>


                </div>

            </div>
        </section><!-- End Featured Services Section -->
    </main>

@endsection
@section('scripts')

    <script src="{{ asset('assets/js/mc_scripts/form_validation/dist/jquery.validate.js') }}"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>

@endsection
