{{--<ul class="ht-dropdown megamenu big-megamneu">--}}
{{--    <!-- Single Column Start -->--}}
{{--    @if(count($categories_menus) > 0)--}}
{{--        @foreach($categories_menus as $key => $cat)--}}
{{--            @if($cat->section && $cat->section->status == 1)--}}
{{--                <li>--}}
{{--                    <ul>--}}
{{--                        <li class="menu-tile">--}}
{{--                            <a  href="{{url('treatments/category/'.$cat->seo_url_slug)}}">--}}
{{--                                {{$cat->title}}</a>--}}
{{--                        </li>--}}

{{--                        @if($cat->medicines)--}}
{{--                            @foreach($cat->medicines as $med_key => $med)--}}

{{--                                <li><a href="{{url('treatments/medicine/'.$cat->seo_url_slug.'/'.$med->seo_url_slug)}}">--}}
{{--                                        {{$med->title}}</a></li>--}}

{{--                            @endforeach--}}
{{--                        @endif--}}

{{--                    </ul>--}}
{{--                </li>--}}
{{--            @endif--}}
{{--        @endforeach--}}
{{--    @endif--}}


{{--</ul>--}}
