@extends('frontend.master')
@section('title' ,'Faqs')
@section('style')
   <link href="https://cdn.jsdelivr.net/npm/bs-stepper/dist/css/bs-stepper.min.css" rel="stylesheet">
@stop
@section('content')

    <div class="breadcrumb-area mt-30">
        <div class="container">
            <div class="breadcrumb">
                <ul class="d-flex align-items-center">
                    <li><a href="{{url('/')}}">Home</a></li>
                    <li class="active"> FAQs </li>
                </ul>
            </div>
        </div>
        <!-- Container End -->
    </div>

    <div class="about-us pt-40 mb-5">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="about-desc">
                        <h3> FREQUENTLY ASKED QUESTIONS </h3>
                        <div class="accordion mt-5" id="accordionExample">
                            @foreach($faqs as $key => $faq)
                                <div class="card">
                                    <div class="card-header border-bottom bg-light" id="headingOne">
                                        <h5 class="mb-0"><button class="btn btn-link p-1 text-left font-weight-bold" type="button" data-toggle="collapse" data-target="#item-{{$faq->id}}" aria-expanded="false" aria-controls="item-{{$faq->id}}">
                                                {!! $faq->question !!}
                                            </button></h5>
                                    </div>
                                    <div @if(++$key == 1) class="collapse show" @else class="collapse" @endif  id="item-{{$faq->id}}" aria-labelledby="headingOne" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <p>{!! $faq->answer !!}.</p>
                                        </div>
                                    </div>
                                </div>
                            @endforeach()
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Container End -->
    </div>

@stop
