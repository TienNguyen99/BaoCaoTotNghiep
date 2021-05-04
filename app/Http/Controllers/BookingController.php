<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Film;
use DB;
use Carbon\Carbon;
use App\Ticket;
use Hash;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Validator;
use Auth;
use Mail;
use App\Mail\Mailer;
class BookingController extends Controller
{
    public function dangkytest(Request $req){

            $order = new Ticket();
            $order ->order_customername = $req->cus_name;
            $order ->order_filmname = $req->cus_film;
            $order ->order_seat = $req->cus_seat;
            $order ->order_customerid = $req->cus_id;
            $order ->order_phone = $req->cus_phone;
            $order ->order_birth = $req->cus_birth;
            $order ->order_address = $req->cus_address;
            
            
            $order ->save();
            
            
            return redirect()->back()->with('success','Đặt vé thành công.');
    }
        public function sendMail(){

            
                
            
            return redirect()->back()->with('success','Đặt vé thành công.');
    }
}
