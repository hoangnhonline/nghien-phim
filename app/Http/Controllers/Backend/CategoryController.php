<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Country;
use Helper, File, Session;

class CountryController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {  
        
        $items = Country::orderBy('display_order')->get();        
        
        $parentCate = Country::where('parent_id', 0)->where('type', 1)->orderBy('display_order')->get();
        
        return view('backend.category.index', compact( 'items', 'parentCate'));
    }

    public function ajaxListByParent(Request $request)
    {   
        $parent_id = isset($request->parent_id) ? $request->parent_id : 1;        

        $type = isset($request->type) ? $request->type : 'form';        
        
        $items = Country::where('parent_id', $parent_id)->orderBy('display_order')->get();        
        
        return view('backend.category.ajax-list-by-parent', compact( 'items', 'type' ));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create()
    {         
        $parentCate = Country::where('parent_id', 0)->where('type', 1)->orderBy('display_order')->get();

        return view('backend.category.create', compact('parentCate'));
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
            'slug' => 'required|unique:category,slug',
        ],
        [
            'name.required' => 'Bạn chưa nhập tên danh mục',
            'slug.required' => 'Bạn chưa nhập slug',
            'slug.unique' => 'Slug đã được sử dụng.'
        ]);       
       
        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);  

        Country::create($dataArr);

        Session::flash('message', 'Tạo mới danh mục thành công');

        return redirect()->route('category.index');
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
        $detail = Country::find($id);

        $parentCateArr = Country::all();
        
        return view('backend.category.edit', compact( 'detail', 'parentCateArr' ));
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
            'slug' => 'required|unique:parent,slug|unique:cate,slug,'.$dataArr['id'],
        ],
        [
            'name.required' => 'Bạn chưa nhập tên danh mục',
            'slug.required' => 'Bạn chưa nhập slug',
            'slug.unique' => 'Slug đã được sử dụng.'
        ]);       

        $dataArr['alias'] = Helper::stripUnicode($dataArr['name']);

        $model = Country::find($dataArr['id']);

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
        $model = Country::find($id);
        $model->delete();

        // redirect
        Session::flash('message', 'Xóa danh mục thành công');
        return redirect()->route('cate.index');
    }
}
