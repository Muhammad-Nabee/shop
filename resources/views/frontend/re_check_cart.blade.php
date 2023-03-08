@inject('GetCartTotalPrices', 'App\Repositories\MedicineCheckClassForBlade')
<div class="row">
    <div class="col-12">
        <p>
            Some of the products are in active or out of stock
        </p>
    </div>
</div>

    <div class="row">
        <div class="col-md-12">
            {{--@if($show_btn)
                <button class="btn btn-success pull-right" type="button" id="proceed-order">Proceed</button>
            @endif--}}
            <button class="btn btn-secondary pull-right" data-dismiss="modal" type="button">Ok</button>
        </div>
    </div>
<script type="text/javascript">

    $(document).ready(function(){
        // Save
        $('#proceed-order').click(function(){
           location.reload()
            {{--$("#proceed-order").attr("disabled", true);--}}
            {{--$('#proceed-order').html('Loading..');--}}

            {{--location.href = "{{ url('/treatments/bypass-payment-process') }}";--}}
        });

    });

</script>
