@extends('frontend.master')

@section('title', !empty($category->meta_title) ? $category->meta_title : $category->title)
@section('description',!empty($category->meta_description) ? $category->meta_description : $category->title)
@section('keywords',!empty($category->meta_keywords) ? $category->meta_keywords : $category->title)

@section('content')
    <style>
        img.card-img-top.img-fluid.img-responsive {
            width: 400px;
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
                                <li><a href="{{url('/')}}">Treatments</a></li>
                                <li> {{$category->title}} </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /page_header -->
                    <div class="box_about">
                        <div class="row justify-content-center">

                            <div class="col-md-6">

                                <h3 class="mb-3"> {{$category->title}} </h3>

                                <p class="lead mt-4"> {!! $category->description !!} </p>

                                <p>
                                    @if($category->raf_id !== 0 && !empty($category->raf_id))
                                        <a class="btn_1" href="{{url('treatments/raf/'.$category->seo_url_slug)}}" role="button">Start Consultation</a>
                                    @else
                                        <a class="btn_1" href="#" role="button">Start Consultation</a>
                                    @endif
                                </p>

                            </div>

                            <div class="col-md-6">
                                @if(!empty($category->image_1))
                                    <img class="img-fluid img-responsive"
                                         src="{{ url('storage/category/'.$category->image_1) }}"
                                         alt="">
                                @else
                                    <img class="card-img-top img-fluid img-responsive"
                                         src="{{URL::asset("assets/no-product-image.jpg")}}">
                                @endif

                            </div>

                        </div>
                        <div class="row">

                            <div class="col-md-12">
                                <h3 class="mt-5 mb-1 w-100">Treatments Options</h3>
                            </div>

                            @if(count($cat_details) > 0)
                                @foreach($cat_details as $key => $med)
                                    <div class="col-md-4 col-6 mt-4">
                                        <div class="card cheight2" style="
    min-height: 100%;
">

                                            <div class="card-header ch2"> {{$med->title}} </div>

                                            <div class="card-body cb2 text-center">
                                                @if(count($med->allactivemedias) > 0)
                                                    @if(!empty($med->allactivemedias[0]->media))
                                                        <img class="img-fluid img-responsive"
                                                             src="{{ url('storage/medicine/'.$med->allactivemedias[0]->media) }}">
                                                    @else
                                                        <img class="card-img-top img-fluid img-responsive"
                                                             src="{{URL::asset("assets/no-product-image.jpg")}}">
                                                    @endif
{{--                                                    <img src="{{url('storage/medicine/'.$med->allactivemedias[0]->media)}}" class="img-fluid" alt="No media">--}}
                                                @endif

                                                <p class="prod-desc mt-4 mb-3">
                                                    {!! \Illuminate\Support\Str::limit($med->description, $limit = 78, $end = '...') !!}
                                                </p>

                                                <p>

                                                    <a class="btn_1" href="{{url('treatments/medicine/'.$med->category->seo_url_slug."/".$med->seo_url_slug)}}" role="button">Start Consultation</a>

                                                </p>
                                            </div>

                                        </div>
                                    </div>
                                @endforeach
                            @endif

                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </main>
        </div>
    </div>

@stop()

