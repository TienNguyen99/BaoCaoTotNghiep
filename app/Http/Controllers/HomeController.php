<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Film;
use DB;
use Carbon\Carbon;
use App\Customer;
use Hash;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use Auth;
class HomeController extends Controller
{
    public function index()
    {
        // $Phims = array();
    	$Phims = DB::table('film')
        ->join('Typefilm', 'film.film_idtype', '=', 'Typefilm.typid')
        ->join('Feedback', 'film.filid','=','Feedback.film_idF')
        
        ->where([
    ['film.status', '=', '1'],
    ['film.film_showing', '=', '1'],
        ])
        ->groupBy('filid','film_idF')
        ->orderBy('film.created_at','desc')
        ->distinct()
        ->get();
        
        $Phimsupcoming = DB::table('film')
        ->join('Typefilm', 'film.film_idtype', '=', 'Typefilm.typid')
        ->join('Feedback', 'film.filid','=','Feedback.film_idF')
        ->groupBy('filid','film_idF')
        ->where([
    ['film.status', '=', '1'],
    ['film.film_upcoming', '=', '1'],
        ])
        ->limit(3)
        ->orderBy('film.created_at','desc')
        ->get();
            
        
        
        //Slider
        $sliders = db::table('slider')
        ->where('slider_status','1')
        ->get();
        $phimhots = DB::table('film')
        ->join('Typefilm', 'film.film_idtype', '=', 'Typefilm.typid')
        ->join('Feedback', 'film.filid','=','Feedback.film_idF')
        ->groupBy('filid','film_idF')
        ->where('film.status','1')
        ->limit(5)
        ->orderBy('film.created_at','desc')
        ->get();

        //Phim ngay
        // $phimngays = db::table('film')
        // ->where('status','1')

        // ->get();
        // //Phim tuan
        // $phimtuans = db::table('film')
        // ->where('status','1')
        // ->orderby('created_at','desc')
        // ->get();
        // //Phim thang
        // $phimthangs = db::table('film')
        // ->where('status','1')
        // ->orderby('created_at','desc')
        // ->get();
        // //Phim nam
        // $phimnam = db::table('film')
        // ->where('status','1')
        // ->orderby('created_at','desc')
        // ->get();

        // $film = Film::find('')->userAdmin()->get();
        // $film = \App\Film::all();


        // dd($film);
        // die();
        // $film = new Film;


        //Dang nhap

        //Dang ky


    	return view('pages.home')->with(compact("Phims"))->with(compact('sliders'))->with(compact('Phimsupcoming'))->with(compact('phimhots'));
    }
    public function test($filid){
        $chitiet_films = DB::table('film')
        ->join('Typefilm', 'film.film_idtype', '=', 'Typefilm.typid')
        ->join('Feedback', 'film.status','=','Feedback.status')
        ->join('Showtime', 'film.filid','=','Showtime.showtime_id')
        ->limit(1)
        ->orWhere('film.filid',$filid)
        ->groupBy('filid','film_idF')
        ->get();
        return view('pages.test')->with(compact('chitiet_films'));
    }

    public function dangkytest(Request $req){

            $customer = new Customer();
            $customer ->customer_name = $req->fullname;
            $customer ->email = $req ->email;
            $customer ->password = Hash::make($req ->password);
            $customer ->customer_phone = $req ->phone;
            $customer ->customer_address = $req ->address;
            $customer ->customer_birth = $req ->birth;
            $customer ->save();
                
            
            return redirect()->back()->with('success','Đăng ký thành công.');
    }

        public function postDangky(Request $req){
            // $this ->validate($req,

            //     ['email' => 'required|email|unique:customer,customer_email' ,
            //      'password' =>'required|min:6|max:20',
            //      'fullname'=>'required',
            //      're_password'=>'required|same:password'
            //        ],[
            //        'email.required'=>'Vui lòng nhập email',
            //        'email.email'=>'Không đúng định dạng mail',
            //        'email.unique'=>'Email đã có người dùng.',
            //        'password.required'=>'Vui lòng nhập mật khẩu',
            //        're_password.same'=>'Mật khẩu không trùng khớp',
            //        'password.min'=>'Mật khẩu ít nhất 6 ký tự'
            //           ]

            // );

            $validator = Validator::make($req->all(),
                ['email' => 'required|email|unique:customer,email' ,
                 'password' =>'required|min:6|max:20',
                 'fullname'=>'required',
                 're_password'=>'required|same:password'
                ]
        );

            if ($validator ->fails())
            {
                return back()->with('toast_error',$validator->messages()->all()[0])->withInput();
            }else
            $customer = new Customer();
            $customer ->customer_name = $req->fullname;
            $customer ->email = $req ->email;
            $customer ->password = Hash::make($req ->password);
            $customer ->customer_phone = $req ->phone;
            $customer ->customer_address = $req ->address;
            $customer ->customer_birth = $req ->birth;
            $customer ->save();
                
            
            return redirect()->back()->with('success','Đăng ký thành công.');
        }       

// // Dang nhap
        public function postDangnhap(Request $req)
        {

                $validator = Validator::make($req->all(),
                [
                 'email'=>'required|email',
                 'password'=>'required|min:6|max:20'
                ]
        );

            $credentials = array('email'=>$req->email,'password'=>$req->password);
            
            if(Auth::guard('customers')->attempt($credentials)){
                
                // dd('Thanh cong');
                return redirect()->back()->with('success','Đăng nhập thành công.');
            }
            else
            {
                // dd('that bai');
                return redirect()->back()->with('toast_error','Đăng nhập thất bại.');
            }

        }
        public function postDangxuat(Request $req){
            Auth::guard('customers')->logout();
            return redirect()->route('index')->with('success','Đăng xuất thành công');
        }
        public function getSearch(Request $req){
        

        
        //Slider
        $sliders = db::table('slider')
        ->where('slider_status','1')
        ->get();
        $film = DB::table('film')
        ->join('Typefilm', 'film.film_idtype', '=', 'Typefilm.typid')
        ->join('Feedback', 'film.filid','=','Feedback.film_idF')
        ->where('namef','like','%'.$req->key.'%')
        ->orWhere('namet','like','%'.$req->key.'%')
        ->groupBy('filid','film_idF')
        ->get();
        $phimhots = DB::table('film')
        ->join('Typefilm', 'film.film_idtype', '=', 'Typefilm.typid')
        ->join('Feedback', 'film.filid','=','Feedback.film_idF')
        ->groupBy('filid','film_idF')
        ->where('film.status','1')
        ->limit(5)
        ->orderBy('film.created_at','desc')
        ->get();
            return view('pages.search')->with(compact('film'))->with(compact('sliders'))->with(compact('phimhots'));
        }

}
