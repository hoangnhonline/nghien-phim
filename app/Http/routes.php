<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', ['as' => 'home', 'uses' => 'HomeController@index']);
Route::get('/tin-tuc', ['as' => 'news-list', 'uses' => 'HomeController@newsList']);
Route::post('/get-link', ['as' => 'get-link', 'uses' => 'DetailController@getLink']);
Route::get('{slug}-{id}.html', ['as' => 'detail', 'uses' => 'DetailController@index']);
Route::get('/tin-tuc/{slug}-{id}.html', ['as' => 'news-detail', 'uses' => 'HomeController@newsDetail']);
Route::get('{slug}', ['as' => 'cate', 'uses' => 'HomeController@cate']);
Route::get('/download', ['as' => 'download', 'uses' => 'DetailController@download']);
Route::get('/tim-kiem.html', ['as' => 'search', 'uses' => 'HomeController@search']);

// Authentication routes...
Route::get('backend/login', ['as' => 'backend.login-form', 'uses' => 'Backend\UserController@loginForm']);
Route::post('backend/login', ['as' => 'backend.check-login', 'uses' => 'Backend\UserController@checkLogin']);
Route::get('backend/logout', ['as' => 'backend.logout', 'uses' => 'Backend\UserController@logout']);

Route::group(['namespace' => 'Backend', 'prefix' => 'backend', 'middleware' => 'isAdmin'], function()
{
    
    // Controllers Within The "App\Http\Controllers\Backend" Namespace
    Route::get('/', ['as' => 'film.index', 'uses' => 'FilmController@index']);
   
    Route::group(['prefix' => 'articles-cate'], function () {
        Route::get('/', ['as' => 'articles-cate.index', 'uses' => 'ArticlesCategoryController@index']);
        Route::get('/create', ['as' => 'articles-cate.create', 'uses' => 'ArticlesCategoryController@create']);
        Route::post('/store', ['as' => 'articles-cate.store', 'uses' => 'ArticlesCategoryController@store']);
        Route::get('{id}/edit',   ['as' => 'articles-cate.edit', 'uses' => 'ArticlesCategoryController@edit']);
        Route::post('/update', ['as' => 'articles-cate.update', 'uses' => 'ArticlesCategoryController@update']);
        Route::get('{id}/destroy', ['as' => 'articles-cate.destroy', 'uses' => 'ArticlesCategoryController@destroy']);
    }); 
    Route::group(['prefix' => 'tag'], function () {
        Route::get('/', ['as' => 'tag.index', 'uses' => 'TagController@index']);
        Route::get('/create', ['as' => 'tag.create', 'uses' => 'TagController@create']);
        Route::post('/store', ['as' => 'tag.store', 'uses' => 'TagController@store']);
        Route::get('{id}/edit',   ['as' => 'tag.edit', 'uses' => 'TagController@edit']);
        Route::post('/update', ['as' => 'tag.update', 'uses' => 'TagController@update']);
        Route::get('{id}/destroy', ['as' => 'tag.destroy', 'uses' => 'TagController@destroy']);
    });
    Route::group(['prefix' => 'film'], function () {
        Route::get('/', ['as' => 'film.index', 'uses' => 'FilmController@index']);
        Route::get('/create', ['as' => 'film.create', 'uses' => 'FilmController@create']);
        Route::post('/store', ['as' => 'film.store', 'uses' => 'FilmController@store']);
        Route::get('{id}/edit',   ['as' => 'film.edit', 'uses' => 'FilmController@edit']);
        Route::post('/update', ['as' => 'film.update', 'uses' => 'FilmController@update']);
        Route::get('{id}/destroy', ['as' => 'film.destroy', 'uses' => 'FilmController@destroy']);
    });  
    Route::group(['prefix' => 'articles'], function () {
        Route::get('/', ['as' => 'articles.index', 'uses' => 'ArticlesController@index']);
        Route::get('/create', ['as' => 'articles.create', 'uses' => 'ArticlesController@create']);
        Route::post('/store', ['as' => 'articles.store', 'uses' => 'ArticlesController@store']);
        Route::get('{id}/edit',   ['as' => 'articles.edit', 'uses' => 'ArticlesController@edit']);
        Route::post('/update', ['as' => 'articles.update', 'uses' => 'ArticlesController@update']);
        Route::get('{id}/destroy', ['as' => 'articles.destroy', 'uses' => 'ArticlesController@destroy']);
    });  
    Route::group(['prefix' => 'category'], function () {
        Route::get('/{parent_id?}', ['as' => 'category.index', 'uses' => 'CategoryController@index'])->where('parent_id', '[0-9]+');;
        Route::get('/create', ['as' => 'category.create', 'uses' => 'CategoryController@create']);
        Route::post('/store', ['as' => 'category.store', 'uses' => 'CategoryController@store']);
        Route::post('/ajax-list-by-parent', ['as' => 'category.ajax-list-by-parent', 'uses' => 'CategoryController@ajaxListByParent']);
        
        Route::get('{id}/edit',   ['as' => 'category.edit', 'uses' => 'CategoryController@edit']);
        Route::post('/update', ['as' => 'category.update', 'uses' => 'CategoryController@update']);
        Route::get('{id}/destroy', ['as' => 'category.destroy', 'uses' => 'CategoryController@destroy']);
    }); 
    
    Route::group(['prefix' => 'settings'], function () {
        Route::get('/', ['as' => 'settings.index', 'uses' => 'SettingsController@index']);
        Route::post('/update', ['as' => 'settings.update', 'uses' => 'SettingsController@update']);     
    }); 
 	Route::post('/tmp-upload', ['as' => 'image.tmp-upload', 'uses' => 'UploadController@tmpUpload']);
    Route::post('/update-order', ['as' => 'update-order', 'uses' => 'GeneralController@updateOrder']);
    Route::post('/get-slug', ['as' => 'get-slug', 'uses' => 'GeneralController@getSlug']);
    Route::post('/get-film-external', ['as' => 'general.get-film-external', 'uses' => 'GeneralController@getFilmExternal']);
    
});