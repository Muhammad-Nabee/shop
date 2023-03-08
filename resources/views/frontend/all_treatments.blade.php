@extends('frontend.master')
@section('title', 'All Treatments')

@section('content')
    <style>
        img.card-img-top.img-fluid.img-responsive {
            height: 165px;
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
                                <li><a href="{{url('/treatments/all-treatments')}}">All Treatments</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /page_header -->
                        <div class="container margin_60_35">

                            <div class="main_title">
                                <h2>All Treatments</h2>
                                <p>Discover our range of safe and regulated treatments.</p>
                            </div>
                            <div class="row mb-5">
                                @if(count($sections) > 0)
                                    @foreach($sections as $key => $section)
                                        <div class="col-lg-12 col-md-12 col-sm-12 mb-2"> <h3> {{$section->title}} </h3> </div>
                                        @if($section->allactivecategories)
                                            @foreach($section->allactivecategories as $key => $cat)
                                                <div class="col-6 col-md-3 col-xl-3 mb-5">
                                                    <div class="card">
                                                        <a href="{{url('treatments/category/'.$cat->seo_url_slug)}}">
                                                            @if(!empty($cat->image_1))
                                                                <img class="card-img-top img-fluid"
                                                                     src="{{ url('storage/category/'.$cat->image_1) }}"
                                                                     alt="">
                                                            @else
                                                                <img class="card-img-top img-fluid img-responsive"
                                                                     src="{{URL::asset("assets/no-product-image.jpg")}}">
                                                            @endif
                                                        </a>
                                                        <div class="card-body hv bg-info p-2 text-center">
                                                            <a href="{{url('treatments/category/'.$cat->seo_url_slug)}}">
                                                            </a>
                                                            <h6 class="text-white p-0 m-0">
                                                                <a href="{{url('treatments/category/'.$cat->seo_url_slug)}}"> </a>
                                                                <a class="text-white" href="{{url('treatments/category/'.$cat->seo_url_slug)}}"> {{$cat->title}} </a>
                                                            </h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endforeach
                                        @endif
                                    @endforeach
                                @else
                                <p>
                                    No data found
                                </p>
                                @endif


                            </div>
                            <!-- /row -->
                        <!-- /container -->
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </main>
        </div>
    </div>

@stop()

