<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Film;
use DB;
use Carbon\Carbon;
class HomeController extends Controller
{
    public function index()
    {
        // $Phims = array();
    	$Phims = DB::table('film')
        ->join('Typefilm', 'film.film_idtype', '=', 'Typefilm.typid')
        ->join('Feedback', 'film.film_feedid','=','Feedback.feedid')
        ->where('film.status','1')
        ->get();

        
        //Slider
        $sliders = db::table('slider')
        ->where('slider_status','1')
        ->get();
        //Phim ngay
        $phimngays = db::table('film')
        ->where('status','1')

        ->get();
        //Phim tuan
        $phimtuans = db::table('film')
        ->where('status','1')
        ->orderby('created_at','desc')
        ->get();
        //Phim thang
        $phimthangs = db::table('film')
        ->where('status','1')
        ->orderby('created_at','desc')
        ->get();
        //Phim nam
        $phimnam = db::table('film')
        ->where('status','1')
        ->orderby('created_at','desc')
        ->get();

        // $film = Film::find('')->userAdmin()->get();
        // $film = \App\Film::all();


        // dd($film);
        // die();
        // $film = new Film;


    	return view('pages.home')->with(compact("Phims"))->with(compact('phimngays'))->with(compact('comment'))->with(compact('sliders'));
    }
       
}
