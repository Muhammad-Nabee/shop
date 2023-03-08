@extends('frontend.patient.main')
@section('title', 'Delete Account')
@section('patient-content')

    <style>
        #delete-popup{
            z-index: 9999999 !important;
        }
    </style>

    <div class="col-md-9 mb-4">
        @include("frontend.components.messages")
        <div class="card">
            <div class="card-header bg-white">
                <h5 class="card-title mb-0">Delete Account</h5>
            </div>
            <div class="card-body">
                <p>
                    {!! CommonHelper::getPageSection('delete-patient-account') !!}
                </p>
{{--                <form method="post" action="{{url('delete-patient-account')}}">--}}
{{--                    @csrf--}}
                    <button type="button" class="btn btn-danger mb-2 " data-toggle="modal" data-target="#delete-popup">Yes, Delete My Account</button>
{{--                </form>--}}
            </div>
        </div>
    </div>

    <div class="modal" id="delete-popup">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">
                        Are you sure?
                    </h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body text-left">

                    <p>

                        Are you sure you want to delete your account, this process is irreversible .

                    </p>

                </div>
                <form method="post" action="{{url('delete-patient-account')}}">
                    @csrf
                    <!-- Modal footer -->
                    <div class="modal-footer">

                        <button type="submit" class="btn btn-danger ">Yes</button>

                        <button type="button" class="btn btn-secondary close-mod" data-dismiss="modal">No</button>

                    </div>

                </form>

            </div>
        </div>
    </div>

@stop()
