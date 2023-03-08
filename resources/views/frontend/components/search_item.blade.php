@if(count($medicines) > 0) 
	@foreach($medicines as $medicine)
	    <a href="{{$medicine->seo_url_slug}}">
		    <div class="td-search-result-item font-weight-normal" style="padding: 7px;">
			  {{--   <img src="{{url('storage/products/'.$medicine->media[0]->media)}}"  style="
				    margin-top: 10px;
				" class="img-fluid mr-3" width="50px"> --}}
			    {{$medicine->title}} 
			</div>
		</a>
	@endforeach()
@else
	<div class="text-center p-3 no_record_found_div" id="">
	  <p class="text-danger"> No record found </p>
	</div>
@endif