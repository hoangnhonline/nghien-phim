<?php
namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Country;
use App\Models\Film;
use App\Models\Tag;
use App\Models\TagObjects;
use App\Models\Settings;
use App\Models\Articles;
use App\Models\ArticlesCate;
use App\Models\FilmEpisode;
use Helper, File, Session;

class HomeController extends Controller
{
    
    public static $parentCate = [];
    public static $countryArr = [];
    public static $countryArrKey = [];
    public static $categoryArrKey = [];    

    public function __construct(){
        
        self::$parentCate = Category::getParentCateList( 1 );

        if( self::$parentCate ){
            foreach (self::$parentCate as $key => $value) {
                self::$categoryArrKey[$value->id] = ['name' => $value->name, 'slug' => $value->slug];
            }
        }       

        self::$countryArr = Country::orderBy('display_order')->get();

        if( self::$countryArr ){
            foreach (self::$countryArr as $key => $value) {
                self::$categoryArrKey[$value->id] = ['name' => $value->name, 'slug' => $value->slug];
            }
        }
        view()->share(['parentCate' => self::$parentCate, 'countryArr' => self::$countryArr, '']);

    }
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {
        $settingArr = Settings::whereRaw('1')->lists('value', 'name');

        $layout_name = $page_name = "";

        $phimLeArr = $phimBoArr = $arrEpisode = [];
        $phimLeArr = Film::where('status', 1)->where('type', 1)                        
                                ->orderBy('id', 'desc')->limit(16)->get();
        $phimBoArr = Film::where('status', 1)->where('type', 2)                            
                        //->groupBy('film_id')                                                                     
                        ->orderBy('updated_episode_date', 'desc')->limit(16)->get();      

        if( $phimBoArr->count() > 0) {
            foreach( $phimBoArr as $phim)
            {
               // var_dump($phim->id);die;
                $tmp = FilmEpisode::where('film_id', $phim->id)->orderBy('id', 'desc')->select('name')->first();
                if($tmp){
                    $arrEpisode[$phim->id] = $tmp->name;
                }
            }
        }
      //  var_dump("<pre>", $arrEpisode);die;
        //articles
        $articlesArr = Articles::where([ 'status' => 1, 'is_hot' => 1 ])->orderBy('id', 'desc')->select('id', 'slug', 'title', 'image_url')->limit(10)->get();

        $hotArr = Film::where([ 'status' => 1, 'slide' => 1 ])->orderBy('id', 'desc')->select('id', 'slug', 'title', 'image_url', 'description', 'slide', 'views', 'likes', 'imdb', 'order', 'push_top', 'poster_url', 'quality')->limit(10)->get();        

        return view('home.index', compact( 'settingArr', 'page_name', 'layout_name', 'hotArr', 'articlesArr', 'settingArr', 'phimLeArr', 'phimBoArr', 'arrEpisode'));
    }

    public function ajaxTab(Request $request){
        $table = $request->type ? $request->type : 'category';
        $id = $request->id;

        $arr = Film::getFilmHomeTab( $table, $id);

        return view('home.index.ajax-tab', compact('arr'));
    }
    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function search(Request $request)
    {

        $settingArr = Settings::whereRaw('1')->lists('value', 'name');
        
        $layout_name = "main-category";
        
        $page_name = "page-category";

        $cateArr = $cateActiveArr = $moviesActiveArr = [];

        $tu_khoa = $request->k;
        
        $is_search = 1;

        $moviesArr = Film::where('alias', 'LIKE', '%'.$tu_khoa.'%')->orderBy('id', 'desc')->paginate(20);

        return view('home.cate', compact('settingArr', 'moviesArr', 'tu_khoa',  'is_search', 'layout_name', 'page_name' ));
    }

    public function cate(Request $request)
    {
        $settingArr = Settings::whereRaw('1')->lists('value', 'name');
        $layout_name = "main-category";
        
        $page_name = "page-category";

        $cateArr = $cateActiveArr = $moviesActiveArr = [];

       
        $is_search = 0;
        $slug = $request->slug;
        $title = '';
        
        $cateDetail = Category::where('slug', $slug)->first();
        if( !$cateDetail){
            $cateDetail = Country::where('slug', $slug)->first();

            $moviesArr = Film::where('status', 1)
            ->join('film_country', 'id', '=', 'film_country.film_id')
            ->where('film_country.country_id', $cateDetail->id)
            ->groupBy('film_id')
            ->orderBy('id', 'desc')->paginate(12);        
        }else{
             $moviesArr = Film::where('status', 1)
            ->join('film_category', 'id', '=', 'film_category.film_id')
            ->where('film_category.category_id', $cateDetail->id)
            ->groupBy('film_id')
            ->orderBy('id', 'desc')->paginate(12);        
        }
        $title = trim($cateDetail->meta_title) ? $cateDetail->meta_title : $cateDetail->name;

        return view('home.cate', compact('title', 'settingArr', 'is_search', 'moviesArr', 'cateDetail', 'layout_name', 'page_name', 'cateActiveArr', 'moviesActiveArr'));
    }

    public function newsList(Request $request)
    {
        $settingArr = Settings::whereRaw('1')->lists('value', 'name');
        $layout_name = "main-news";
        
        $page_name = "page-news";

        $cateArr = $cateActiveArr = $moviesActiveArr = [];
       
        $cateDetail = ArticlesCate::where('slug' , 'tin-tuc')->first();
        $title = trim($cateDetail->meta_title) ? $cateDetail->meta_title : $cateDetail->name;

        $articlesArr = Articles::where('cate_id', 1)->orderBy('id', 'desc')->paginate(10);
        $hotArr = Articles::where( ['cate_id' => 1, 'is_hot' => 1] )->orderBy('id', 'desc')->limit(5)->get();
        return view('home.news-list', compact('title','settingArr', 'hotArr', 'layout_name', 'page_name', 'articlesArr'));
    }

    public function newsDetail(Request $request)
    {
        $settingArr = Settings::whereRaw('1')->lists('value', 'name');
        $layout_name = "main-news";
        
        $page_name = "page-news";

        $id = $request->id;

        $detail = Articles::where( 'id', $id )
                ->select('id', 'title', 'slug', 'description', 'image_url', 'content', 'meta_title', 'meta_description', 'meta_keywords', 'custom_text')
                ->first();

        if( $detail ){
            $cateArr = $cateActiveArr = $moviesActiveArr = [];
        
            
            $title = trim($detail->meta_title) ? $detail->meta_title : $detail->title;

            $hotArr = Articles::where( ['cate_id' => 1, 'is_hot' => 1] )->where('id', '<>', $id)->orderBy('id', 'desc')->limit(5)->get();

            return view('home.news-detail', compact('title', 'settingArr', 'hotArr', 'layout_name', 'page_name', 'detail'));
        }else{
            return view('erros.404');
        }     

        
    }

}
