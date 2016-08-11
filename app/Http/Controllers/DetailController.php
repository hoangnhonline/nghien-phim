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
use App\Models\Backend\Settings;
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
        $detail = Movies::where( 'id', $id )
                ->select('id', 'title', 'slug', 'description', 'quality', 'duration', 'cate_id', 'parent_id', 'image_url', 'url', 'content', 'meta_title', 'meta_description', 'meta_keywords', 'custom_text')
                ->first();

        if( $detail ){

            $relatedArr = Movies::where('cate_id', $detail->cate_id)
                        ->where('id', '<>', $id)
                        ->select('id', 'title', 'slug', 'image_url', 'quality')
                        ->orderBy('id', 'desc')
                        ->limit(16)
                        ->get();
            
            $cateDetail = Cate::find( $detail->cate_id )->select('id', 'name', 'slug')->first();           
            //tags
            $tmpArr = TagObjects::where( ['object_type' => 1, 'object_id' => $id] )
                        ->join('tag', 'tag.id', '=', 'tag_objects.tag_id')
                        ->select('tag', 'slug')
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
    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create(Request $request)
    {

        $parentCate = ParentCate::orderBy('display_order')->first();
        
        $parent_id = isset($request->parent_id) ? $request->parent_id : $parentCate->id;

        $cateArr = Cate::where('parent_id', $parent_id)->get();
        
        $parentCateArr = ParentCate::all()->sortBy('display_order');

        return view('backend.movies.create', compact( 'parent_id', 'parentCateArr', 'parentCate', 'parent_id', 'cateArr'));
    }

    /**
    * Store a newly created resource in storage.
    *
    * @param  Request  $request
    * @return Response
    */
    public function store(Request $request)
    {
        $dataArr = $request->all();
        
        $this->validate($request,[
            'parent_id' => 'required',
            'cate_id' => 'required',
            'url' => 'required',
            'title' => 'required',            
            'slug' => 'required|unique:movies,slug',
        ],
        [
            'url.required' => 'Bạn chưa nhập URL phim',
            'cate_id.required' => 'Bạn chưa chọn danh mục con.',            
            'title.required' => 'Bạn chưa nhập tiêu đề',
            'slug.required' => 'Bạn chưa nhập slug',
            'slug.unique' => 'Slug đã được sử dụng.'
        ]);       
        
        $dataArr['alias'] = Helper::stripUnicode($dataArr['title']);
        
        if($dataArr['image_url'] && $dataArr['image_name']){
            
            $tmp = explode('/', $dataArr['image_url']);

            if(!is_dir('uploads/'.date('Y/m/d'))){
                mkdir('uploads/'.date('Y/m/d'), 0777, true);
            }

            $destionation = date('Y/m/d'). '/'. end($tmp);
            
            File::move(config('nghien.upload_path').$dataArr['image_url'], config('nghien.upload_path').$destionation);
            
            $dataArr['image_url'] = $destionation;
        }

        $dataArr['site_id'] = Helper::getSiteOriginal($dataArr['url']);

        Movies::create($dataArr);

        Session::flash('message', 'Tạo mới phim thành công');

        return redirect()->route('movies.index',['parent_id' => $dataArr['parent_id'], 'cate_id' => $dataArr['cate_id']]);
    }

    /**
    * Display the specified resource.
    *
    * @param  int  $id
    * @return Response
    */
    public function show($id)
    {
    //
    }

    /**
    * Show the form for editing the specified resource.
    *
    * @param  int  $id
    * @return Response
    */
    public function edit($id)
    {
        $detail = Movies::find($id);
        
        $parentCate = ParentCate::find( $detail->parent_id );
        
        $cateArr = Cate::where('parent_id', $detail->parent_id)->get();

        $parentCateArr = ParentCate::all();
        
        return view('backend.movies.edit', compact( 'detail', 'parentCateArr', 'parentCate', 'cateArr' ));
    }

    /**
    * Update the specified resource in storage.
    *
    * @param  Request  $request
    * @param  int  $id
    * @return Response
    */
    public function update(Request $request)
    {
        $dataArr = $request->all();
        
        $this->validate($request,[
            'parent_id' => 'required',
            'cate_id' => 'required',
            'url' => 'required',
            'title' => 'required',            
            'slug' => 'required|unique:movies,slug,'.$dataArr['id'],
        ],
        [
            'url.required' => 'Bạn chưa nhập URL phim',
            'cate_id.required' => 'Bạn chưa chọn danh mục con.',            
            'title.required' => 'Bạn chưa nhập tiêu đề',
            'slug.required' => 'Bạn chưa nhập slug',
            'slug.unique' => 'Slug đã được sử dụng.'
        ]);       
        
        $dataArr['alias'] = Helper::stripUnicode($dataArr['title']);
        
        if($dataArr['image_url'] && $dataArr['image_name']){
            
            $tmp = explode('/', $dataArr['image_url']);

            if(!is_dir('uploads/'.date('Y/m/d'))){
                mkdir('uploads/'.date('Y/m/d'), 0777, true);
            }

            $destionation = date('Y/m/d'). '/'. end($tmp);
            
            File::move(config('nghien.upload_path').$dataArr['image_url'], config('nghien.upload_path').$destionation);
            
            $dataArr['image_url'] = $destionation;
        }

        $dataArr['site_id'] = Helper::getSiteOriginal($dataArr['url']);

        $model = Movies::find($dataArr['id']);

        $model->update($dataArr);

        Session::flash('message', 'Cập nhật phim thành công');        

        return redirect()->route('movies.index', ['parent_id' => $dataArr['parent_id'], 'cate_id' => $dataArr['cate_id']]);
    }

    /**
    * Remove the specified resource from storage.
    *
    * @param  int  $id
    * @return Response
    */
    public function destroy($id)
    {
        // delete
        $model = Cate::find($id);
        $model->delete();

        // redirect
        Session::flash('message', 'Xóa danh mục thành công');
        return redirect()->route('movies.index');
    }
}
