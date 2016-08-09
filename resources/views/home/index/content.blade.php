@section('title') {{ $settingArr['site_title'] }} @endsection
@section('site_description') {{ $settingArr['site_description'] }} @endsection
@section('site_keywords') {{ $settingArr['site_keywords'] }} @endsection
@section('banner') {{ $settingArr['banner'] }} @endsection
@section('facebook_appid') {{ $settingArr['facebook_appid'] }} @endsection
@section('site_name') {{ $settingArr['site_name'] }} @endsection
@section('favicon'){{ Helper::showImage($settingArr['favicon']) }}@endsection
@section('logo'){{ Helper::showImage($settingArr['logo']) }}@endsection
<div class="pad"></div>
<div class="movies-list-wrap mlw-topview">
    <div class="ml-title">
        <span class="pull-left">GENRES <i class="fa fa-chevron-right ml10"></i></span>
        <a href="movie/filter/all" class="pull-right cat-more">View more »</a>
         @if( !empty( $parentCate ) )
         <ul role="tablist" class="nav nav-tabs">
            <?php $i = 0; ?>
            @foreach( $parentCate as $cate )
               <?php $i++; ?>
            <li class="{{ $i == 1 ? "active" : "" }}"><a data-toggle="tab" role="tab" href="#{{ $cate->slug }}"
               aria-expanded="false">{{ $cate->name }}</a></li>
            @endforeach
         </ul>
         @endif
        <div class="clearfix"></div>
    </div>
       <?php $i = 0; ?>
    @foreach( $parentCate as $cate )
    <?php $i ++; ?>
    <div class="tab-content">
        <div id="{ $cate->slug }}" class="movies-list movies-list-full tab-pane in fade {{ $i == 1 ? "active" : "" }}">
            @if( $moviesActiveArr[$cate->id]->count() > 0)
               @foreach( $moviesActiveArr[$cate->id] as $movies)
               <div data-movie-id="14201" class="ml-item">
                  <a href="/{{ $movies->slug }}-{{ $movies->id }}.html"
                     data-url="ajax/movie_load_info/14201"
                     class="ml-mask jt"
                     title="The Purge: Election Year">
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


            <div class="clearfix"></div>
        </div>
       
    </div>
    @endforeach
</div>
<div class="movies-list-wrap mlw-topview">
    <div class="ml-title">
        <span class="pull-left">COUNTRY <i class="fa fa-chevron-right ml10"></i></span>
        <a href="movie/filter/all" class="pull-right cat-more">View more »</a>
         @if( !empty( $countryArr ) )
         <ul role="tablist" class="nav nav-tabs">
            <?php $i = 0; ?>
            @foreach( $countryArr as $country )
               <?php $i++; ?>
            <li class="{{ $i == 1 ? "active" : "" }}"><a data-toggle="tab" role="tab" href="#{{ $country->slug }}"
               aria-expanded="false">{{ $country->name }}</a></li>
            @endforeach
         </ul>
         @endif
        <div class="clearfix"></div>
    </div>
       <?php $i = 0; ?>
    @foreach( $countryArr as $country )
    <?php $i ++; ?>
    <div class="tab-content">
        <div id="{ $country->slug }}" class="movies-list movies-list-full tab-pane in fade {{ $i == 1 ? "active" : "" }}">
            @if( $moviesActiveCountryArr[$country->id]->count() > 0)
               @foreach( $moviesActiveCountryArr[$country->id] as $movies)
               <div data-movie-id="14201" class="ml-item">
                  <a href="/{{ $movies->slug }}-{{ $movies->id }}.html"
                     data-url="ajax/movie_load_info/14201"
                     class="ml-mask jt"
                     title="The Purge: Election Year">
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


            <div class="clearfix"></div>
        </div>
       
    </div>
    @endforeach
</div>
<div class="content-kus" style="text-align: center; margin: 20px 0; padding: 15px;">
</div>
@section('javascript_page')
 <script type="text/javascript">
 function isCookieEnabled() {
       var e = navigator.cookieEnabled ? !0 : !1;
       return "undefined" != typeof navigator.cookieEnabled || e || (document.cookie = "testcookie", e = -1 != document.cookie.indexOf("testcookie") ? !0 : !1), e
   }
   if (!isCookieEnabled()) {
       $('#alert-cookie').css('display', 'block');
       $('body').addClass('off-cookie');
   }
    if (!jQuery.browser.mobile) {
        $('.jt').qtip({
            content: {
                text: function (event, api) {
                    $.ajax({
                        url: api.elements.target.attr('data-url'),
                        type: 'GET',
                        success: function (data, status) {
                            // Process the data

                            // Set the content manually (required!)
                            api.set('content.text', data);
                        }
                    });
                }, // The text to use whilst the AJAX request is loading
                title: function (event, api) {
                    return $(this).attr('title');
                }
            },
            position: {
                my: 'top left',  // Position my top left...
                at: 'top right', // at the bottom right of...
                viewport: $(window),
                effect: false,
                target: 'mouse',
                adjust: {
                    mouse: false  // Can be omitted (e.g. default behaviour),
                },
                show: {
                    effect: false
                }
            },
            hide: {
                fixed: true
            },
            style: {
                classes: 'qtip-light qtip-bootstrap',
                width: 320
            }
        });
    }
    $("img.lazy").lazyload({
        effect: "fadeIn"
    });
</script>
@endsection