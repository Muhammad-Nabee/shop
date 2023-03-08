@if(count($categories_menus) > 0)
        <ul style="display: none;">
            @foreach($categories_menus as $key => $cat)
                @if($cat->section)
                    @if($cat->section->status == 1)
                        <li>
                            <span>
                               <a
                                   href="{{url('treatments/category/'.$cat->seo_url_slug)}}">
                                   {{$cat->title}}</a>
                            </span>
                            @if($cat->medicines)
                                <ul>
                                @foreach($cat->medicines as $med_key => $med)

                                        <li>
                                            <a href="{{url('treatments/medicine/'.$cat->seo_url_slug.'/'.$med->seo_url_slug)}}">
                                                {{$med->title}} </a>
                                        </li>

                                @endforeach
                                </ul>
                            @endif
                        </li>
                    @endif
                @endif
            @endforeach
        </ul>
@endif
