<div id="slider">
  <div class="swiper-wrapper">
    @if( $hotArr->count() > 0)
      @foreach( $hotArr as $movies)
       <div class="swiper-slide" style="background-image: url({{ Helper::showImage( $movies->image_url ) }});">
          <a href="/{{ $movies->slug }}-{{ $movies->id }}.html"
             class="slide-link"
             title="{{ $movies->title }}"></a>
          <span class="slide-caption">
             <h2>{{ $movies->title }}</h2>
             <p class="sc-desc">{{ $movies->description }}</p>
             <div class="slide-caption-info">
                <!--<div class="block"><strong>Genre:</strong>
                   <a href="genre/action/" title="Action">Action</a>, <a href="genre/sci-fi/" title="Sci-Fi">Sci-Fi</a>, <a href="genre/horror/" title="Horror">Horror</a>                                
                </div>-->
                @if( $movies->duration )
                <div class="block"><strong>Thời lượng:</strong> {{ $movies->duration }}</div>
                @endif
                <div class="block"><strong>Chất lượng phim:</strong> {{ $movies->quality == 1 ? "HD" : ( $movies->quality == 2 ? "SD" : "CAM" ) }}</div>                
             </div>
           
                <a onclick="location.href='/{{ $movies->slug }}-{{ $movies->id }}.html'" title=""class="btn btn-success mt20">Xem phim</a>
             
          </span>
       </div>
      @endforeach    
     @endif
  </div>
  <div class="swiper-pagination"></div>
  <div class="clearfix"></div>
</div>