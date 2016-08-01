@section('title') {{ $settingArr['site_title'] }} @endsection
@section('site_description') {{ $settingArr['site_description'] }} @endsection
@section('site_keywords') {{ $settingArr['site_keywords'] }} @endsection
@section('banner') {{ $settingArr['banner'] }} @endsection
@section('facebook_appid') {{ $settingArr['facebook_appid'] }} @endsection
@section('site_name') {{ $settingArr['site_name'] }} @endsection
@section('favicon'){{ Helper::showImage($settingArr['favicon']) }}@endsection
@section('logo'){{ Helper::showImage($settingArr['logo']) }}@endsection
<div class="pad"></div>
@if( $parentArr->count() > 0)
@foreach( $parentArr as $parent )
<div class="movies-list-wrap mlw-related">
   <div class="ml-title">
      <span class="pull-left">{{ $parent->name }} <i class="fa fa-chevron-right ml10"></i></span>
      <a href="{{ $parent->slug }}" title="Xem tất cả" class="pull-right cat-more">Xem tất cả »</a>
      @if( !empty($cateArr[$parent->id]) )
      <ul role="tablist" class="nav nav-tabs">
         <?php $i = 0; ?>
         @foreach( $cateArr[$parent->id] as $cate )
            <?php $i++; ?>
         <li class="{{ $i == 1 ? "active" : "" }}"><a data-toggle="tab" role="tab" href="#{{ $cate->slug }}"
            aria-expanded="false">{{ $cate->name }}</a></li>
         @endforeach
      </ul>
      @endif
      <div class="clearfix"></div>
   </div>
   @if( !empty($cateArr[$parent->id]) )
   <div class="tab-content">
      <?php $i = 0; ?>
         @foreach( $cateArr[$parent->id] as $cate )
         <?php $i++; ?>
         <div id="{{ $cate->slug }}" class="movies-list movies-list-full tab-pane in fade {{ $i == 1 ? "active" : "" }}">
            @if( $moviesActiveArr[$parent->id]->count() > 0)
               @foreach( $moviesActiveArr[$parent->id] as $movies)
               <div class="ml-item">
                  <a href="{{ $movies->slug }}-{{ $movies->id }}.html" class="ml-mask">
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
         @endforeach
   </div>
   @endif
</div>
@endforeach
@endif
<div class="content-kus" style="text-align: center; margin: 20px 0; padding: 15px;">
</div>