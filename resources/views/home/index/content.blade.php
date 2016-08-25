@section('title') {{ $settingArr['site_title'] }} @endsection
@section('site_description') {{ $settingArr['site_description'] }} @endsection
@section('site_keywords') {{ $settingArr['site_keywords'] }} @endsection
@section('banner') {{ $settingArr['banner'] }} @endsection
@section('facebook_appid') {{ $settingArr['facebook_appid'] }} @endsection
@section('site_name') {{ $settingArr['site_name'] }} @endsection
@section('favicon'){{ Helper::showImage($settingArr['favicon']) }}@endsection
@section('logo'){{ Helper::showImage($settingArr['logo']) }}@endsection
<div class="pad"></div>
<div class="movies-list-wrap mlw-latestmovie">
    <div class="ml-title">
        <span class="pull-left">Phim lẻ mới nhất <i class="fa fa-chevron-right ml10"></i></span>
        <a href="http://123movies.to/movie/filter/movie" class="pull-right cat-more">View more »</a>

        <div class="clearfix"></div>
    </div>
    <div class="movies-list movies-list-full tab-pane in fade active">
         @if( $phimLeArr->count() > 0)
             @foreach( $phimLeArr as $movies)
             <div data-movie-id="{{ $movies->id }}" class="ml-item">
                <a href="/{{ $movies->slug }}.html"
                   data-url="{{ route('movies-info', [ $movies->id ]) }}"
                   class="ml-mask jt"
                   title="{{ $movies->title }}">
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
<div class="movies-list-wrap mlw-latestmovie">
    <div class="ml-title">
        <span class="pull-left">Phim bộ mới cập nhật <i class="fa fa-chevron-right ml10"></i></span>
        <a href="http://123movies.to/movie/filter/movie" class="pull-right cat-more">View more »</a>

        <div class="clearfix"></div>
    </div>
    <div class="movies-list movies-list-full tab-pane in fade active">
         @if( $phimBoArr->count() > 0)
             @foreach( $phimBoArr as $movies)
             <div data-movie-id="{{ $movies->id }}" class="ml-item">
                <a href="/{{ $movies->slug }}{{ $movies->last_slug_episode ? '/'.$movies->last_slug_episode : "" }}.html"
                   data-url="{{ route('movies-info', [ $movies->id ]) }}"
                   class="ml-mask jt"
                   title="{{ $movies->title }}">
                      @if(isset($arrEpisode[$movies->id]))
                      <?php 
                      $tmp = explode(" ", $arrEpisode[$movies->id]);
                      ?>
                      <span class="mli-eps">
                      {{ $tmp[0] }} <i>{{ isset($tmp[1]) ? $tmp[1] : "" }}</i>
                      </span>
                      @endif
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
       
    $(document).ready(function(){      
      $('.load-lastest').click(function(){
        var obj = $(this);
        $.ajax({
            url: "{{ route('ajax-tab') }}",
            type: "GET",
            async: false,      
            data: {
              type : obj.attr('data-type'),
              id : obj.attr('data-value')
            },
            beforeSend: function() {
                // setting a timeout
                $('#' + obj.attr('data-parent')).html('<p style="text-align:center; padding-top:30px;"><img src="{{ URL::asset("assets/images/loading.gif") }}" alt="loading"></p>');
            },      
            success: function (response) {
              $('#' + obj.attr('data-parent')).html( response );
              $("img.lazy").lazyload({
                  effect: "fadeIn"
              }); 
             
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
            },
            error: function(response){                             
                var errors = response.responseJSON;
                for (var key in errors) {
                  
                }             
            }
          });
      });
    });
</script>
@endsection