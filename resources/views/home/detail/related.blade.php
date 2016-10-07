<!--related-->
<div class="movies-list-wrap mlw-related">
   <div class="ml-title ml-title-page">
      <span>Có thể bạn muốn xem</span>
   </div>
   <div class="movies-list movies-list-full">
      @if( $relatedArr->count() > 0)
         @foreach( $relatedArr as $movies)
         <div class="ml-item">
            <a href="{{ route('landing', $movies->slug) }}" class="ml-mask jt"
               data-url="{{ route('movies-info', [ $movies->id ]) }}"
               title="{{ $movies->title }}"
               >
               <span class="mli-quality">{{ $movies->quality == 1 ? "HD" : ( $movies->quality == 2 ? "SD" : "CAM" ) }}</span>
               <img data-original="{{ Helper::showImage( $movies->image_url )}}" title="{{ $movies->title }}" class="lazy thumb mli-thumb"
                  alt="{{ $movies->title }}">
               <span class="mli-info">
                  <h2>{{ $movies->title }}</h2>
               </span>
            </a>
         </div>
         @endforeach
      @endif
      <script type="text/javascript">         
         $("img.lazy").lazyload({
             effect: "fadeIn"
         });
      </script>
   </div>
</div>
<!--/related-->