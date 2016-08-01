<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Backend\Cate;
use App\Models\Backend\ParentCate;
use Helper, File, Session;

class CateController extends Controller
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
        
        $items = Cate::where('parent_id', $parent_id)->orderBy('display_order')->get();
        
        $parentCateArr = ParentCate::all();
        
        return view('backend.cate.index', compact( 'items', 'parentCate' , 'parent_id', 'parentCateArr'));
    }

    public function ajaxListByParent(Request $request)
    {   
        $parent_id = isset($request->parent_id) ? $request->parent_id : 1;        

        $type = isset($request->type) ? $request->type : 'form';        
        
        $items = Cate::where('parent_id', $parent_id)->orderBy('display_order')->get();        
        
        return view('backend.cate.ajax-list-by-parent', compact( 'items', 'type' ));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create(Request $request)
    {
        $parent_id = isset($request->parent_id) ? $request->parent_id : 0;
        
        $parentCateArr = ParentCate::all()->sortBy('display_order');

        return view('backend.cate.create', compact( 'parent_id', 'parentCateArr'));
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
            'name' => 'required',
            'slug' => 'required|unique:parent_cate,slug|unique:cate,slug',
        ],
        [
            'name.required' => 'Bạn chưa nhập tên danh mục',
            'slug.required' => 'Bạn chưa nhập slug',
            'slug.unique' => 'Slug đã được sử dụng.'
        ]);       
        
        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);
        
        Cate::create($dataArr);

        Session::flash('message', 'Tạo mới danh mục thành công');

        return redirect()->route('cate.index',[$dataArr['parent_id']]);
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
        $detail = Cate::find($id);
        $parentCateArr = ParentCate::all();
        return view('backend.cate.edit', compact( 'detail', 'parentCateArr' ));
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
            'name' => 'required',
            'slug' => 'required|unique:parent_cate,slug|unique:cate,slug,'.$dataArr['id'],
        ],
        [
            'name.required' => 'Bạn chưa nhập tên danh mục',
            'slug.required' => 'Bạn chưa nhập slug',
            'slug.unique' => 'Slug đã được sử dụng.'
        ]);       

        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);

        $model = Cate::find($dataArr['id']);

        $model->update($dataArr);

        Session::flash('message', 'Cập nhật danh mục thành công');

        return redirect()->route('cate.index', [$dataArr['parent_id']]);
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
        return redirect()->route('cate.index');
    }
}
