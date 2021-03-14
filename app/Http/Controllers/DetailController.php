<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class DetailController extends Controller
{

    public function detail_film($filid){
		$Phims = DB::table('film')
		->join('Typefilm', 'film.film_idtype', '=', 'Typefilm.typid')
		->join('Feedback', 'film.film_feedid','=','Feedback.feedid')
		->where('film.status','1')
		->get();

		$sliders = db::table('slider')
        ->where('slider_status','1')
        ->get();

		$phimngays = db::table('film')
		->where('status','1')
		->get();

		$chitiet_film = DB::table('film')
		->join('Typefilm', 'film.film_idtype', '=', 'Typefilm.typid')
		->join('Feedback', 'film.film_feedid','=','Feedback.feedid')
		->where('film.filid',$filid)->get();
		return view('pages.detail')->with(compact('Phims'))->with(compact('phimngays'))->with(compact('chitiet_film'))->with(compact('sliders'));


        // $detail_product = DB::table('tbl_product')
        // ->join('tbl_category_product','tbl_category_product.category_id','=','tbl_product.category_id')
        // ->join('tbl_brand','tbl_brand.brand_id','=','tbl_product.brand_id')
        // ->where('tbl_product.product_id',$product_id)->get();
        // return view('pages.sanpham.show_detail')->with('category',$cate_product)->with('brand',$brand_product)->with('product_detail',$detail_product);

    }
}
