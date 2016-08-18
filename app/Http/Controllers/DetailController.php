<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Country;
use App\Models\Tag;
use App\Models\TagObjects;
use App\Models\Film;
use App\Models\Settings;
use Helper, File, Session, DB;


class DetailController extends Controller
{    
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {   
        $settingArr = Settings::whereRaw('1')->lists('value', 'name');

        $tagSelected = [];

        $cateArr = $cateActiveArr = $moviesActiveArr = [];       
        

        $id = $request->id;
        $detail = Film::where( 'id', $id )
                ->select('id', 'title', 'slug', 'description', 'quality', 'duration', 'image_url', 'poster_url', 'content')                
                ->first();
        $cate = $detail->filmCategory($id);
        $category_id = $cate[0];        
        if( $detail ){  
            $relatedArr = Film::where('id', '<>', $id)
                        ->join('film_category', 'film_category.film_id', '=', 'film.id')
                        ->where('category_id', $category_id)
                        ->select('id', 'title', 'slug', 'image_url', 'quality')
                        ->orderBy('id', 'desc')
                        ->limit(12)
                        ->get();
            
            $cateDetail = Category::find( $category_id )->select('id', 'name', 'slug')->first();           
            
            //tags

            $tmpArr = TagObjects::where( ['tag_objects.type' => 1, 'object_id' => $id] )
                        ->join('tag', 'tag.id', '=', 'tag_objects.tag_id')
                        ->select('name', 'slug')
                        ->get();
            
            if( $tmpArr->count() > 0 ){
                foreach ($tmpArr as $value) {                
                    $tagSelected[] = $value;
                }
            }
            $title = trim($detail->meta_title) ? $detail->meta_title : $detail->title;
            return view('home.detail', compact(
                'settingArr',
                'title',
                'tagSelected', 
                'relatedArr', 
                'detail',               
                'cateDetail'                
                ));    
        }else{
            return view('errors.404');
        }
        
    }

    public function getLink(Request $request){

        $detailExternal = [];
        if( $request->ajax() ){
            $url = $request->url;
            
            $detailExternal = Helper::getDetailVideoFromExternalSite( $url );
        }
        return response()->json($detailExternal);

    }

    public function ajaxMoviesInfo(Request $request){
        if( $request->ajax() ){

            $id = $request->movies_id;
            // get detail
            $detail = Film::find( $id );
            //get all country , get id to key
            $countryArr = Country::getListOrderByKey();
            //get all category, get id to key
            $categoryArr = Category::getListOrderByKey();
            
            $countryFilm = $detail->filmCountry( $id );
            $categoryFilm = $detail->filmCountry( $id );           

            return view('home.detail.ajax-movies-info', compact( 'detail', 'countryArr', 'countryFilm', 'categoryArr', 'categoryFilm'));
        }
    }
    public function download(Request $request){
        
        set_time_limit(0); 
        ini_set('memory_limit', '512M'); 

        $url = $request->url;
        $detailExternal = Helper::getDetailVideoFromExternalSite( $url );
        $file = $detailExternal['video_url'];        
        $filename = $request->slug;

        header('Content-Description: File Download');
        header('Content-Transfer-Encoding: binary');
        header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
        header('Pragma: no-cache');
        header('Expires: Mon, 1 Apr 1974 05:00:00 GMT');
        header("Content-type: video/mp4");
        header("Content-disposition: attachment; filename=$filename.mp4");
        ob_clean(); 
        flush(); 
        readfile($file);
        exit();

    }
   
}
