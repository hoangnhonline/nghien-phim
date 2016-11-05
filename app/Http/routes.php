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
Route::group(['prefix' => 'social-auth'], function () {
    Route::group(['prefix' => 'facebook'], function () {
        Route::get('redirect/', ['as' => 'fb-auth', 'uses' => 'SocialAuthController@redirect']);
        Route::get('callback/', ['as' => 'fb-callback', 'uses' => 'SocialAuthController@callback']);
        Route::post('fb-login', ['as' => 'ajax-login-by-fb', 'uses' => 'SocialAuthController@fbLogin']);
    });

    Route::group(['prefix' => 'google'], function () {
        Route::get('redirect/', ['as' => 'gg-auth', 'uses' => 'SocialAuthController@googleRedirect']);
        Route::get('callback/', ['as' => 'gg-callback', 'uses' => 'SocialAuthController@googleCallback']);
    });

});

Route::group(['prefix' => 'authentication'], function () {
    Route::post('check_login', ['as' => 'auth-login', 'uses' => 'AuthenticationController@checkLogin']);
    Route::post('login_ajax', ['as' =>  'auth-login-ajax', 'uses' => 'AuthenticationController@checkLoginAjax']);
    Route::get('/user-logout', ['as' => 'user-logout', 'uses' => 'AuthenticationController@logout']);
});
Route::group(['namespace' => 'Frontend'], function()
{

    Route::get('/', ['as' => 'home', 'uses' => 'HomeController@index']);    
    Route::get('/user/kho-phim', ['as' => 'kho-phim', 'uses' => 'CustomerController@khoPhim']);
    Route::post('/user/favorite', ['as' => 'favorite', 'uses' => 'CustomerController@favorite']);
    //Route::get('/phim-le', ['as' => 'phim-le', 'uses' => 'HomeController@cate']);
    //::get('/phim-bo', ['as' => 'phim-bo', 'uses' => 'HomeController@cate']);
    Route::get('/tin-tuc', ['as' => 'news-list', 'uses' => 'HomeController@newsList']);

    Route::post('/get-link', ['as' => 'get-link', 'uses' => 'DetailController@getLink']);
    Route::get('/streaming/', ['as' => 'get-video-streaming', 'uses' => 'DetailController@streaming']);

    Route::get('/load-tab', ['as' => 'ajax-tab', 'uses' => 'HomeController@ajaxTab']);
    Route::get('phim/{slugName}/xem-phim.html', ['as' => 'detail', 'uses' => 'DetailController@index']);
    Route::get('tags/{tagName}/', ['as' => 'tags', 'uses' => 'HomeController@tags']);
    Route::get('dao-dien/{name}/', ['as' => 'dao-dien', 'uses' => 'HomeController@daoDien']);
    Route::get('dien-vien/{name}/', ['as' => 'dien-vien', 'uses' => 'HomeController@dienVien']);
    Route::get('phim/{slugName}/', ['as' => 'landing', 'uses' => 'DetailController@landing']);
    Route::get('/tin-tuc/{slug}-{id}.html', ['as' => 'news-detail', 'uses' => 'HomeController@newsDetail']);
    Route::get('/phim/{slugName}/{slugEpisode}.html', ['as' => 'detail-tap-phim', 'uses' => 'DetailController@index']);

    Route::get('{slug}', ['as' => 'cate', 'uses' => 'HomeController@cate']);
    Route::get('/movies-info/{movies_id}', ['as' => 'movies-info', 'uses' => 'DetailController@ajaxMoviesInfo']);

    Route::get('/download', ['as' => 'download', 'uses' => 'DetailController@download']);
    Route::get('/tim-kiem.html', ['as' => 'search', 'uses' => 'HomeController@search']);
});


// Authentication routes...
Route::get('backend/login', ['as' => 'backend.login-form', 'uses' => 'Backend\UserController@loginForm']);
Route::post('backend/login', ['as' => 'backend.check-login', 'uses' => 'Backend\UserController@checkLogin']);
Route::get('backend/logout', ['as' => 'backend.logout', 'uses' => 'Backend\UserController@logout']);

