@extends('frontend.patient.main')
@section('title', 'Dashboard ')
@section('patient-content')
    <style>
        .custom-a-link {
            color: #004dda;
            text-decoration: none;
        }

    </style>
    <div class="col-md-9 mb-4">
        @include("frontend.components.messages")
        <div class="card">
            <div class="card-header bg-white">
                <h5 class="card-title mb-0">My Orders</h5>
            </div>
            <div class="card-body">
                <div class="container">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                {{--                              Orders--}}
                            </div>
                            @inject('GetCartTotalPrices', 'App\Repositories\MedicineCheckClassForBlade')
                            <div class="panel-body">
                                <table class="table table-condensed table-striped">
                                    <thead>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Order Date</th>
                                        <th>Order Status</th>
                                        <th>Tracking</th>
                                        <th>Details</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @php
                                        $grand_total = 0.00;
                                    @endphp
                                    @if(count($orders) > 0)
                                        @foreach($orders as $key => $order)
                                        
                                            @php
                                                $iter = ++$key;

                                            @endphp
                                            <tr data-toggle="collapse" data-target="#demo{{$iter}}"
                                                class="accordion-toggle">
                                                <td>{{$order->invoice_no}}</td>
                                                <td>{{date('d/m/Y', strtotime($order->created_at))}}</td>
                                                <td>
                                                    @if($order->status == 'P')
                                                        <p>Pending</p>
                                                    @elseif($order->status == 'D')
                                                        <p>Declined</p>
                                                    @elseif($order->status == 'C')
                                                        <p>Completed</p>
                                                    @elseif($order->status == 'DISPENSED')
                                                        <p>Dispensed</p>
                                                    @endif
                                                </td>
                                                <td>
                                                    @if($order->tracking_code)
                                                        <a href="{{$order->tracking_code}}" class="" target="_blank">
                                                            Track Delivery </a>
                                                    @else
                                                        <p>
                                                            Not added yet.
                                                        </p>
                                                    @endif
                                                </td>
                                                <td>
                                                    <button class="btn btn-default btn-xs"><span class="ti-eye"></span>
                                                    </button>
                                                </td>

                                            </tr>
                                            <tr>

                                                <td colspan="12" class="hiddenRow">
                                                    <div class="accordian-body collapse" id="demo{{$iter}}">
                                                        <table class="table table-striped">
                                                            <thead>
                                                            <tr class="info">
                                                                <th>Image</th>
                                                                <th>Product</th>
                                                                <th>Qty</th>
                                                                <th>Price</th>
                                                                <th>Action</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            @if($order->orderDetails && count($order->orderDetails) > 0)
                                                                @foreach($order->orderDetails as $detail)
                                                                    @php
                                                                        $medicine_details = CommonHelper::getMedicineDetails($detail->medicine_id);
                                                                        $strength_details = CommonHelper::getMedicineStrengthDetails($detail->strength_id);
                                                                        $qty_details = CommonHelper::getMedicineQuantityDetails($detail->quantity_id);
                                                                        $medicine_price = CommonHelper::getMedicinePricingDetails($detail->medicine_id, $detail->strength_id, $detail->quantity_id);
                                                                        $medicine_medias = CommonHelper::getMedicineMediasDetails($detail->medicine_id);
                                                                        $review_check = App\Models\MedicineReviews::where('order_id', $detail->order_id)
                                                                                                ->where('medicine_id', $detail->medicine_id)
                                                                                                ->where('strength_id', $detail->strength_id)
                                                                                                ->where('quantity_id', $detail->quantity_id)
                                                                                                ->where('patient_id', Auth::user()->id)
                                                                                                ->first();

                                                                        $item_price_charged = $detail->price_charged;

                                                                        $item_price_total = $detail->qty * $detail->price_charged;

                                                                        $grand_total = $grand_total + $item_price_total;
                                                                        $cat_medicine = $detail->medicine_id . '-' . $detail->strength_id . '-' . $detail->quantity_id;
                                                                        $medicine_proceed_status = $GetCartTotalPrices->checkMedicineStatus($cat_medicine);
                                                                        $medicine_proceed_out_of_stock_status = $GetCartTotalPrices->checkMedicineStock($cat_medicine);
                                                                    @endphp
                                                                    <tr>
                                                                        <td>
                                                                            @if(count($medicine_medias) > 0)

                                                                                <img
                                                                                    src="{{ url('storage/medicine/'.$medicine_medias[0]->media) }}"
                                                                                    width="50px"
                                                                                    class="img-fluid img-responsive"/>
                                                                            @endif
                                                                            <br>
                                                                            @if($order->status === 'C')
                                                                                @if($detail->is_reviewed == null || $detail->is_reviewed == '0')
                                                                                    <a href="javascript:;"
                                                                                       data-hash-id="{{$detail->hash_id}}"
                                                                                       class="btn btn-default btn-sm custom-a-link add-edit-review">
                                                                                        Review
                                                                                    </a>
                                                                                @endif
                                                                            @endif
                                                                        </td>
                                                                        <td>
                                                                            {{($medicine_details->title) ? filter_string($medicine_details->title) : ''  }}
                                                                            {{(@$strength_details->strength) ? filter_string(@$strength_details->strength) : ''  }}
                                                                            {{($qty_details->qty) ? filter_string($qty_details->qty) : ''  }}
                                                                            {{($qty_details->form) ? filter_string($qty_details->form) : ''  }}
                                                                        </td>
                                                                        <td>
                                                                            {{filter_string($detail->qty)}}
                                                                            x {{($qty_details->qty) ? filter_string($qty_details->qty) : ''  }}
                                                                        </td>
                                                                        <td>
                                                                            &pound;{{number_format($item_price_total, 2)}}
                                                                        </td>
                                                                        <td>
                                                                            @if($medicine_proceed_status == true)
                                                                                @if($medicine_proceed_out_of_stock_status == true)
                                                                                    <a target="_blank"
                                                                                       href="{{url('treatments/raf/'.$medicine_details->category->seo_url_slug.'/1')}}"
                                                                                       class="btn btn-success">
                                                                                        Reorder
                                                                                    </a>
                                                                                @endif
                                                                            @endif
                                                                        </td>
                                                                    </tr>
                                                                @endforeach
                                                            @else
                                                                <tr>
                                                                    <td colspan="5" class="text-center">
                                                                        No data found
                                                                    </td>
                                                                </tr>
                                                            @endif
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <tr>
                                            <td colspan="5" class="text-center">
                                                No data found
                                            </td>
                                        </tr>
                                    @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop()
