<div class="row ">
    <div class="col-xl-12 col-lg-12 col-md-12">
        @if (Session::has('raf_success'))
            <div class="alert alert-success alert-dismissible fade show" id="alert-success" role="alert">
                <span>{!! Session::get('raf_success') !!}</span>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        @endif
        @if (count($errors) > 0)
            <div class="alert alert-danger" id="">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        @if (Session::has('raf_error'))
            <div class="alert alert-danger alert-dismissible fade show" id="alert-danger" role="alert">
                <span>{!! Session::get('raf_error') !!}</span>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        @endif
    </div>
</div>
