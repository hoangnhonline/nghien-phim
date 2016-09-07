@section('title'){{ $title }}@endsection
@section('site_description'){{ $detail->meta_description or $settingArr['site_description'] }}@endsection
@section('site_keywords'){{ $detail->meta_keywords or $settingArr['site_keywords'] }}@endsection
@section('banner'){{ $settingArr['banner'] }}@endsection
@section('facebook_appid'){{ $settingArr['facebook_appid'] }}@endsection
@section('site_name'){{ $settingArr['site_name'] }}@endsection
@section('favicon'){{ Helper::showImage($settingArr['favicon']) }}@endsection
@section('logo'){{ Helper::showImage($settingArr['logo']) }}@endsection
<div id="mv-info">
    <a href="{{ route('detail', $detail->slug) }}" title="Compadres" class="thumb mvi-cover" style="background-image: url({{ Helper::showImage( $detail->poster_url ) }})"></a>   
    @if( $episode && $detail->type == 2)
    <div id="list-eps">
        <div class="le-server">
            <div class="les-content">                
                @foreach( $episode as $ep )
                <a class="btn-eps {{ $ep->id == $episodeActive->id ? "active" : "" }} " id="eps-{{ $ep->id }}" href="/{{ $detail->slug }}/{{ $ep->slug }}.html">{{ $ep->name }}</a>
                @endforeach
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    @endif
    <div class="mvi-content">
        <!--<div class="mvic-btn">
            <div class="mv-rating">

            </div>
            <div class="clearfix"></div>          
            <a href="http://players.123movies.to/stream.php" target="_blank" class="btn btn-block btn-lg btn-success btn-01"><i
                class="fa fa-play mr10"></i>
            Stream in HD</a>
            <a href="http://players.123movies.to/download.php" target="_blank" class="btn btn-block btn-lg btn-success btn-02"><i class="fa fa-download mr10"></i>
            Download in HD</a>
           

        </div> -->
        <div class="thumb mvic-thumb" style="background-image: url({{ Helper::showImage( $detail->image_url ) }});"></div>
        <div class="mvic-desc">
            <h3>{{ $detail->title }}</h3>
            @if( $detail->trailer != '')
            <div class="block-trailer">
                <a data-target="#pop-trailer" data-toggle="modal" class="btn btn-primary">
                    <i class="fa fa-video-camera mr5"></i>Trailer
                </a>
            </div>
            @endif
            <div class="block-social">

                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_native_toolbox"></div>

            </div>            
            <div class="mvic-info">
                <div class="mvici-left">
                    <p>
                        <strong>Thể loại: </strong>
                        <?php $tmp = $detail->filmCategoryName($detail->id ); 
                        $countTmp = count($tmp);
                        $i = 0;
                        ?>
                            @foreach($detail->filmCategoryName($detail->id ) as $value)
                            <?php $i++; ?>
                            <a href="{{ route('cate', $value['slug']) }}" title="{{ $value['name'] }}">{{ $value['name'] }}</a><?php if($i < $countTmp) echo ", "; ?> 
                            @endforeach
                        </p>
                    <p>
                        <strong>Diễn viên: </strong>
                         <?php $tmp = $detail->filmCrewShow($detail->id, 1); 
                        $countTmp = count($tmp);
                        $i = 0;
                        ?>
                        @if($countTmp > 0)
                            @foreach($detail->filmCrewShow($detail->id, 1) as $value)
                            <?php $i++; ?>
                            <a href="{{ route('dien-vien', $value['slug']) }}" title="{{ $value['name'] }}">{{ $value['name'] }}</a><?php if($i < $countTmp && $i > 1) echo ", "; ?> 
                            @endforeach
                        @endif
                       </p>
                    <p>
                        <strong>Đạo diễn: </strong>
                        <?php $tmp = $detail->filmCrewShow($detail->id, 2); 
                        $countTmp = count($tmp);
                        $i = 0;
                        ?>
                        @if($countTmp > 0)
                            @foreach($detail->filmCrewShow($detail->id, 2) as $value)
                            <?php $i++; ?>
                            <a href="{{ route('dao-dien', $value['slug']) }}" title="{{ $value['name'] }}">{{ $value['name'] }}</a><?php if($i < $countTmp && $i > 1) echo ", "; ?> 
                            @endforeach
                        @endif

                    </p>
                    <p>
                        <strong>Quốc gia: </strong>
                        <a href="country/uk" title="United Kingdom">United Kingdom</a>, <a href="country/us" title="United States">United States</a> </p>
                </div>
                <div class="mvici-right">
                    <p><strong>Thời lượng:</strong> {{ $detail->duration  ? $detail->duration : "Đang cập nhật" }}</p>

                    <p><strong>Chất lượng:</strong> <span class="quality">{{ $detail->quality == 1 ? "HD" : ( $detail->quality == 2 ? "SD" : "CAM" ) }}</span></p>

                    <p><strong>Năm sản xuất:</strong> {{ $detail->year_release  ? $detail->year_release : "Đang cập nhật" }}</p>

                    <p><strong>IMDb:</strong> {{ $detail->imdb }}</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div> 
</div>
<style type="text/css">
    .hero-unit {
        margin: 0 auto 0 auto;
    }
    
    .hero-unit video {
        width: 100%;
    }
</style>
<input type="hidden" id="video_url" value="{{ $detail->url }}">
<input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">