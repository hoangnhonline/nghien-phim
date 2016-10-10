@section('title'){{ $title }}@endsection
@section('site_description'){{ $detail->meta_description or $settingArr['site_description'] }}@endsection
@section('site_keywords'){{ $detail->meta_keywords or $settingArr['site_keywords'] }}@endsection
@section('banner'){{ $settingArr['banner'] }}@endsection
@section('facebook_appid'){{ $settingArr['facebook_appid'] }}@endsection
@section('site_name'){{ $settingArr['site_name'] }}@endsection
@section('favicon'){{ Helper::showImage($settingArr['favicon']) }}@endsection
@section('logo'){{ Helper::showImage($settingArr['logo']) }}@endsection
<div id="mv-info">
    <!--<div class="play-notice">
        <div class="alert alert-warning" style="margin-bottom: 0; border-radius: 0;">
            <i class="fa fa-warning mr5"></i> If the movie does not work, please try to stream it with other browser.
        </div>
    </div>-->

    <div class="wrapper" id="play-video">
       
    </div>   
    <!-- Load player -->

    <div id="bar-player">
        <a href="#mv-info" rel="nofollow" class="btn bp-btn-light"><i class="fa fa-lightbulb-o"></i> <span></span></a>

        <span id="button-favorite">
                        <a rel="nofollow" onclick="favorite(15541,2)"
                           class="btn bp-btn-like"><i class="fa fa-heart"></i>
        Yêu thích</a>
                        <div class="popover fade top in popover-like" style="display: none;">
        <div class="arrow" style="left: 50%;"></div>
        <div class="popover-content">
            <p id="popover-notice"></p>
            <p class="mt10">
                <a href="javascript:void(0)" rel="nofollow" onclick="favorite(15541,2)" class="btn btn-success btn-sm"><i
                        class="fa fa-heart"></i> Yêu thích</a><a href="javascript:void(0)"
                                                                class="btn btn-sm btn-default toggle-popover-like">Bỏ yêu thích</a>
            </p>
        </div>
    </div>
                    </span>
        <a href="#commentfb" rel="nofollow" class="btn bp-btn-review"><i class="fa fa-comments"></i>
                        <span>Comment (<span id="comment-count">0</span>)</span></a>
        <a class="btn bp-btn-report hidden" data-target="#pop-report" data-toggle="modal" style="color: #fff000; float: right"><i class="fa fa-warning"></i> Báo cáo</a>

        <div class="clearfix"></div>
    </div>
    <!--<div class="mobile-btn">
        <a class="btn btn-block btn-lg btn-success btn-01" target="_blank" href="http://players.123movies.to/stream.php"><i class="fa fa-play mr10"></i>Stream in HD</a>
        <a class="btn btn-block btn-lg btn-success btn-02" target="_blank" href="http://players.123movies.to/download.php"><i class="fa fa-download mr10"></i>Download in HD</a>
        <div class="clearfix"></div>
    </div>-->
    <div id="favorite-alert" style="display: none;">
        <div class="alert alert-success" role="alert">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
            <i class="fa fa-check"></i> <span id="favorite-message"></span>
            <a target="_blank" href="user/movies/favorite" title="Your favorite" class="alert-link">Yêu thích của bạn.</a>
        </div>
    </div>
    <div id="report-alert" style="display: none;">
        <div class="alert alert-success" role="alert">
            <a href="javascript:void(0)" class="close" data-dismiss="alert" aria-label="close">×</a>
            <i class="fa fa-check"></i> Cảm ơn bạn đã gửi báo cáo. Chúng tôi sẽ cố gắng chỉnh sửa sớm nhất.
        </div>
    </div>
    @if( $episode )
    <div id="list-eps">
        <div class="le-server">
            <div class="les-content">                
                @foreach( $episode as $ep )
                <a class="btn-eps {{ $ep->id == $episodeActive->id ? "active" : "" }} " id="eps-{{ $ep->id }}" href="<?php if($detail->type==2) { ?>/{{ $detail->slug }}/{{ $ep->slug }}.html <?php } ?>">{{ $ep->name }}</a>
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
            <div class="desc">
                {{ $detail->description }}
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
                        
                        <?php $tmp = $detail->filmCountryName($detail->id ); 
                        $countTmp = count($tmp);
                        $i = 0;
                        ?>
                            @foreach($detail->filmCountryName($detail->id ) as $value)
                            <?php $i++; ?>
                            <a href="{{ route('cate', $value['slug']) }}" title="{{ $value['name'] }}">{{ $value['name'] }}</a><?php if($i < $countTmp) echo ", "; ?> 
                            @endforeach
                        </p>
                </div>
                <div class="mvici-right">
                    <p><strong>Thời lượng:</strong> {{ $detail->duration  ? $detail->duration : "Đang cập nhật" }}</p>

                    <p><strong>Chất lượng:</strong> <span class="quality">
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
                    </span></p>

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
     .jwplayer.jw-state-idle .jw-controlbar {display: table !important;} 
</style>
<input type="hidden" id="video_url" value="{{ $detail->url }}">
<input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
<div class="content-kus" style="text-align: center; margin: 20px 0; padding: 15px; background-color: #FFF">
    <div class="fb-comments" data-href="{{ url()->current() }}" data-numposts="5"></div>
    <div class="clearfix"></div>
</div>
<style type="text/css">
.fb-comments, .fb-comments iframe[style], .fb-like-box, .fb-like-box iframe[style], .fb-comments span, .fb-comments iframe span[style], .fb-like-box span, .fb-like-box iframe span[style] 
{
       width: 100% !important;
}

</style>
@section('javascript_page')
<script type="text/javascript" src="{{ URL::asset('assets/plugins/jwplayer/jwplayer.js') }}" ></script>
<script>jwplayer.key = "dWwDdbLI0ul1clbtlw+4/UHPxlYmLoE9Ii9QEw==";</script>
<script type="text/javascript">
 var sources = [
                @foreach($urlVideo as $label => $video)
                {file: "{{ $video }}",
                type:'mp4',
                label: '{{ $label }}'
                },
                @endforeach
                ];
                console.log(sources);
                    var playerInstance = jwplayer("play-video");
                    playerInstance.setup({
                       sources: sources,
                       // playlist: "http://phimnhanh.com/play/3d9ea47650c774a91ab1eb4574d7c48fc8f553bd0f60079dbec714a646502d3b/13294/634810",
                        width: "100%",
                        autostart: true,
                        aspectratio: "16:9",
                        primary: "html5",
                        controls: true,
                    });
                    playerInstance.on('error', function() {
                      playerInstance.load({
                        file:sources[1].file,
                        type:'mp4',
                        label : sources[1].label,
                      });
                      playerInstance.play();
                    });                    

</script>
@endsection
