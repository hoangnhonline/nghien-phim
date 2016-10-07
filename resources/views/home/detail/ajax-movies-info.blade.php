<div class="jtip-quality">
@if ($detail->quality == 1)
Full HD
@elseif ($detail->quality == 2)
HD
@elseif ($detail->quality == 3)
SD
@elseif ($detail->quality == 4)
CAM
@elseif ($detail->quality == 5)
1080P
@endif
</div>
<div class="jtip-top">
    <div class="jt-info jt-imdb">IMDb: {{ $detail->imdb }}</div>
    <div class="jt-info">{{ $detail->release_year }}</div>
    <div class="jt-info">{{ $detail->duration }}</div>
    <div class="clearfix"></div>
</div>
<p class="f-desc">{{ $detail->description }}...</p>

    <div class="block">Quốc gia:
        <?php $countCountry = count($countryFilm); ?>
        @if( $countryArr )
            <?php $i = 0; ?>
            @foreach ( $countryFilm as $country_id )                
                <?php $i++; ?>
                @if( isset($countryArr[$country_id] ))   
                <a href="/{{ $countryArr[$country_id]['slug'] }}" title="{{ $countryArr[$country_id]['name'] }}">{{ $countryArr[$country_id]['name'] }}</a>{{ $i < $countCountry ? ", " : "" }}
                @endif
            @endforeach
        @endif
         </div>
    <div class="block">Thể loại:
        <?php $countCategory = count($categoryFilm); ?>
        @if( $categoryArr )
            <?php $i = 0; ?>
            @foreach ( $categoryFilm as $category_id )  
                <?php $i++; ?>                
                @if( isset($categoryArr[$category_id] ))                              
                <a href="/{{ $categoryArr[$category_id]['slug'] }}" title="{{ $categoryArr[$category_id]['name'] }}">{{ $categoryArr[$category_id]['name'] }}</a>{{ $i < $countCategory ? ", " : "" }}
                @endif
            @endforeach
        @endif

    </div>
<div class="jtip-bottom">
    <a href="{{ route('landing', $detail->slug) }}"
       class="btn btn-block btn-success"><i
            class="fa fa-play-circle mr10"></i>Xem phim</a>
        <!--<button onclick="favorite(15217,1)"
            class="btn btn-block btn-default mt10 btn-favorite-15217 add-favorite">
        Add to favorite    </button>-->
</div>
