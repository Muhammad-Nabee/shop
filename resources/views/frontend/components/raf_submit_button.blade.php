<div class="col-md-12 mt-1">
    <div class="form-group form-check">
        <input class="form-check-input" id="i_agree" name="i_agree" type="checkbox" required="required" kl_vkbd_parsed="true" />
        <label class="form-check-label" for="i_agree">I agree to the <a href="{{url('page/terms-and-conditions')}}">Terms and Conditions</a> and I confirm that I am over 18.</label>
    </div>
    <div class="alert alert-danger w-50 mt-2 d-none" id="i_agree_err_msg">
        <i class="fa fa-times-circle mr-2"></i>
        You must click on the terms and conditions to continue
    </div>
    <div class="form-group form-check pl-0 pb-4">
        <button type="button" id="raf_submit_btn" class="btn btn-success btn-lg">Proceed</button>
    </div>
</div>
