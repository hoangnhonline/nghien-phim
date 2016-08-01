<div class="header-logo">
   <a title="{{ $settingArr['site_name'] }}" href="{{ URL::to('/') }}" id="logo"></a>
</div>
<div class="mobile-menu"><i class="fa fa-reorder"></i></div>
<div class="mobile-search"><i class="fa fa-search"></i></div>
<div id="menu">
   <ul class="top-menu">
      <li class="">
         <a href="{{ URL::to('/') }}" title="Trang chủ">Trang chủ</a>
      </li>
      @if( $parentArr->count() > 0)
         @foreach( $parentArr as $parent )
         <li class="">
            <a href="/{{ $parent->slug }}" title="{{ $parent->name }}">{{ $parent->name }}</a>
            @if( !empty($cateArr[$parent->id]) )
            <div class="sub-container" style="display: none">
               <ul class="sub-menu">
                  @foreach( $cateArr[$parent->id] as $cate )
                  <li>                    
                     <a href="/{{ $cate->slug }}" title="{{ $cate->name }}">{{ $cate->name }}</a>
                  </li>                  
                  @endforeach
               </ul>
               <div class="clearfix"></div>
            </div>
            @endif
         </li> 
         @endforeach      
      @endif
      <li class="">
         <a href="{{ route('news-list') }}" title="Tin tức">Tin tức</a>
      </li>      
   </ul>
   <div class="clearfix"></div>
</div>
<!--<div id="top-user"></div>-->