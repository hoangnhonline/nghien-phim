<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Backend\Cate;
use App\Models\Backend\ParentCate;
use App\Models\Backend\Tag;
use App\Models\Backend\TagObjects;
use App\Models\Backend\Movies;
use Helper, File, Session;

class MoviesController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {

        $parentCate = ParentCate::orderBy('display_order')->first();
        
        $parent_id = isset($request->parent_id) ? $request->parent_id : $parentCate->id;

        $cate_id = isset($request->cate_id) ? $request->cate_id : 0;

        $site_id = isset($request->site_id) ? $request->site_id : 0;
        
        $cateArr = Cate::where('parent_id', $parent_id)->get();

        $title = isset($request->title) && $request->title != '' ? $request->title : '';
        
        $query = Movies::where('parent_id', $parent_id);

        if( $cate_id > 0){
            $query->where('cate_id', $cate_id);
        }
        if( $site_id > 0){
            $query->where('site_id', $site_id);
        }
        if( $title != ''){
            $query->where('alias', 'LIKE', '%'.$title.'%');
        }
        $items = $query->orderBy('id', 'desc')->paginate(20);
        
        $parentCateArr = ParentCate::all();
        
        return view('backend.movies.index', compact( 'items', 'parentCate' , 'parent_id', 'parentCateArr', 'title', 'cateArr', 'cate_id', 'site_id'));
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

        $tagArr = Tag::where('type', 1)->orderBy('id', 'desc')->get();

        return view('backend.movies.create', compact( 'tagArr', 'parent_id', 'parentCateArr', 'parentCate', 'parent_id', 'cateArr'));
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
            
            File::move(config('icho.upload_path').$dataArr['image_url'], config('icho.upload_path').$destionation);
            
            $dataArr['image_url'] = $destionation;
        }

        $dataArr['site_id'] = Helper::getSiteOriginal($dataArr['url']);

        $rs = Movies::create($dataArr);

        $object_id = $rs->id;

        // xu ly tags
        if( !empty( $dataArr['tags'] ) && $object_id ){
            foreach ($dataArr['tags'] as $tag_id) {
                TagObjects::create(['object_id' => $object_id, 'tag_id' => $tag_id, 'object_type' => 1]);
            }
        }

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
        $tagSelected = [];
        $detail = Movies::find($id);
        
        $parentCate = ParentCate::find( $detail->parent_id );
        
        $cateArr = Cate::where('parent_id', $detail->parent_id)->get();

        $parentCateArr = ParentCate::all();

        $tmpArr = TagObjects::where(['object_type' => 1, 'object_id' => $id])->get();
        
        if( $tmpArr->count() > 0 ){
            foreach ($tmpArr as $value) {
                $tagSelected[] = $value->tag_id;
            }
        }
        
        $tagArr = Tag::where('type', 1)->get();

        return view('backend.movies.edit', compact('tagArr', 'tagSelected', 'detail', 'parentCateArr', 'parentCate', 'cateArr' ));
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
            
            File::move(config('icho.upload_path').$dataArr['image_url'], config('icho.upload_path').$destionation);
            
            $dataArr['image_url'] = $destionation;
        }

        $dataArr['site_id'] = Helper::getSiteOriginal($dataArr['url']);

        $model = Movies::find($dataArr['id']);

        $model->update($dataArr);

        TagObjects::where(['object_id' => $dataArr['id'], 'object_type' => 1])->delete();
        // xu ly tags
        if( !empty( $dataArr['tags'] ) ){
            foreach ($dataArr['tags'] as $tag_id) {
                TagObjects::create(['object_id' => $dataArr['id'], 'tag_id' => $tag_id, 'object_type' => 1]);
            }
        }
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
        TagObjects::where(['object_id' => $dataArr['id'], 'object_type' => 1])->delete();

        $model = Movies::find($id);
        $model->delete();


        // redirect
        Session::flash('message', 'Xóa phim thành công');
        return redirect()->route('movies.index');
    }
}
