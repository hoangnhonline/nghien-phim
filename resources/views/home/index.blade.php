@extends('layout.frontend')

@section('slider')
	@include('home.index.slider')
@endsection

@section('top-news')
	@include('home.index.top-news')
@endsection

@section('content')
	@include('home.index.content')
@endsection

@section('javascript_page')
<script type="text/javascript" src="{{ URL::asset('assets/js/slide.min.js') }}"></script>
<script type="text/javascript">
var swiper = new Swiper('#slider', {
     pagination: '.swiper-pagination',
     paginationClickable: true,
     loop: true,
     autoplay: 4000
 });
 
 $(function () {
     $('.tn-news, .tn-notice').perfectScrollbar();
 });
</script>
@endsection