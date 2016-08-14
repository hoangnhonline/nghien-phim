<div id="slider">
  <div class="swiper-wrapper">
    @if( $hotArr->count() > 0)
      @foreach( $hotArr as $movies)
       <div class="swiper-slide" style="background-image: url({{ Helper::showImage( $movies->poster_url ) }});">
          <a href="/{{ $movies->slug }}-{{ $movies->id }}.html"
             class="slide-link"
             title="{{ $movies->title }}"></a>
          <span class="slide-caption">
             <h2>{{ $movies->title }}</h2>
             <p class="sc-desc">{{ $movies->description }}</p>
             <div class="slide-caption-info">
                <div class="block"><strong>Thể loại:</strong>
                
                     <?php $i = 0; 
                     $filmCategory = $movies->filmCategoryName($movies->id);
                      $countCategory = count($filmCategory);
                     ?>
                      @if( !empty( $filmCategory ) )
                        @foreach ( $filmCategory as $category)  
                        <?php $i++; 
                        ?>                
                        
                        <a href="/{{ $category['slug'] }}" title="{{ $category['name'] }}">{{ $category['name'] }}</a>                         
                        {{ $i < $countCategory ? ", " : "" }}
                      
                      @endforeach
                    @endif
                  
                 
                </div>
                <div class="block"><strong>Quốc gia:</strong>
                    
                     <?php $i = 0; 
                     $filmCountry = $movies->filmCountryName($movies->id);
                      $countCountry = count($filmCountry);
                     ?>
                      @if( !empty( $filmCountry ) )
                        @foreach ( $filmCountry as $country)  
                        <?php $i++; 
                        ?>                
                        
                        <a href="/{{ $country['slug'] }}" title="{{ $country['name'] }}">{{ $country['name'] }}</a>                         
                        {{ $i < $countCountry ? ", " : "" }}
                      
                      @endforeach
                    @endif
                  
                  
                </div>
                @if( $movies->duration )
                <div class="block"><strong>Thời lượng:</strong> {{ $movies->duration }}</div>
                @endif
                <div class="block"><strong>Chất lượng:</strong> {{ $movies->quality == 1 ? "HD" : ( $movies->quality == 2 ? "SD" : "CAM" ) }}</div>
                @if(  $movies->release_year )
                <div class="block"><strong>Release:</strong> {{ $movies->release_year }}</div>
                @endif
                @if(  $movies->imdb )
                <div class="block"><strong>IMDB:</strong> {{ $movies->imdb }}</div>                
                @endif
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