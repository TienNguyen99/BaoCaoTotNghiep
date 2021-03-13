<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Typefilm extends Model
{
	protected $primaryKey = 'typid';
    protected $table = 'Typefilm';

       public function film()
    {
        return $this->hasMany(Film::class);
    }
}
