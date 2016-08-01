<!--footer-->
<footer>
   <div id="footer">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 footer-one">
               @if( $parentArr->count() > 0)
                  @foreach( $parentArr as $parent )
                  <div class="footer-link">
                     <h3 class="footer-link-head">{{ $parent->name }}</h3>
                     @if( !empty($cateArr[$parent->id]) )
                     @foreach( $cateArr[$parent->id] as $cate )
                     <p><a title="{{ $cate->name }}" href="/{{ $cate->slug }}">{{ $cate->name }}</a></p>
                     @endforeach
                     @endif
                  </div>
                  @endforeach      
               @endif
               <div class="clearfix"></div>
            </div>
            <!--<div class="col-lg-4 footer-subs">
               <h3 class="footer-link-head">Subscribe</h3>
               <p class="desc">Subscribe to 123Movies mailing list to receive updates on movies, tv-series and
                  news
               </p>
               <div class="form-subs mt20">
                  <div class="subc-input pull-left" style="width:65%; margin-right: 5%;">
                     <input type="email" placeholder="Enter your email" id="Email" name="email-footer"
                        class="form-control">
                  </div>
                  <div class="subc-submit pull-left" style="width:30%;">
                     <button id="subscribe-submit-footer" class="btn btn-block btn-success btn-approve"
                        type="button" onclick="subscribe_footer()">Subscribe
                     </button>
                  </div>
                  <div class="clearfix"></div>
               </div>
               <div id="error-email-subs-footer" class="alert alert-danger error-block"></div>
               <div id="success-subs-footer" class="alert alert-success error-block"></div>
               <div class="clearfix"></div>
            </div>-->
            <div class="col-lg-4 footer-copyright">
               <p><img border="0" src="@yield('logo')" class="mv-ft-logo"></p>
               <p>Copyright &copy; 123movies.to. All Rights Reserved</p>
               <p style="font-size: 11px; line-height: 14px; color: rgba(255,255,255,0.4)">Disclaimer: This site
                  does not store any files on its server. All contents are provided by non-affiliated third
                  parties.
               </p>
            </div>
            <div class="clearfix"></div>
         </div>
         <div class="footer-tags">
            <a  title="Watch full movies online">Watch full movies online</a>
            <a  title="Free movies online">Free movies online</a>
            <a  title="Movietube">Movietube</a>
            <a  title="Free online movies full">Free online movies full</a>
            <a  title="Movie2k">Movie2k</a>
            <a  title="Watch movies 2k">Watch movies 2k</a>
         </div>
      </div>
   </div>
</footer>
<!--/footer-->