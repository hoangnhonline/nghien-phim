<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Film;
use App\Models\FilmEpisode;
use Helper, File, Session;

class FilmEpisodeController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index(Request $request)
    {  
        $film_id = $request->film_id;
        $detail = [];
        $detailFilm = Film::find($film_id);

        $id = isset($request->id) ? $request->id : 0;
        if($id > 0){
            $detail = FilmEpisode::find( $id );
        }
        $items = FilmEpisode::where('film_id', $film_id)->orderBy('id')->paginate(50);        
        
        //$parentCate = Category::where('parent_id', 0)->where('type', 1)->orderBy('display_order')->get();
        
        return view('backend.film-episode.index', compact( 'items', 'film_id', 'id', 'detailFilm', 'detail'));
    }
    public function create()
    {         
        //$parentCate = Category::where('parent_id', 0)->where('type', 1)->orderBy('display_order')->get();

        return view('backend.film-episode.create');
    }
    public function store(Request $request)
    {
       
        $dataArr = $request->all();
         
        $this->validate($request,[
            'name' => 'required',
            'slug' => 'required|unique:film_episode,slug,'.$dataArr['film_id'].',film_id',
        ],
        [
            'name.required' => 'Bạn chưa nhập tên tập phim',
            'slug.required' => 'Bạn chưa nhập slug',
            'slug.unique' => 'Slug đã được sử dụng.'
        ]);       
         
 
        FilmEpisode::create($dataArr);

        Session::flash('message', 'Thêm mới tập phim thành công');

        return redirect()->route('film-episode.index');
    }
    public function destroy($id)
    {
        // delete
        $model = FilmEpisode::find($id);
        $model->delete();

        // redirect
        Session::flash('message', 'Xóa tập phim thành công');
        return redirect()->route('film-episode.index');
    }
    public function edit($id)
    {
        $detail = FilmEpisode::find($id);

        
        return view('backend.film-episode.edit', compact( 'detail'));
    }
    public function update(Request $request)
    {
        $dataArr = $request->all();
        
        $this->validate($request,[
            'name' => 'required',
            'slug' => 'required|unique:film_episode,slug,'.$dataArr['id'].',id,film_id,'.$dataArr['film_id'],
        ],
        [
            'name.required' => 'Bạn chưa nhập tên tập phim',
            'slug.required' => 'Bạn chưa nhập slug',
        ]);       

        $model = FilmEpisode::find($dataArr['id']);

        $model->update($dataArr);

        Session::flash('message', 'Cập nhật tập phim thành công');

        return redirect()->route('film-episode.index');
    }
}