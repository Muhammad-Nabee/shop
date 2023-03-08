@extends('frontend.master')
@section('title', 'Choose Treatments')
@section('style')
    <link href="{{ asset('assets/css/td_styles.css')}}" rel="stylesheet">
@endsection
@section('content')
    <?php
    use App\Helpers\CommonEloHelper;$category_details = $data['category_details'];
    $medicines = $data['medicines'];
    ?>
    <div id="mm-0" class="mm-page mm-slideout">
        <div id="page">

            <!-- PAGE CONTENTS -->
            <main class="bg_gray">
                <div class="container margin_30">
                    <div class="page_header">
                        <div class="breadcrumbs">
                            <ul>
                                <li><a href="{{url('/')}}">Home</a></li>
                                <li><a href="{{url('/')}}">Treatments</a></li>
                                <li></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /page_header -->
                    <div class="row">

                        <div class="col-lg-12">

                            <div class="alert alert-info mt-3 pb-2">
                                <div class="row">
                                    <div class="col-lg-3 col-md-3 col-sm-12 mb-2">
                                        <a href="{{url('treatments/raf/'.$category_details['seo_url_slug'])}}" class="btn btn-success d-block"><strong>1.</strong> Questionnaire </a>
                                    </div>

                                    <div class="col-lg-3 col-md-3 col-sm-12 mb-2">
                                        <a href="{{url('treatments/choose-treatments/'.$category_details['seo_url_slug'])}}" class="btn btn-success d-block"><strong>2.</strong> Choose Treatment</a>
                                    </div>

                                    <div class="col-lg-3 col-md-3 col-sm-12 mb-2">
                                        <a href="#" class="btn btn-secondary d-block disabled"><strong>3.</strong> Your Order</a>
                                    </div>

                                    <div class="col-lg-3 col-md-3 col-sm-12 mb-2">
                                        <a href="#" class="btn btn-secondary d-block disabled"><strong>4.</strong> Finish</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Popular Treatments -->
                    <div class="row">
                        @if (Session::has('raf_error'))
                            <div class="col-lg-12">
                                <div class="alert alert-danger alert-dismissible hide_alert mt-3" role="alert"> {!! Session::get('raf_error') !!}
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                                </div>
                            </div>
                        @endif
                        @if (Session::has('raf_success'))
                            <div class="col-lg-12">
                                <div class="alert alert-success alert-dismissible hide_alert mt-3" role="alert"> {!! Session::get('raf_success') !!}
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                                </div>
                            </div>
                        @endif
                        <div class="col-12">
                            <div class="content-box mt-4">

                                <div class="mb-4">

                                    <h3 class="text-gray-dark"> {{ filter_string($category_details->title) }} </h3>
                                    <h6> Choose your medication from the list below. </h6>

                                </div>
                                <form action="{{url('treatments/submit-choose-treatments')}}" id="raf_frm" method="post">
                                    @csrf
                                    <div class="row mt-3">

                                        <div class="col-12">
                                            <div id="accordion" role="tablist" aria-multiselectable="true" class="faqs">
                                                @php
                                                    $order_btn_show = false;
                                                    $no_data_found = true;
                                                    $med_id = '';
                                                @endphp
                                                @if(count($medicines) > 0)
                                                    @php
                                                        $no_data_found = false;
                                                    @endphp
                                                    @foreach($medicines as $key => $medicine)
                                                        @if($medicine->category)
                                                            @if($medicine->category->section)
                                                                @if($medicine->category->section->status == 1)
                                                                    @if($medicine->category->status == 1)

                                                                        @php
                                                                            $order_btn_show = true;
                                                                        @endphp

                                                                        <div class="card mb-2">
                                                                            <div class="card-header bg-light" role="tab">
                                                                                <h5 class="mb-0">
                                                                                    <a data-toggle="collapse" data-parent="#accordion" href="#item-{{$medicine->hash_id}}" aria-expanded="false" aria-controls="item-<?php echo $medicine['id']; ?>"> <?php echo ucfirst(filter_string($medicine['title'])); ?> </a>
                                                                                </h5>
                                                                            </div>
                                                                            @if(@Session::get('td_cart')[$category_details['id']]['cat_medicine'] && !empty(Session::get('td_cart')[$category_details['id']]['cat_medicine']))
                                                                            <?php

                                                                                $med_id = explode('-',Session::get('td_cart')[$category_details['id']]['cat_medicine'])[0];

                                                                            ?>
                                                                            @endif
                                                                            <div id="item-{{$medicine->hash_id}}" class="collapse @if(empty($med_id) && ++$key === 1 ) show @elseif(!empty($med_id) && $med_id == $medicine->id) show @else '' @endif" role="tabpanel">
                                                                                <div class="card-block p-4">
                                                                                    @if(count($medicine->allactivestrengths) > 0)
                                                                                        @foreach($medicine->allactivestrengths as $key => $med_strength)
                                                                                            @if(count($med_strength->allactivequantities) > 0)
                                                                                                @foreach($med_strength->allactivequantities as $key => $med_qty)

                                                                                                    <?php
                                                                                                    $medicine_price_charged = ($med_qty->price && $med_qty->price->discount_price != '0.00') ? number_format($med_qty->price->discount_price, 2) : number_format(@$med_qty->price->price, 2) ;
                                                                                                    ?>
                                                                                                    @if($medicine_price_charged > 0.00)

                                                                                                            <div class="row mb-2">

                                                                                                                <div class="col-md-8 col-sm-12">

                                                                                                                    <div class="form-group">
                                                                                                                        <div class="">
                                                                                                                            <?php
                                                                                                                            $medicine_stock_row = CommonEloHelper::get_table_row_where_arr('kod_med_stock', array('medicine_id' => $medicine->id, 'strength_id' => $med_strength->id, 'quantity_id' => $med_qty->id));

                                                                                                                            ?>
                                                                                                                            <label>
                                                                                                                                @if(!($medicine_stock_row) || $medicine_stock_row['stock_level'] < 1)
                                                                                                                                <strong class="text-danger"> Out Of Stock </strong>
                                                                                                                                @else
                                                                                                                                    <input type="radio" name="cat_medicine" value="<?php echo $medicine->id.'-'.$med_strength->id.'-'.$med_qty->id; ?>" <?php echo (@Session::get('td_cart')[$category_details['id']]['cat_medicine'] && @Session::get('td_cart')[$category_details['id']]['cat_medicine'] == $medicine->id.'-'.$med_strength->id.'-'.$med_qty->id) ? 'checked="checked"' : '' ; ?> />
                                                                                                                                @endif
                                                                                                                                {{ ucfirst(filter_string($medicine->title)) }}

                                                                                                                                {{ filter_string($med_strength->strength) }}

                                                                                                                                {{ filter_string($med_qty->form) }}
                                                                                                                            </label>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <div class="col-md-2 col-sm-12"> <strong> Qty: </strong> <?php echo filter_string($med_qty->qty); ?> </div>
                                                                                                                <div class="col-md-2 col-sm-12"> &pound;<?php echo number_format($medicine_price_charged, 2); ?> </div>
                                                                                                            </div>
                                                                                                    @endif
                                                                                                @endforeach
                                                                                            @endif
                                                                                        @endforeach
                                                                                    @endif

                                                                                    @if(count($medicine->allactivequantitiesNoStrength) > 0)

                                                                                        @foreach($medicine->allactivequantitiesNoStrength as $in_key => $med_qty_no_strength)

                                                                                            <?php
                                                                                            $medicine_price_charged = ($med_qty_no_strength->price && $med_qty_no_strength->price->discount_price != '0.00') ? number_format($med_qty_no_strength->price->discount_price, 2) : number_format($med_qty_no_strength->price->price, 2) ;
                                                                                            ?>
                                                                                            @if($medicine_price_charged > 0.00)

                                                                                                <div class="row mb-2">

                                                                                                    <div class="col-md-8 col-sm-12">

                                                                                                        <div class="form-group">
                                                                                                            <div class="">
                                                                                                                <?php
                                                                                                                $medicine_stock_row = CommonEloHelper::get_table_row_where_arr('kod_med_stock', array('medicine_id' => $medicine->id, 'strength_id' => '0', 'quantity_id' => $med_qty_no_strength->id));
                                                                                                                ?>
                                                                                                                <label>
                                                                                                                    @if(!($medicine_stock_row) || $medicine_stock_row['stock_level'] < 1)
                                                                                                                        <strong class="text-danger"> Out Of Stock </strong>
                                                                                                                    @else
                                                                                                                        <input type="radio" name="cat_medicine" value="<?php echo $medicine->id.'-'.'0'.'-'.$med_qty_no_strength->id; ?>" <?php echo (@Session::get('td_cart')[$category_details['id']]['cat_medicine'] && @Session::get('td_cart')[$category_details['id']]['cat_medicine'] == $medicine->id.'-'.'0'.'-'.$med_qty_no_strength->id) ? 'checked="checked"' : '' ; ?> />
                                                                                                                    @endif
                                                                                                                    {{ ucfirst(filter_string($medicine->title)) }}

                                                                                                                    {{ filter_string($med_qty_no_strength->form) }}
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-2 col-sm-12"> <strong> Qty: </strong> <?php echo filter_string($med_qty_no_strength->qty); ?> </div>
                                                                                                    <div class="col-md-2 col-sm-12"> &pound;<?php echo number_format($medicine_price_charged, 2); ?> </div>
                                                                                                </div>
                                                                                            @endif
                                                                                        @endforeach
                                                                                    @endif
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    @else
                                                                        @php
                                                                            $no_data_found = true;
                                                                        @endphp
                                                                    @endif
                                                                @else
                                                                    @php
                                                                        $no_data_found = true;
                                                                    @endphp
                                                                @endif
                                                            @endif
                                                        @endif
                                                    @endforeach
                                                @endif
                                                @if($no_data_found)
                                                    <p class="text-center p-4">No medication is Found.</p>
                                                @endif

                                                <input type="hidden" name="category_id" value="{{ filter_string($category_details->id) }}" readonly="readonly" />
                                            </div>
                                            <div class="form-group mt-4">
                                                <div class="alert alert-danger w-50 mt-2 d-none" id="empty_order_btn">

                                                    <i class="fa fa-times-circle mr-2"></i>

                                                    Please, select one product to continue.

                                                </div>

                                                <a href="{{url('treatments/raf/'.filter_string($category_details['seo_url_slug']))}}" class="btn btn-lg btn-secondary"> Back </a>
                                                @if(count($medicines) > 0 && $order_btn_show)
                                                    <button type="button" id="submit_raf_btn" class="btn btn-success btn-lg pull-right"> Order Now </button>
                                                @endif
                                            </div>
                                        </div>

                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </main>
        </div>
    </div>
@endsection()

@section('common_custom_scripts')
    <script>
        $('#submit_raf_btn').click(function(){
            var cat_medicine = $('input[name="cat_medicine"]:checked').val();

            if(cat_medicine == undefined){
                $('#empty_order_btn').removeClass('d-none');
                // alert('Please, select one product to continue.');
            } else {
                $('#raf_frm')[0].submit();
            } // if(cat_medicine == undefined)

        }); // click
    </script>
@endsection()
