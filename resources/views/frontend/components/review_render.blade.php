@if(count($reviews) > 0)
    @foreach($reviews as $key => $review)
        <div class="row">
            <div class="col-lg-8">
                <div class="review_content">
                    <span class="custom-font-size">@if($review->reviewPatient)
                        <strong>{{$review->reviewPatient->first_name}}</strong>
                      @endif
                    </span>
                    <div class="clearfix add_bottom_10">
                        <span class="product-rating">
                            @for($i = 1; $i <= 5; $i++)
                                <i class="fa fa-star {{($i <= $review->rating) ? 'star_active' : 'star_in_active'}}"></i>
                            @endfor

                        </span>
                    </div>
                    <p>{{$review->rating_text}}</p>
                </div>
            </div>
        </div>
    @endforeach
@endif
