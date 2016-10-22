<footer>
    <div id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    @if( !empty($parentCate) )
                    <div class="footer-link">
                        <h3 class="footer-link-head">phim1p.com</h3>
                        @foreach( $parentCate as $cate )                                          
                          <p><a title="{{ $cate->name }}" href="/{{ $cate->slug }}">{{ $cate->name }}</a></p>
                          @endforeach               
                    </div>
                    @endif
                    @if( !empty($countryArr) )
                    <div class="footer-link">
                        <h3 class="footer-link-head">Movies</h3>
                             @foreach( $countryArr as $country )
                            <p><a title="{{ $country->name }}" href="/{{ $country->slug }}">{{ $country->name }}</a></p>                                                                           
                                         
                          @endforeach                             
                    </div>
                    @endif
                    <!--<div class="footer-link">
                        <h3 class="footer-link-head">TV-Series</h3>
                        <p><a title="" href="#">United States</a></p>
                        <p><a title="" href="#">Korea</a></p>
                        <p><a title="" href="#">China</a></p>
                        <p><a title="" href="#">Taiwan</a></p>
                    </div>-->
                    <div class="clearfix"></div>
                </div>
                <div class="col-lg-3">
                    {{ $settingArr['w_footer_1'] }}
                </div>
                <div class="col-lg-4">
                   {{ $settingArr['w_footer_2'] }}
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</footer>