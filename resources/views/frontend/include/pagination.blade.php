<div class="product-pagination mb-20 pb-15">
    <span class="grid-item-list">Showing 1-8 of 8 item(s)</span>
</div>
<ul class="blog-pagination ptb-20">
    <li class="active"><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>

</ul>

@php
// config
$link_limit = 7; // maximum number of links (a little bit inaccurate, but will be ok for now)
@endphp

@if ($paginator->lastPage() > 1)
    <ul class="blog-pagination ptb-20">
        <li class="{{ ($paginator->currentPage() == 1) ? ' active' : '' }}"><a href="{{ $paginator->url(1) }}">First</a></li>

        @for ($i = 1; $i <= $paginator->lastPage(); $i++)
            <?php
            $half_total_links = floor($link_limit / 2);
            $from = $paginator->currentPage() - $half_total_links;
            $to = $paginator->currentPage() + $half_total_links;
            if ($paginator->currentPage() < $half_total_links) {
                $to += $half_total_links - $paginator->currentPage();
            }
            if ($paginator->lastPage() - $paginator->currentPage() < $half_total_links) {
                $from -= $half_total_links - ($paginator->lastPage() - $paginator->currentPage()) - 1;
            }
            ?>
            @if ($from < $i && $i < $to)
                <li class="{{ ($paginator->currentPage() == $i) ? ' active' : '' }}">
                    <a href="{{ $paginator->url($i) }}">{{ $i }}</a>
                </li>
            @endif
        @endfor
        <li class="{{ ($paginator->currentPage() == $paginator->lastPage()) ? ' disabled' : '' }}">
            <a href="#"><i class="fa fa-angle-right"></i></a></li>
        <li >
            <a href="{{ $paginator->url($paginator->lastPage()) }}">Last</a>
        </li>
    </ul>
@endif
