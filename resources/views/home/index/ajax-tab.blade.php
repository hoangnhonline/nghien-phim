@if( $arr->count() > 0)
   @foreach( $arr as $movies)
   <div data-movie-id="{{ $movies->id }}" class="ml-item">
      <a href="/{{ $movies->slug }}-{{ $movies->id }}.html"
         data-url="{{ route('movies-info', [ $movies->id ]) }}"
         class="ml-mask jt"
         title="{{ $movies->title }}">
            <span class="mli-quality">{{ Helper::showQuality($movies->quality) }}</span>
            <img data-original="{{ Helper::showImage( $movies->image_url )}}" title="{{ $movies->title }}" class="lazy thumb mli-thumb"
               alt="{{ $movies->title }}">
            <span class="mli-info">
               <h2>{{ $movies->title }}</h2>
            </span>
      </a>
  </div>
 @endforeach
@else
  <p style="text-align:center; padding-top:30px;color:#79C142">Đang cập nhật dữ liệu.</p>
@endif