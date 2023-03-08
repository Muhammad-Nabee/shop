@extends('frontend.master')
@section('title', $medicine->metatag ? !empty($medicine->metatag->meta_title) ? $medicine->metatag->meta_title : $medicine->title : $medicine->title )
@section('description',$medicine->metatag ? !empty($medicine->metatag->meta_description) ? $medicine->metatag->meta_description : $medicine->title : $medicine->title )
@section('keywords',$medicine->metatag ? !empty($medicine->metatag->meta_keywords) ? $medicine->metatag->meta_keywords : $medicine->title : $medicine->title )

@section('content')
    <style>
        .star_active {
            color: #f1c40f !important;
        }
        .custom-rating-size {
            font-size: 25px !important;
        }
    </style>
    <div id="mm-0" class="mm-page mm-slideout">
        <div id="page">

            <!-- PAGE CONTENTS -->
            <main class="bg_gray">
                <div class="container margin_30">
                    <div class="page_header">
                        <div class="breadcrumbs">
                            <ul>
                                <li><a href="{{url('/')}}">Home</a></li>
                                <li><a href="{{url('/treatments/category/'.$medicine->category->seo_url_slug)}}">{{$medicine->category->title}}</a></li>
                                <li> {{$medicine->title}} </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /page_header -->
                    <div class="">
                        <div class="row justify-content-center pt-4 pb-2 pr-2 pl-2 bg-white">
                            <div class="col-md-6">
                                <div class="all" style="width: 100%; height: 100%; padding: 20px;">

                                    <div class="slider">
                                        <div class="owl-carousel owl-theme main">
                                            @if(@$medicines->allactivemedias && count($medicines->allactivemedias) > 0)
                                                @foreach($medicines->allactivemedias as $key => $media)
                                                    <div class="item-box">
                                                        <div style="background-image: url({{ url('storage/medicine/'.$media->media) }});" class="item-box">
                                                        </div>
                                                    </div>
                                                @endforeach
                                            @endif
                                        </div>
                                        <div class="left nonl"><i class="ti-angle-left"></i></div>
                                        <div class="right"><i class="ti-angle-right"></i></div>
                                    </div>
            <div class="mt-5">
                <h3 class="mb-3">Our prices</h3>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th> Medicine </th>
                            <th width="10%">  Qty </th>
                            <th width="10%"> Price </th>
                        </tr>
                    </thead>
                    <tbody>
                    @if(count($medicine->allactivestrengths) > 0)
                        @foreach($medicine->allactivestrengths as $key => $med_strength)
                            @foreach($med_strength->allactivequantities as $key => $med_qty)
                            <tr>
                                <td>
                                    {{$medicine->title}}
                                    {{$med_strength->strength}}
                                     {{$med_qty->form}}
                                </td>

                                <td>
                                    {{$med_qty->qty}}
                                </td>

                                <td> @if($med_qty->price) £{{number_format($med_qty->price->price, 2)}} @endif</td>

                            </tr>
                            @endforeach
                    @endforeach
                    @endif
                    @if(count($medicine->allactivequantitiesNoStrength) > 0)
                            @foreach($medicine->allactivequantitiesNoStrength as $key => $med_qty)
                                <tr>
                                    <td>

                                        {{$medicine->title}}
                                        {{$med_qty->form}}

                                    </td>

                                    <td>

                                        {{$med_qty->qty}}

                                    </td>

                                    <td> @if($med_qty->price) £{{number_format($med_qty->price->price, 2)}} @endif</td>

                                </tr>
                        @endforeach
                        @endif

                        @if(count($medicine->allactivestrengths) < 1 && count($medicine->allactivequantitiesNoStrength) < 1)
                            <tr>
                                <td colspan="3" class="text-center">
                                    No data found
                                </td>
                            </tr>
                        @endif

                    <!-- Show no strength medicine quantities -->

                    </tbody>
                </table>
            </div>
                                </div>
                            </div>
                            <div class="col-md-6">

                                <div class="col-md-12">
                                    <h3> {{$medicine->title}} </h3>
                                </div>

                                @php

                                    $average_stars_ratings = 0;
                                    $average_stars_ratings_counter = 0;
                                    if (count($medicine->medicineReviews) > 0) {
                                        $average_stars_ratings_counter = count($medicine->medicineReviews);
                                        $average_stars_ratings_sum = $medicine->medicineReviews()->sum('rating');
                                        $average_stars_ratings = round($average_stars_ratings_sum / $average_stars_ratings_counter);
                                    }

                                @endphp


                                <div class="col-md-12">
                                    <span class="rating custom-rating-size">
                                        @for($i = 1; $i <= 5; $i++)
                                            <i class="icon-star {{($i <= $average_stars_ratings) ? 'star_active' : ''}}"></i>
                                        @endfor
                                    </span>
                                    <em>
                                        {{ (!empty($average_stars_ratings_counter) ? $average_stars_ratings_counter : 0) }}
                                        @if($average_stars_ratings_counter > 1)
                                            reviews
                                        @else
                                            review
                                        @endif
                                    </em>
                                </div>

                                <div class="col-md-12">

                                    {{$medicine->sub_heading}}
                                </div>

                                <div class="col-md-12 mt-3">
                                    @if($medicine->category)
                                        @if($medicine->category->raf_id !== 0 && !empty($medicine->category->raf_id))
                                            <a class="btn_1" href="{{url('treatments/raf/'.$medicine->category->seo_url_slug)}}" role="button">Start Consultation</a>
                                        @else
                                            <a class="btn_1" href="#" role="button">Start Consultation</a>
                                        @endif
                                    @else
                                        <a class="btn_1" href="#" role="button">Start Consultation</a>
                                    @endif
                                </div>

                                <div class="col-md-12 mb-5 mt-4">
                                    <div class="alert alert-success" style="border:5px dashed red;" role="alert">
                                        @if(!empty($medicine->price_guarantee_note))
                                            {!! $medicine->price_guarantee_note !!}
                                        @else
                                            {!! CommonHelper::getPageSection('price-guarantee-note') !!}
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row">

                            <div class="col-md-12">

                                <div class="tabs_product">
                                    <div class="container">
                                        <ul class="nav nav-tabs" role="tablist">
                                            @if(@$medicines->allactivelongdesc && count($medicines->allactivelongdesc) > 0)
                                                @foreach($medicines->allactivelongdesc as $key => $long_desc)
                                                    <li class="nav-item">
                                                        <a id="tab-{{$long_desc->hash_id}}" href="#description_tab_{{$long_desc->hash_id}}" class="nav-link @if ($loop->first) active @endif" data-toggle="tab" role="tab">
                                                            {{$long_desc->title}} </a>
                                                    </li>
                                                @endforeach
                                            @endif
                                            @if(count($medicine->medicineReviews) > 0)
                                                <li class="nav-item">
                                                    <a id="tab-review" href="#description_tab_review" class="nav-link @if( count($medicines->allactivelongdesc) < 1) active @endif" data-toggle="tab" role="tab">
                                                        Reviews </a>
                                                </li>
                                            @endif
                                        </ul>
                                    </div>
                                </div>

                                <div class="tab_content_wrapper">
                                    <div class="container">
                                        <div class="tab-content" role="tablist">

                                            @if(@$medicines->allactivelongdesc && count($medicines->allactivelongdesc) > 0)
                                                @foreach($medicines->allactivelongdesc as $key => $long_desc)
                                                    <div id="description_tab_{{$long_desc->hash_id}}" class="card tab-pane fade  @if ($loop->first) active show @endif" role="tabpanel" aria-labelledby="tab-{{$long_desc->hash_id}}">
                                                        {!! $long_desc->description !!}
                                                    </div>
                                                @endforeach
                                            @endif
                                            @if(count($medicine->medicineReviews) > 0)

                                                <div id="description_tab_review" class="card tab-pane fade" role="tabpanel" aria-labelledby="tab-review">
                                                    @foreach($medicine->medicineReviews as $key => $review)
                                                        <div class="row">
                                                            <div class="col-lg-8">
                                                                <div class="review_content">
                                                                    <div class="clearfix add_bottom_10">
                                                                        <span class="rating">
                                                                            @for($i = 1; $i <= 5; $i++)
                                                                                <i class="icon-star {{($i <= $review->rating) ? '' : 'empty'}}"></i>
                                                                            @endfor
                                                                            <em>{{$review->rating}}/5</em>
                                                                        </span>
                                                                        <em>Published {{ \Carbon\Carbon::parse($review->created_at)->diffForhumans() }}</em>
                                                                    </div>
                                                                    @if($review->reviewPatient)
                                                                        <h4>{{ucwords($review->reviewPatient->first_name)}} {{ucwords($review->reviewPatient->last_name)}}</h4>
                                                                    @endif
                                                                    <p>{{$review->rating_text}}</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    @endforeach
                                                </div>

                                            @endif

                                        </div>
                                        <!-- /tab-content -->
                                    </div>
                                    <!-- /container -->
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- /row -->
                </div>

            </main>
        </div>
    </div>
@stop()
