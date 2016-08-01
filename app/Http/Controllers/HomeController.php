<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Backend\Cate;
use App\Models\Backend\ParentCate;
use App\Models\Backend\Tag;
use App\Models\Backend\TagObjects;
use App\Models\Backend\Movies;
use App\Models\Backend\Articles;
use App\Models\Backend\ArticlesCate;
use App\Models\Backend\Settings;
use Helper, File, Session;

class HomeController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {
        $settingArr = Settings::whereRaw('1')->lists('value', 'name');

        $layout_name = $page_name = "";

        $cateArr = $moviesActiveArr = [];

        $parentArr = ParentCate::orderBy('display_order')->get();

        $tmpCateArr = Cate::orderBy('display_order')->get();
        if( $tmpCateArr->count() > 0){            
            foreach ($tmpCateArr as $value) {               

                $cateArr[$value->parent_id][] = $value;
                if( count( $cateArr[$value->parent_id]) == 1){                    

                    $moviesActiveArr[$value->parent_id] = Movies::where('cate_id', $value->id)->orderBy('id', 'desc')->limit(16)->get();

                }
            }
        }   

        //artcles
        $articlesArr = Articles::where([ 'status' => 1, 'is_hot' => 1 ])->orderBy('id', 'desc')->select('id', 'slug', 'title', 'image_url')->limit(10)->get();

        $hotArr = Movies::where([ 'status' => 1, 'is_hot' => 1 ])->orderBy('id', 'desc')->select('id', 'slug', 'title', 'image_url', 'description', 'duration', 'quality')->limit(10)->get();
        
        return view('home.index', compact('settingArr', 'page_name', 'layout_name', 'parentArr' , 'cateArr', 'moviesActiveArr', 'articlesArr', 'hotArr'));
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

        $parentArr = ParentCate::orderBy('display_order')->get();

        $tmpCateArr = Cate::orderBy('display_order')->get();

        if( $tmpCateArr->count() > 0){
            
            foreach ($tmpCateArr as $value) {               

                $cateArr[$value->parent_id][] = $value;
                
            }
        }

        $tu_khoa = $request->k;
        
        $is_search = 1;

        $moviesArr = Movies::where('alias', 'LIKE', '%'.$tu_khoa.'%')->orderBy('id', 'desc')->paginate(20);

        return view('home.cate', compact('settingArr', 'moviesArr', 'tu_khoa',  'is_search', 'layout_name', 'page_name', 'parentArr' , 'cateArr' ));
    }

    public function cate(Request $request)
    {
        $settingArr = Settings::whereRaw('1')->lists('value', 'name');
        $layout_name = "main-category";
        
        $page_name = "page-category";

        $cateArr = $cateActiveArr = $moviesActiveArr = [];

        $parentArr = ParentCate::orderBy('display_order')->get();

        $tmpCateArr = Cate::orderBy('display_order')->get();

        if( $tmpCateArr->count() > 0){
            
            foreach ($tmpCateArr as $value) {               

                $cateArr[$value->parent_id][] = $value;
                
            }
        }
        $is_search = 0;
        $slug = $request->slug;
        $title = '';
        $cateDetail = ParentCate::where('slug', $slug)->first();
        if( !$cateDetail ){
            $cateDetail = Cate::where('slug', $slug)->first();
            
            $moviesArr = Movies::where('cate_id', $cateDetail->id)->orderBy('id', 'desc')->paginate(12);
        }else{

            $moviesArr = Movies::where('parent_id', $cateDetail->id)->orderBy('id', 'desc')->paginate(12);
        }        
        
        $title = trim($cateDetail->meta_title) ? $cateDetail->meta_title : $cateDetail->name;

        return view('home.cate', compact('title', 'settingArr', 'is_search', 'moviesArr', 'cateDetail', 'layout_name', 'page_name', 'parentArr' , 'cateArr', 'cateActiveArr', 'moviesActiveArr'));
    }

    public function newsList(Request $request)
    {
        $settingArr = Settings::whereRaw('1')->lists('value', 'name');
        $layout_name = "main-news";
        
        $page_name = "page-news";

        $cateArr = $cateActiveArr = $moviesActiveArr = [];

        $parentArr = ParentCate::orderBy('display_order')->get();

        $tmpCateArr = Cate::orderBy('display_order')->get();

        if( $tmpCateArr->count() > 0){
            
            foreach ($tmpCateArr as $value) {               

                $cateArr[$value->parent_id][] = $value;
                
            }
        }
        $cateDetail = ArticlesCate::where('slug' , 'tin-tuc')->first();
        $title = trim($cateDetail->meta_title) ? $cateDetail->meta_title : $cateDetail->name;

        $articlesArr = Articles::where('cate_id', 1)->orderBy('id', 'desc')->paginate(10);
        $hotArr = Articles::where( ['cate_id' => 1, 'is_hot' => 1] )->orderBy('id', 'desc')->limit(5)->get();
        return view('home.news-list', compact('title','settingArr', 'hotArr', 'layout_name', 'page_name', 'articlesArr' , 'cateArr', 'parentArr'));
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

            $parentArr = ParentCate::orderBy('display_order')->get();

            $tmpCateArr = Cate::orderBy('display_order')->get();

            if( $tmpCateArr->count() > 0){
                
                foreach ($tmpCateArr as $value) {               

                    $cateArr[$value->parent_id][] = $value;
                    
                }
            }            
            
            $title = trim($detail->meta_title) ? $detail->meta_title : $detail->title;

            $hotArr = Articles::where( ['cate_id' => 1, 'is_hot' => 1] )->where('id', '<>', $id)->orderBy('id', 'desc')->limit(5)->get();

            return view('home.news-detail', compact('title', 'settingArr', 'hotArr', 'layout_name', 'page_name', 'detail' , 'cateArr', 'parentArr'));
        }else{
            return view('erros.404');
        }     

        
    }

}