Route::group(['namespace' => 'Backend', 'prefix' => 'backend', 'middleware' => 'isAdmin'], function()
{
    
    // Controllers Within The "App\Http\Controllers\Backend" Namespace
    Route::get('/', ['as' => 'film.index', 'uses' => 'FilmController@index']);
    Route::group(['prefix' => 'info-seo'], function () {
        Route::get('/', ['as' => 'info-seo.index', 'uses' => 'InfoSeoController@index']);
        Route::get('/create', ['as' => 'info-seo.create', 'uses' => 'InfoSeoController@create']);
        Route::post('/store', ['as' => 'info-seo.store', 'uses' => 'InfoSeoController@store']);
        Route::get('{id}/edit',   ['as' => 'info-seo.edit', 'uses' => 'InfoSeoController@edit']);
        Route::post('/update', ['as' => 'info-seo.update', 'uses' => 'InfoSeoController@update']);
        Route::get('{id}/destroy', ['as' => 'info-seo.destroy', 'uses' => 'InfoSeoController@destroy']);
    });
    Route::group(['prefix' => 'sitemap'], function () {
        Route::get('/', ['as' => 'sitemap.index', 'uses' => 'SiteMapController@index']); 
        Route::get('/add-new', ['as' => 'sitemap.add-new', 'uses' => 'SiteMapController@addNew']); 
        Route::get('/crew', ['as' => 'sitemap.crew', 'uses' => 'SiteMapController@crew']);
        Route::get('/category', ['as' => 'sitemap.category', 'uses' => 'SiteMapController@category']);
        Route::get('/country', ['as' => 'sitemap.country', 'uses' => 'SiteMapController@country']);
        Route::get('/articles', ['as' => 'sitemap.articles', 'uses' => 'SiteMapController@articles']); 
        Route::get('/tag', ['as' => 'sitemap.tag', 'uses' => 'SiteMapController@tag']);
        Route::get('/default', ['as' => 'sitemap.default', 'uses' => 'SiteMapController@default']); 
        Route::get('/movies', ['as' => 'sitemap.movies', 'uses' => 'SiteMapController@movies']);            
    });
    
    Route::group(['prefix' => 'articles-cate'], function () {
        Route::get('/', ['as' => 'articles-cate.index', 'uses' => 'ArticlesCateController@index']);
        Route::get('/create', ['as' => 'articles-cate.create', 'uses' => 'ArticlesCateController@create']);
        Route::post('/store', ['as' => 'articles-cate.store', 'uses' => 'ArticlesCateController@store']);
        Route::get('{id}/edit',   ['as' => 'articles-cate.edit', 'uses' => 'ArticlesCateController@edit']);
        Route::post('/update', ['as' => 'articles-cate.update', 'uses' => 'ArticlesCateController@update']);
        Route::get('{id}/destroy', ['as' => 'articles-cate.destroy', 'uses' => 'ArticlesCateController@destroy']);
    }); 
    Route::group(['prefix' => 'tag'], function () {
        Route::get('/', ['as' => 'tag.index', 'uses' => 'TagController@index']);
        Route::get('/create', ['as' => 'tag.create', 'uses' => 'TagController@create']);
        Route::post('/store', ['as' => 'tag.store', 'uses' => 'TagController@store']);
        Route::get('{id}/edit',   ['as' => 'tag.edit', 'uses' => 'TagController@edit']);
        Route::post('/update', ['as' => 'tag.update', 'uses' => 'TagController@update']);
        Route::get('{id}/destroy', ['as' => 'tag.destroy', 'uses' => 'TagController@destroy']);
    });
    Route::group(['prefix' => 'account'], function () {
        Route::get('/', ['as' => 'account.index', 'uses' => 'AccountController@index']);
        Route::get('/update-status/{status}/{id}', ['as' => 'account.update-status', 'uses' => 'AccountController@updateStatus']);
        Route::get('/create', ['as' => 'account.create', 'uses' => 'AccountController@create']);
        Route::post('/store', ['as' => 'account.store', 'uses' => 'AccountController@store']);
        Route::get('{id}/edit',   ['as' => 'account.edit', 'uses' => 'AccountController@edit']);
        Route::post('/update', ['as' => 'account.update', 'uses' => 'AccountController@update']);
        Route::get('{id}/destroy', ['as' => 'account.destroy', 'uses' => 'AccountController@destroy']);
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
        Route::get('/{parent_id?}', ['as' => 'category.index', 'uses' => 'CategoryController@index'])->where('parent_id', '[0-9]+');
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
    Route::group(['prefix' => 'country'], function () {
        Route::get('/', ['as' => 'country.index', 'uses' => 'CountryController@index']);
        Route::get('/create', ['as' => 'country.create', 'uses' => 'CountryController@create']);
        Route::post('/store', ['as' => 'country.store', 'uses' => 'CountryController@store']);
        Route::post('/ajax-list-by-parent', ['as' => 'category.ajax-list-by-parent', 'uses' => 'CategoryController@ajaxListByParent']);
        
        Route::get('{id}/edit',   ['as' => 'country.edit', 'uses' => 'CountryController@edit']);
        Route::post('/update', ['as' => 'country.update', 'uses' => 'CountryController@update']);
        Route::get('{id}/destroy', ['as' => 'country.destroy', 'uses' => 'CountryController@destroy']);
    });  
    Route::group(['prefix' => 'crew'], function () {
        Route::get('/', ['as' => 'crew.index', 'uses' => 'CrewController@index']);
        Route::get('/create', ['as' => 'crew.create', 'uses' => 'CrewController@create']);
        Route::post('/store', ['as' => 'crew.store', 'uses' => 'CrewController@store']);
        Route::post('/ajax-list-by-parent', ['as' => 'crew.ajax-list-by-parent', 'uses' => 'CategoryController@ajaxListByParent']);
        
        Route::get('{id}/edit',   ['as' => 'crew.edit', 'uses' => 'CrewController@edit']);
        Route::post('/update', ['as' => 'crew.update', 'uses' => 'CrewController@update']);
        Route::get('{id}/destroy', ['as' => 'crew.destroy', 'uses' => 'CrewController@destroy']);
    });
    Route::group(['prefix' => 'film-episode'], function () {
        Route::get('/{film_id}', ['as' => 'film-episode.index', 'uses' => 'FilmEpisodeController@index']);
        Route::post('/update-order', ['as' => 'update-order-episode', 'uses' => 'FilmEpisodeController@updateOrder']);        
        Route::get('/create', ['as' => 'film-episode.create', 'uses' => 'FilmEpisodeController@create']);
        Route::post('/store', ['as' => 'film-episode.store', 'uses' => 'FilmEpisodeController@store']);
        Route::post('/ajax-list-by-parent', ['as' => 'film-episode.ajax-list-by-parent', 'uses' => 'FilmEpisodeController@ajaxListByParent']);
        
        Route::get('{id}/edit',   ['as' => 'film-episode.edit', 'uses' => 'FilmEpisodeController@edit']);
        Route::post('/update', ['as' => 'film-episode.update', 'uses' => 'FilmEpisodeController@update']);
        Route::get('{id}/destroy', ['as' => 'film-episode.destroy', 'uses' => 'FilmEpisodeController@destroy']);
    });
    Route::group(['prefix' => 'tag'], function () {
        Route::get('/', ['as' => 'tag.index', 'uses' => 'TagController@index']);
        Route::get('/create', ['as' => 'tag.create', 'uses' => 'TagController@create']);
        Route::post('/store', ['as' => 'tag.store', 'uses' => 'TagController@store']);
        Route::post('/ajaxSave', ['as' => 'tag.ajax-save', 'uses' => 'TagController@ajaxSave']);  
        Route::get('/ajax-list', ['as' => 'tag.ajax-list', 'uses' => 'TagController@ajaxList']);       
        
        Route::get('{id}/edit',   ['as' => 'tag.edit', 'uses' => 'TagController@edit']);
        Route::post('/update', ['as' => 'tag.update', 'uses' => 'TagController@update']);
        Route::get('{id}/destroy', ['as' => 'tag.destroy', 'uses' => 'TagController@destroy']);
    });
 	Route::post('/tmp-upload', ['as' => 'image.tmp-upload', 'uses' => 'UploadController@tmpUpload']);
    Route::post('/update-order', ['as' => 'update-order', 'uses' => 'GeneralController@updateOrder']);
    Route::post('/get-slug', ['as' => 'get-slug', 'uses' => 'GeneralController@getSlug']);
    Route::post('/get-film-external', ['as' => 'general.get-film-external', 'uses' => 'GeneralController@getFilmExternal']);
    
});