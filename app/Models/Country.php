<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Country extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'country';

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
    protected $fillable = ['parent', 'name', 'description', 'priority', 'slug', 'keywords', 'thumb', 'created_user', 'updated_user'];
    
}
