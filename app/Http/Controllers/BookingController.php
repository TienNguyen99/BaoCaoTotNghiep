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

class BookingController extends Controller
{
    public function dangkytest(Request $req){

            $customer = new Customer();
            $customer ->customer_name = $req->fullname;
            
            $customer ->save();
                
            
            return redirect()->back()->with('success','Đặt vé thành công.');
    }
}
