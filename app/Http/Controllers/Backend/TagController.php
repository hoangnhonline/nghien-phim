<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Backend\Tag;
use Helper, File, Session;

class TagController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {
        //Helper::getDetailVideoFromExternalSite('');
        
        $type = isset($request->type) ? $request->type : 1;

        $tag = isset($request->tag) && $request->tag != '' ? $request->tag : '';

        $query = Tag::where('type', $type);
        if( $tag !='' ){
            $query->where('tag', 'LIKE', '%'.$tag.'%');
        }
        $items = $query->orderBy('id', 'desc')->paginate(50);

        return view('backend.tag.index', compact( 'items', 'type', 'tag'));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create()
    {
        return view('backend.tag.create');
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
            'tag' => 'required',
            'slug' => 'required|unique:tag,slug,NULL,id,type,'.$dataArr['type'],
        ],
        [
            'tag.required' => 'Bạn chưa nhập tag',
            'slug.required' => 'Bạn chưa nhập slug',
            'slug.unique' => 'Slug đã được sử dụng.',
        ]);

        $dataArr['alias'] = Helper::stripUnicode($dataArr['tag']);
        
        Tag::create($dataArr);

        Session::flash('message', 'Tạo mới tag thành công');

        return redirect()->route('tag.index', [ 'type' => $dataArr['type'] ]);
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
        $detail = Tag::find($id);

        return view('backend.tag.edit', compact( 'detail' ));
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
            'tag' => 'required',
            'slug' => 'required|unique:tag,slug,'.$dataArr['id'].',id,type,'.$dataArr['type'],
        ],
        [
            'tag.required' => 'Bạn chưa nhập tag',
            'slug.required' => 'Bạn chưa nhập slug',
            'slug.unique' => 'Slug đã được sử dụng.',
        ]);
        $dataArr['alias'] = Helper::stripUnicode($dataArr['tag']);
        
        $model = Tag::find($dataArr['id']);

        $model->update($dataArr);

        Session::flash('message', 'Cập nhật tag thành công');

        return redirect()->route('tag.index', [ 'type' => $dataArr['type'] ]);
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
        $model = Tag::find($id);
        $model->delete();

        // redirect
        Session::flash('message', 'Xóa tag thành công');
        return redirect()->route('tag.index');
    }
}