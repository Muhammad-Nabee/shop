@extends('frontend.master')
@section('title')
  {{$page->title}}
@stop
@section('description')
   {{$page->meta_description}}
@stop
@section('keywords')
   {{ $page->meta_keywords }}
@stop

@section('content')

    <div class="breadcrumb-area mt-30">
        <div class="container">
            <div class="breadcrumb">
                <ul class="d-flex align-items-center">
                    <li><a href="{{url('/')}}">Home</a></li>
                    <li class="active"> {{$page->title}} </li>
                </ul>
            </div>
        </div>
        <!-- Container End -->
    </div>

    <div class="about-us pt-30 pb-45 pagecontents">
        <div class="container">
            <div class="terms-content sidbar-style">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="about-desc pt-4 pb-4 pr-3 pl-3">
                            <h1 class="mb-20 page-title">{{ $page->title }}</h1>
                            {!! $page->description !!}
                        </div>
                    </div>
                </div>
           </div>
        </div>
    </div>


@stop
