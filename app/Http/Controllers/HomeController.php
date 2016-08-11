<?php
namespace App\Http\Controllers;

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
use Helper, File, Session;

class HomeController extends Controller
{
    
    public static $parentCate = array();
    public static $countryArr = array();

    public function __construct(){
        
        self::$parentCate = Category::getParentCateList( 1 );    

        self::$countryArr = Country::orderBy('display_order')->get();

        view()->share(['parentCate' => self::$parentCate, 'countryArr' => self::$countryArr ]);

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

        $moviesActiveArr = $moviesActiveCountryArr = [];

        /*
        

        

        

        $parentArr = ParentCategory::orderBy('display_order')->get();
        
        $tmpCateArr = Category::orderBy('display_order')->get();
    */
        if( self::$parentCate->count() > 0){            
            foreach (self::$parentCate as $value) {               
            


                    $moviesActiveArr[$value->id] = Film::where('status', 1)
                                                    ->join('film_category', 'id', '=', 'film_category.film_id')
                                                    ->groupBy('film_id')
                                                    ->orderBy('id', 'desc')->limit(16)->get();


            }
        }  
        if( self::$countryArr->count() > 0){            
            foreach (self::$countryArr as $value) {               

                               

                    $moviesActiveCountryArr[$value->id] = Film::where('status', 1)
                                                    ->join('film_country', 'id', '=', 'film_country.film_id')
                                                    ->groupBy('film_id')
                                                    ->orderBy('id', 'desc')->limit(16)->get();

                
            }
        }   
      
        //artcles
        $articlesArr = Articles::where([ 'status' => 1, 'is_hot' => 1 ])->orderBy('id', 'desc')->select('id', 'slug', 'title', 'image_url')->limit(10)->get();

        $hotArr = Film::where([ 'status' => 1, 'top' => 1 ])->orderBy('id', 'desc')->select('id', 'slug', 'title', 'image_url', 'description', 'top', 'views', 'likes', 'imdb', 'order', 'push_top', 'poster_url', 'quality')->limit(10)->get();
        //var_dump("<pre>", $hotArr);die;
        //return view('home.index', compact('settingArr', 'page_name', 'layout_name', 'parentArr' , 'cateArr', 'moviesActiveArr', 'articlesArr', 'hotArr'));
        
        return view('home.index', compact( 'settingArr', 'page_name', 'layout_name', 'hotArr', 'articlesArr', 'settingArr', 'moviesActiveArr', 'moviesActiveCountryArr'));
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

        $parentArr = ParentCategory::orderBy('display_order')->get();

        $tmpCateArr = Category::orderBy('display_order')->get();

        if( $tmpCateArr->count() > 0){
            
            foreach ($tmpCateArr as $value) {               

                $cateArr[$value->parent_id][] = $value;
                
            }
        }

        $tu_khoa = $request->k;
        
        $is_search = 1;

        $moviesArr = Film::where('alias', 'LIKE', '%'.$tu_khoa.'%')->orderBy('id', 'desc')->paginate(20);

        return view('home.cate', compact('settingArr', 'moviesArr', 'tu_khoa',  'is_search', 'layout_name', 'page_name', 'parentArr' , 'cateArr' ));
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
