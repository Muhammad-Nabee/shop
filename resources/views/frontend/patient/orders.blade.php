@extends('frontend.patient.dashboard_new')
@section('title', 'Orders')
@section('style')
<style type="text/css">
     .red{
        color:red;
     }
     .btn{
        padding: 3px 35px !important;
     }
     .page-item.active .page-link {
       border-color: red !important;
       background-color: red !important;

     }
     </style>
{{--   <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
 --}}
 <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap4.min.css">

@stop
@section('patient-content')

 <div class="col-md-12">
    <h3 class="mb-10 custom-title mb-4"> Orders </h3>
    <!-- Returning Customer Start -->
     <div class="table-responsive">
         <table id="orders-datatable" class="table w-100 table-condensed table-striped">
             <thead class="dark-pink-bg">
             <tr>
                 <th>sr#</th>
                 <th>Order ID</th>
                 <th>Order Date</th>
                 <th>Order Status</th>
                 <th>Price</th>
                 <th>Details</th>
             </tr>

             </thead>
             <tbody>
             @if(count($orders) > 0)
                 @foreach($orders as $order)


                      <?php
                     //$savedCart = [];
                    // if(!empty($order->txn_cart)) {
                      //   $savedCart = json_decode($order->txn_cart, 1);
                     //}

                     //$grand_total = ($savedCart["discountPrice"] - $savedCart["couponFree"]) + $savedCart["deliveryFee"];
                    // ?>


                     <tr>
                         <td>{{ $loop->iteration }}</td>
                         <td>
                             {{$order->id}}
                         </td>
                         <td>
                             {{$order->created_at->format('d/m/Y')}}
                         </td>
                         <td>
                             @if($order->status === 'P')
                                 <span class="font-weight-bold">Pending</span>
                             @elseif($order->status === 'D')
                                 <span class="font-weight-bold">Declined</span>
                                 <br>
                                 @if(!empty($order->accept_note))
                                    <small class="order-note"  data-note="{{$order->accept_note}}" style="cursor:pointer;"> Order Note </small>
                                 @endif

                             @elseif($order->status === 'C')
                                 <span class="font-weight-bold">Completed</span>
                                 <br>
                                 @if(!empty($order->accept_note))
                                    <small class="order-note" style="cursor:pointer;" data-note="{{$order->accept_note}}"> Order Note </small>
                                 @endif
                             @elseif($order->status === 'DISPENSED')
                                 <span class="font-weight-bold">DISPENSED</span>
                             @endif

                         </td>
                         <td>
                             AED {{number_format($order->price,2)}}
                         </td>
                         <td>
                             <a href="{{url('patient-order-details',$order->hash_id)}}" >
                                 <button class="btn btn-fill-out btn-sm"> View Details </button>
                             </a>
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
         </table>    <!-- Returning Customer End -->
     </div>

     <div class="modal" id="select-order-note" style="z-index: 9999">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Heade-->
                <div class="modal-header">
                    <h4 class="modal-title mt-0">
                        Order Note
                    </h4>
                    <button type="button" class="close close-mod" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <div id="order-note-p">
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
@stop()
@section('scripts')
    <script type="text/javascript">
        $(document).ready(function() {
           $('#orders-datatable').DataTable( {

           });


            $('.close-mod').click(function (){
                $('#select-order-note').hide();
            });

        });

        $(document).on("click", ".order-note", function(){
                var note = $(this).data('note');
                $('#order-note-p').html('<p>'+note+'</p>');
                $('#select-order-note').show();
        });



    </script>
    <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap4.min.js"></script>
@stop
