@section('title'){{ $title }}@endsection
@section('site_description'){{ $detail->meta_description or $settingArr['site_description'] }}@endsection
@section('site_keywords'){{ $detail->meta_keywords or $settingArr['site_keywords'] }}@endsection
@section('banner'){{ $settingArr['banner'] }}@endsection
@section('facebook_appid'){{ $settingArr['facebook_appid'] }}@endsection
@section('site_name'){{ $settingArr['site_name'] }}@endsection
@section('favicon'){{ Helper::showImage($settingArr['favicon']) }}@endsection
@section('logo'){{ Helper::showImage($settingArr['logo']) }}@endsection
<div id="mv-info">
                <div class="play-notice">
                    <div class="alert alert-warning" style="margin-bottom: 0; border-radius: 0;">
                        <i class="fa fa-warning mr5"></i> If the movie does not work, please try to stream it with other
                        browser.
                    </div>
                </div>
                
                    <div class="wrapper">
                     <video id="my-video" class="video-js vjs-16-9 vjs-big-play-centered" controls preload="auto" width="100%" height="100%"
                      poster="{{ Helper::showImage( $detail->poster_url ) }}" data-setup="{'fluid': true}">
                        <source src="{{ $episode->source}}" type='video/mp4'>                       
                        <p class="vjs-no-js">
                          To view this video please enable JavaScript, and consider upgrading to a web browser that
                          <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
                        </p>
                      </video>
                    </div>                   
                
                
                <div id="content-embed" style="display: none;">
                    <iframe id="iframe-embed" width="100%" height="500" scrolling="no" frameborder="0" src=""
                            allowFullScreen="true" webkitallowfullscreen="true" mozallowfullscreen="true"></iframe>
                </div>
                <!-- Load player -->

                <div id="bar-player">
                    <a href="#mv-info" class="btn bp-btn-light"><i class="fa fa-lightbulb-o"></i> <span></span></a>

                    <span id="button-favorite">
                        <a onclick="favorite(15541,2)"
                           class="btn bp-btn-like"><i class="fa fa-heart"></i>
        Favorite</a>
                        <div class="popover fade top in popover-like" style="display: none;">
        <div class="arrow" style="left: 50%;"></div>
        <div class="popover-content">
            <p id="popover-notice"></p>
            <p class="mt10">
                <a href="javascript:void(0)" onclick="favorite(15541,2)" class="btn btn-success btn-sm"><i
                        class="fa fa-heart"></i> Favorite</a><a href="javascript:void(0)"
                                                                class="btn btn-sm btn-default toggle-popover-like">Dismiss</a>
            </p>
        </div>
    </div>
                    </span>
                                        <a href="#commentfb" class="btn bp-btn-review"><i class="fa fa-comments"></i>
                        <span>Comment (<span id="comment-count">0</span>)</span></a>
                    <a class="btn bp-btn-report hidden" data-target="#pop-report" data-toggle="modal"
                       style="color: #fff000; float: right"><i class="fa fa-warning"></i> Report</a>

                    <div class="clearfix"></div>
                </div>
                <div class="mobile-btn">
                    <a class="btn btn-block btn-lg btn-success btn-01" target="_blank"
                       href="http://players.123movies.to/stream.php"><i class="fa fa-play mr10"></i>Stream in HD</a>
                    <a class="btn btn-block btn-lg btn-success btn-02" target="_blank"
                       href="http://players.123movies.to/download.php"><i class="fa fa-download mr10"></i>Download in HD</a>
                    <div class="clearfix"></div>
                </div>
                <div id="favorite-alert" style="display: none;">
                    <div class="alert alert-success" role="alert">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                        <i class="fa fa-check"></i> <span id="favorite-message"></span>
                        <a target="_blank" href="http://123movies.to/user/movies/favorite"
                           title="Your favorite" class="alert-link">your favorite.</a>
                    </div>
                </div>
                <div id="report-alert" style="display: none;">
                    <div class="alert alert-success" role="alert">
                        <a href="javascript:void(0)" class="close" data-dismiss="alert" aria-label="close">×</a>
                        <i class="fa fa-check"></i> Thanks for your report! We will fix it asap.
                    </div>
                </div>
                
                <div id="list-eps">

                </div>
                <div class="mvi-content">
    <div class="mvic-btn">
        <div class="mv-rating">

        </div>
        <div class="clearfix"></div>
        <!--        <a href="http://ads.ad-center.com/offer?prod=150&ref=5044361" target="_blank"-->
        <!--           class="btn btn-block btn-lg btn-success btn-01"><i class="fa fa-play mr10"></i>-->
        <!--            Stream in HD</a>-->
        <a href="http://players.123movies.to/stream.php" target="_blank"
           class="btn btn-block btn-lg btn-success btn-01"><i
                class="fa fa-play mr10"></i>
            Stream in HD</a>
        <a href="http://players.123movies.to/download.php" target="_blank"
           class="btn btn-block btn-lg btn-success btn-02"><i class="fa fa-download mr10"></i>
            Download in HD</a>


    </div>
    <div class="thumb mvic-thumb" style="background-image: url(http://img.123movies.to/2016/08/19/poster/0cce872035e4b16da40a8a77f920891e-billionaire-ransom-1471638792.jpg);"></div>
    <div class="mvic-desc">
        <h3>Billionaire Ransom</h3>
                    <div class="block-trailer">
                <a data-target="#pop-trailer" data-toggle="modal" class="btn btn-primary">
                    <i class="fa fa-video-camera mr5"></i>Trailer
                </a>
            </div>
                <div class="block-social">

            <!-- Go to www.addthis.com/dashboard to customize your tools -->
            <div class="addthis_native_toolbox"></div>

        </div>
        <div class="desc">
            A group of reckless spoiled rich kids are sent to a boot camp on a remote island by their frustrated parents, only to have to fight back when their campus is taken over by criminals.        </div>
        <div class="mvic-info">
            <div class="mvici-left">
                                    <p>
                        <strong>Genre: </strong>
                        <a href="http://123movies.to/genre/thriller/" title="Thriller">Thriller</a>                    </p>
                                                    <p>
                        <strong>Actor: </strong>
                        <a target="_blank" href="http://123movies.to/actor/-phoebe-tonkin" title=" Phoebe Tonkin"> Phoebe Tonkin</a>, <a target="_blank" href="http://123movies.to/actor/-ed-westwick" title="Ed Westwick">Ed Westwick</a>, <a target="_blank" href="http://123movies.to/actor/-dominic-sherwood-" title="Dominic Sherwood">Dominic Sherwood</a>                    </p>
                                                    <p>
                        <strong>Director: </strong>
                        <a href="#" title=" Jim Gillespie"> Jim Gillespie</a>                    </p>
                                                    <p>
                        <strong>Country: </strong>
                        <a href="http://123movies.to/country/uk" title="United Kingdom">United Kingdom</a>, <a href="http://123movies.to/country/us" title="United States">United States</a>                    </p>
                            </div>
            <div class="mvici-right">
                                <p><strong>Duration:</strong> 107 min</p>

                <p><strong>Quality:</strong> <span class="quality">SD</span></p>

                <p><strong>Release:</strong> 2016</p>

                <p><strong>IMDb:</strong> 7.6</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="clearfix"></div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $.get(base_url + 'ajax/movie_rate_info/' + '15541', function (data) {
            $('.mv-rating').html(data);
        })
    })
</script>
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