@section('scripts')
    <script type="text/javascript">

        $(document).ready(function () {

            $('.add-edit-review').click(function () {

                var hash_id = $(this).attr('data-hash-id');

                $.ajax({

                    type: "GET",


                    url: '{{url('get-review-form')}}' + '/' + hash_id,

                    // processData: false,
                    // contentType: false,

                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },

                    /*data: {

                        'hash_id' : hash_id,

                    },*/

                    beforeSend: function (result) {

                        // $("#loading").css("display","block");

                        $('#crud_errors_div').addClass('d-none');
                        $('#crud_errors_ul').html('');

                    },
                    success: function (response) {
                        // $("#loading").css("display","none");

                        // swal(response);

                        var popup_title = '';

                        if (hash_id == '') {

                            popup_title = 'Leave a Review';

                        } else {

                            popup_title = 'Leave a Review';

                        } // if(hash_id == '')

                        $('#mc-popup-dialog').addClass('modal-lg');

                        // Set Heading
                        $('#general_bootstrap_ajax_popup_heading').html(popup_title);

                        // Set Body
                        $('#crud_contents_r').html(response);

                        // Set Footer
                        // $('#general_bootstrap_ajax_popup_footer').prepend('');

                        $('#general_bootstrap_ajax_popup').modal({
                            backdrop: 'static',
                            keyboard: false
                        });

                    }, // success
                    error: function (xhr, status, error) {

                        mcShowErrorsGet(xhr, status, error);

                    }

                }); // $.ajax

            });

        });

    </script>
@endsection
