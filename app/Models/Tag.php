<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Tag extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'tag';

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
    protected $fillable = ['sys_id', 'title', 'slug', 'excerpt', 'original_name', 'original_slug', 'image_url', 'poster_url', 'duration', 'release_year', 'type', 'cinema', 'content', 'note', 'likes', 'views','author', 'updated_episode_date', 'status', 'imdb', 'top', 'order', 'expired', 'push_top', 'trailer', 'created_user', 'updated_user', 'alias'];
    
}
