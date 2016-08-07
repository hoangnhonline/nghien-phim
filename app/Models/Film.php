<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\FilmCountry;
use App\Models\FilmCategory;
use App\Models\FilmEpisode;
use App\Models\TagObjects;

class Film extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'film';

	 /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = true;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['meta_id', 'title', 'slug', 'alias', 'description', 'original_title', 'original_slug', 'image_url', 'poster_url', 'duration', 'release_year', 'type', 'cinema', 'content', 'note', 'likes', 'views', 'updated_episode_date', 'status', 'imdb', 'top', 'order', 'expired', 'push_top', 'trailer', 'created_user', 'updated_user'];
    
    public static function filmCategory( $id )
    {
        $arr = [];
        $rs = FilmCategory::where( 'film_id', $id )->lists('category_id');
        if( $rs ){
            $arr = $rs->toArray();
        }
        return $arr;
    }

    public static function filmCountry( $id )
    {
        $arr = [];
        $rs = FilmCountry::where( 'film_id', $id )->lists('country_id');
        if( $rs ){
            $arr = $rs->toArray();
        }
        return $arr;
    }
    public static function filmTag( $id )
    {
        $arr = [];
        $rs = TagObjects::where( ['type' => 1, 'object_id' => $id] )->lists('tag_id');
        if( $rs ){
            $arr = $rs->toArray();
        }
        return $arr;
    }

    public static function filmCrew(){

        $crewArr = [];

        $tmpCrew = Crew::all();

        foreach( $tmpCrew as $crew ){
            $crewArr[$crew->type][] = $crew;
        }
        return $crewArr;
    }
}
