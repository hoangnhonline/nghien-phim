<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class FilmEpisode extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'film_episode';

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
    protected $fillable = ['parent_id', 'type', 'name', 'description', 'priority', 'slug', 'keywords', 'thumb', 'created_user', 'updated_user', 'status', 'is_hot', 'alias', 'meta_title', 'meta_description', 'meta_keywords', 'custom_text'];    
    
}
