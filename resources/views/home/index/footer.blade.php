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
                    <div class="footer-link">
                        <h3 class="footer-link-head">Partner</h3>
                        <img border="0" src="http://nghien.biz/themes/123movies/resources/images/partner.png">
                    </div>
                </div>
                <div class="col-lg-4">
                    <p><img border="0" src="http://nghien.biz/themes/123movies/resources/images/logo.png" class="mv-ft-logo"></p>
                    <p>Copyright © phim1p.com. All Rights Reserved</p>
                    <p style="font-size: 11px; line-height: 14px; color: rgba(255,255,255,0.4)">Disclaimer: This site does not store any files on its server. All contents are provided by non-affiliated third parties.</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</footer>