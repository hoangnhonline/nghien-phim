@extends('layout.detail')

@section('content')
	@include('home.detail.content')
@endsection
<style type="text/css">
@media only screen and (min-width: 1280px) {
    #media-player {
        height: 500px !important;
    }
    #videoPlayer{
    	height: 500px !important;
    	width: auto !important;
    }

}
</style>
@section('javascript_page')
<script type="text/javascript">
$(document).ready(function(){
	var player = document.getElementById('videoPlayer');

	$.ajax({
        url: $('#route_get_link').val(),
        type: "POST",
        async: false,      
        data: {
        	url : $('#video_url').val(),
        	_token : $('#token').val()
        },       
        success: function (response) {
	        if(response.video_url){
	          	$('.cssload').hide();
	            $('#mp4Source').attr('src', response.video_url);
	            $('#videoPlayer').attr('poster', response.image_url); 
	            player.load();
	            player.play();
	        }         
        }
      });
		var video = $("#videoPlayer");
		var windowObj = $(window);

		function onResizeWindow() {				
			resizeVideo(video[0]);
		}

		function onLoadMetaData(e) {
			resizeVideo(e.target);
		}

		function resizeVideo(videoObject) {			
			var percentWidth = videoObject.clientWidth * 100 / videoObject.videoWidth;
			var videoHeight = videoObject.videoHeight * percentWidth / 100;
			video.height(videoHeight);
		}

		video.on("loadedmetadata", onLoadMetaData);
		windowObj.resize(onResizeWindow);
	}
);

</script>
@endsection