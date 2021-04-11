<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Film;
use DB;
use Carbon\Carbon;
use App\Customer;
use App\Feedback;
use Hash;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use Auth;
class DetailController extends Controller
{

    public function detail_film($filid){
		

		$sliders = db::table('slider')
        ->where('slider_status','1')
        ->get();

		// $phimngays = db::table('film')
		// ->where('status','1')
		// ->get();

		$chitiet_film = DB::table('film')
		->join('Typefilm', 'film.film_idtype', '=', 'Typefilm.typid')
		->join('Feedback', 'film.filid','=','Feedback.film_idF')
		->groupBy('filid','film_idF')
		->where('film.filid',$filid)
		->get();
        
		$feedbacks = DB::table('film')
		->join('Typefilm', 'film.film_idtype', '=', 'Typefilm.typid')
		->join('Feedback', 'film.filid','=','Feedback.film_idF')
		
		->where('film.filid',$filid)
		->get();
        $phimhots = DB::table('film')
        ->join('Typefilm', 'film.film_idtype', '=', 'Typefilm.typid')
        ->join('Feedback', 'film.filid','=','Feedback.film_idF')
        ->groupBy('filid','film_idF')
        ->where('film.status','1')
        ->limit(5)
        ->orderBy('film.created_at','desc')
        ->get();
		return view('pages.detail')->with(compact('Phims'))->with(compact('chitiet_film'))->with(compact('sliders'))->with(compact('feedbacks'))->with(compact('phimhots'));
    }

    public function postComment(Request $req)
    {
    // $validatedData = $request->validate([
    //     'body' => 'min:5|max:500|required',
    // ]);
    
    // $comment = Comment::create($validatedData)
    // \Auth::user()->comments()->save($comment);
    // $post->comments()->save($comment);

    // return back();
        if (!Auth::guard('customers')->check()) { 
        $req->session()->flash('warning', 'Bạn phải đăng nhập để bình luận.');
        return redirect()->back();

    }

            $validator = Validator::make($req->all(),
                ['email' => 'max:200'
                ]
        );

            if ($validator ->fails())
            {
                return back()->with('toast_error',$validator->messages()->all()[0])->withInput();
            }else
            $feedback = new Feedback();
            $feedback ->film_idF =$req->film_id;
            $feedback ->fullname = $req->cus_name;
            $feedback ->avatar = $req ->cus_avatar;
            $feedback ->comment = $req ->cus_comment;
            $feedback ->status = $req ->cus_status;
            $feedback ->save();
                
            
            return redirect()->back()->with('success','Bình luận thành công.');
    }
}
