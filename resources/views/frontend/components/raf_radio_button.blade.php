
<label class="btn btn-primary-custom {{@$prefilled_raf[$field_prefix.$raf_name] == $type ? 'active' : ''}}">
	<input type="radio" class="question-item-radio required-question" id="{{$field_prefix}}{{$raf_name}}_{{$type}}" name="{{$field_prefix}}{{$raf_name}}"  {{@$prefilled_raf[$field_prefix.$raf_name] == $type ? 'checked="checked"' : ''}} value="{{$type}}" autocomplete="off"  data-error-type="{{$error_type}}" data-action="{{$data_action}}" kl_vkbd_parsed="true" @if(isset($data_subq_name))  data-subq-name="{{$data_subq_name}}"
	 @endif> {{$label_name}}
</label> 