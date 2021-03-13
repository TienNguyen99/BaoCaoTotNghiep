<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Film extends Model
{
   protected $primaryKey = 'filid';
   protected $table = 'film';
   public function filmtype()
    {
        return $this->belongsTo('App\Typefilm');
    }
}
