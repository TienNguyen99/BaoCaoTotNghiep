












<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="{{asset('public/frontend/img/icon.ico')}}" type="image/icon type">
    <title>Binh An Cinema</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="{{asset('public/frontend/css/bootstrap.min.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/font-awesome.min.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/elegant-icons.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/plyr.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/nice-select.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/owl.carousel.min.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/slicknav.min.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/style.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/login-register.css')}}" type="text/css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.9/sweetalert2.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.9/sweetalert2.min.js"></script>
      <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/prima.css')}}">
    <script src="{{asset('public/frontend/js/jquery-3.3.1.min.js')}}"></script>

    <!-- <link href="{{asset('public/frontend/css/stylebooking.css')}}" rel="stylesheet" type="text/css" media="all" /> -->
    <link rel="stylesheet" href="{{asset('public/frontend/css/multistep.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/datepickerradio.css')}}" type="text/css">
        <script type="text/javascript" src="{{asset('public/frontend/js/underscore-min.js')}}"></script>
    <script type="text/javascript" src="{{asset('public/frontend/js/backbone.js')}}"></script>
    <style type="text/css">
        .th {
            color: #ffffff;
        }
        .label{
            color: #ffffff;
        }
    </style>
</head>

<body >
    <!-- Page Preloder -->
        <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="{{URL::to('/trang-chu')}}">
                            <img src="{{asset('public/storage/logo.jpg')}}" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li class="active"><a href="{{URL::to('/trang-chu')}}">Mua vé</a></li>
                                <li><a href="javascript:void(0)">Điện ảnh <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="{{URL::to('/404')}}">Thể loại</a></li>
                                        <li><a href="{{URL::to('/404')}}">Diễn viên</a></li>
                                        <li><a href="{{URL::to('/404')}}">Đạo diễn</a></li>
                                        <li><a href="{{URL::to('/404')}}">Rạp chiếu phim</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0)" id ="locationModal">Rạp phim</a></li>
                                
                                
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="header__right" >

                        <?php if (Auth::guard('customers')->check()): ?>
                            <nav class="header__menu mobile-menu">

                                <ul> <a href="javascript:void(0)" class="search-switch"><span class="icon_search" style="color: #b7b7b7; display:block;font-weight: 700;"></span></a>   <li><a href="" >Chào bạn,{{Auth::guard('customers')->user()->customer_name}}  <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="{{route('custom.profile')}}" >Thông tin tài khoản</a></li>
                                        <li><a href= "{{route('custom.logout')}}">Đăng xuất</a></li>

                                    </ul>
                                </li></ul>
                        
                            </nav>
                        <?php else: ?>
                        <a href="javascript:void(0)" class="search-switch"><span class="icon_search"></span></a>

                        <a href="javascript:void(0)"><span class="icon_profile" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();"></span></a>  
                        <?php endif ?>
                        


                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Hero Section Begin -->

    <?php foreach ($chitiet_films as $key => $value): ?>
    <?php if (Auth::guard('customers')->check()): ?>
<form id="msform" class="selectionForm" method="post" action="{{ route('custom.booking')}}" novalidate="">
    @csrf
    <!-- progressbar -->
    <ul id="progressbar">
        <li class="active">Ngày chiếu</li>
        <li>Giờ chiếu</li>
        <li>Chỗ ngồi</li>
        <li>Thông tin vé</li>
    </ul>
    <!-- fieldsets -->
    <fieldset>
        
      

                    <div class="col-12 ">
                        <?php foreach ($showtimes as $key => $showtime): ?>
                        <input class="checkbox-budget" type="radio" name="namedate" id="showdate_{{$showtime->showtime_id}}" value="{{ \Carbon\Carbon::parse($showtime->showtime_date)->format('d/m')}}" checked>
                        <label class="for-checkbox-budget" for="showdate_{{$showtime->showtime_id}}">
                            <span data-hover="{{ \Carbon\Carbon::parse($showtime->showtime_date)->format('d/m')}}">{{ \Carbon\Carbon::parse($showtime->showtime_date)->format('d/m')}}</span>
                        </label>
                        
                         <?php endforeach ?>   
                    </div>
      

        <input type="button" name="next" class="next action-button" value="Tiếp tục" onclick="displayRadioValue()" />
    </fieldset>
    <fieldset>
            <div class="col-12 ">

                        <?php foreach ($showtimes as $key => $time): ?>
                        <input class="checkbox-budget" type="radio" name="nametime" id="showtime_{{$time->showtime_id}}" value="{{ \Carbon\Carbon::parse($time->showtime_hour)->format('H:i')}}" checked>
                        <label class="for-checkbox-budget" for="showtime_{{$time->showtime_id}}">
                            <span data-hover="{{ \Carbon\Carbon::parse($time->showtime_hour)->format('H:i')}}">{{ \Carbon\Carbon::parse($time->showtime_hour)->format('H:i')}}</span>
                        </label>
                        
                         <?php endforeach ?>  
            </div>
        <input type="button" name="previous" class="previous action-button" value="Trở về" />
        <input type="button" name="next" class="next action-button" value="Tiếp tục" onclick="displayTimeValue()" />
    </fieldset>
    <fieldset>
<div class="col-12">
    
        
            
             
            
                
                <input type="hidden" class="form-control" id='name' value="{{Auth::guard('customers')->user()->customer_name}}" required="required"/>
            
            
                
                <input type="hidden" id='seats' class="form-control" value="[]" required="required"/>
            
            
                <button type="button" class="action-button" id="submitSelection">Chọn</button>
            
            <div class="text-center">
                <font color="Red"><label class="error"></label></font>
            </div>

       



        <div class="screen-ui">
            <div id="screen">
                <font color="white">Màn hình</font>       
            </div>
            
            <table class="table" id="table-screen">
                <thead id="screen-head">
                    <tr>
                        <script type="text/template" id='table-screen-header'>
                            <% _.each(_.range(0,columns+1),function(item){ %>
                                <% if(item==0) {%>
                                    <th></th>
                                <% } else {%>
                                    <th><%= item %></th>
                                <% } %>
                            <% }) %>
                        </script>
                    </tr>
                </thead>
                <tbody id="screen-body">
                    <script type="text/template" id='table-screen-body'>
                        <% _.each(rows,function(row){ %>
                            <tr id='table-screen-row'>
                                <td><%=row%></td>
                                <% _.each(_.range(1,columns+1),function(column){ %>
                                    <% var id=(_.indexOf(rows,row)*columns)+column; var reservedSeats=JSON.parse(localStorage.getItem('ReservedSeats')); if(reservedSeats!=null && _.indexOf(reservedSeats,String(id))!=-1) {%>
                                        <td><img src="{{asset('public/frontend/img/reserved-seat.png')}}" class="reserved-seat" id="<%=id%>"/></td>
                                    <% }else {%>
                                        <td><img src="{{asset('public/frontend/img/empty-seat.png')}}" class="empty-seat" id="<%=id%>"/></td>               
                                    <% }}) %>
                            </tr>
                        <% }) %>
                    </script>   
                </tbody>
            </table>

            <div class="text-center">
                <button type="button" class="action-button" id="confirmSelection" >Xác nhận chỗ ngồi</button>
                <div class="screen-map">
                <label for="empty-seat-map">Ghế đã chọn</label>
                <img src="{{asset('public/frontend/img/booked-seat.png')}}" class="booked-seat-map" id="booked-seat-map">
                <br/>
                <label for="">Ghế đã đặt</label>
                <img src="{{asset('public/frontend/img/reserved-seat.png')}}" class="reserved-seat-map" id="reserved-seat-map">
                <br/>
                <label for="">Ghế trống</label>
                <img src="{{asset('public/frontend/img/empty-seat.png')}}" class="empty-seat-map" id="empty-seat-map">
            </div>  
            </div>
                    
        </div>


</div>



        <input type="button" name="previous" class="previous action-button" value="Trở về" />
        <input type="button" name="next" class="next action-button" value="Tiếp tục" onclick="displayTotal()" />
    </fieldset>
  <fieldset>
        <div class="table-responsive">
            
                
                <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Khách hàng</th>
                        <th><input type="text" value ="" ></th>
                        <th>Phim</th>
                        <th>Ngày chiếu</th>
                        <th>Giờ chiếu</th>
                        <th>Số vé</th>
                        <th>Vị trí ghế</th>
                        <th>Tổng tiền</th>
                    </tr>
                </thead>
                <tbody id="ticket-sold-info">
                    <script type="text/template" id='table-ticket-info'>
                        <% _.each(items,function(item){%>
                            <tr>
                                <td><%-item.names%></td>
                                <input type="hidden" name="fullname" value ="<%-item.names%>">

                                <td>{{$value->namef}}</td>
                                <input type="hidden" name="namefilm" value ="{{$value->namef}}">

                                <td id="result"></td>
                                

                                <td id="timeresult"></td>

                                <td id="getValue"><%-item.numbers%></td>

                                <td><%-item.seats%></td>

                                <td id="showValue"></td>
                            </tr>
                        <%})%>
                    </script>
                </tbody>

            </table>  

                
           
            

        </div>
        <input type="button" name="previous" class="previous action-button" value="Trở về" />
        <input class="action-button"  type="submit" value="Đặt vé"  >
        <!-- <input type="submit" name="submit" class="submit action-button" value="Xác nhận đặt vé" id="form-submit" /> -->
  </fieldset>

</form>
<!-- jQuery -->
<script type="text/javascript">
    
    var BookedSeats = [];
var Rows=["A","B","C","D","E","F","G","H","I","J"];
var Columns=12;
var TotalSeats=Rows.length*Columns;
function convertIntToSeatNumbers(seats){
    var bookedSeats="";
    _.each(seats,function(seat){
        var row=Rows[parseInt(parseInt(seat)/12)];
        var column=parseInt(seat)%12;
        if(column==0){
            column=12;
        }
        if(_.indexOf(seats,seat)==seats.length-1){
            bookedSeats=bookedSeats+row+column;
        }
        else{
            bookedSeats=bookedSeats+row+column+",";
        }
    });
    return bookedSeats;
}
var InitialView = Backbone.View.extend({
    events:{
        "click #submitSelection": "submitForm"
    },
    submitForm : function(){
        var reservedseats=JSON.parse(localStorage.getItem('ReservedSeats'));
        var availableSeats=TotalSeats;
        var selectedNumberOfSeats=$('#seats').val();
        if(reservedseats!=null)
            availableSeats=TotalSeats-reservedseats.length;
        screenUI.showView();
    }
});
var initialView = new InitialView({el:$('.selectionForm')});
var ScreenUI=Backbone.View.extend({
    events:{
        "click .empty-seat,.booked-seat":"toggleBookedSeat",
        "click #confirmSelection":"bookTickets"
    },
    initialize:function(){
        var tableheaderTemplate = _.template($("#table-screen-header").html());
        var tableBodyTemplate=_.template($("#table-screen-body").html());
        var data={"rows":Rows,"columns":Columns};
        $("#screen-head").after(tableheaderTemplate(data));
        $("#screen-body").after(tableBodyTemplate(data));   
    },
    hideView:function(){
        $(this.el).hide();
    },
    showView:function(){
        $(this.el).show();
    },
    toggleBookedSeat:function(event){
        var id="#"+event.currentTarget.id;
        if($(id).attr('class')=='empty-seat' ){
            BookedSeats.push(id.substr(1));
            $(id).attr('src','{{asset('public/frontend/img/booked-seat.png')}}');
            $(id).attr('class','booked-seat');
        }
        else if($(id).attr('class')=='booked-seat'){
            BookedSeats=_.without(BookedSeats,id.substr(1));
            $(id).attr('src','{{asset('public/frontend/img/empty-seat.png')}}');
            $(id).attr('class','empty-seat');
        }
    },
    updateTicketInfo:function(){
        var bookedSeats=convertIntToSeatNumbers(BookedSeats);
        $("#ticket-sold-info").append("<tr><td>"+$('#name').val()+"</td><td>"+$('#seats').val()+"</td><td>"+bookedSeats+"</td></tr>");
    },
    bookTickets:function(event){
        
            
            var reservedseats=JSON.parse(localStorage.getItem('ReservedSeats'))||[];
            _.each(BookedSeats,function(bookedSeat){
                reservedseats.push(bookedSeat);
            });
            var nameSeatsJSON=JSON.parse(localStorage.getItem('NameSeatsJSON'))||{};
            nameSeatsJSON[$('#name').val()]=BookedSeats;
            localStorage.setItem('NameSeatsJSON',JSON.stringify(nameSeatsJSON));
            localStorage.setItem('ReservedSeats',JSON.stringify(reservedseats));
            this.updateTicketInfo();
            location.reload(true);
            

            swal("Chọn ghế thành công .Vui lòng nhấn tiếp tục để xem thông tin vé.")
        
              
    },
});
var screenUI = new ScreenUI({el:$('.screen-ui')});
screenUI.hideView();
var TicketInfo=Backbone.View.extend({
    initialize:function(){
        var items=[];
        var json=JSON.parse(localStorage.getItem('NameSeatsJSON'));
        if(json!=null){
        _.each(json,function(key,value){
            var name=value;
            var number=key.length;
            var bookedSeats=convertIntToSeatNumbers(key);
            items.push({names:name,numbers:number,seats:bookedSeats});
        });
        var data={"items":items};
        var ticketInfoBody=_.template($("#table-ticket-info").html());
        $("#ticket-sold-info").html(ticketInfoBody(data));
        }
    }
});
var ticketInfo=new TicketInfo({el:$('.table-responsive')});
</script>
<!-- jQuery easing plugin -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js" type="text/javascript"></script>
<script type="text/javascript">
        function displayRadioValue() {
            var ele = document.getElementsByName('namedate');
              
            for(i = 0; i < ele.length; i++) {
                if(ele[i].checked)
                document.getElementById("result").innerHTML
                        = ele[i].value;
            }
        }
</script>
<script type="text/javascript">
        function displayTimeValue() {
            var time = document.getElementsByName('nametime');
          
            for(i = 0; i < time.length; i++) {
                if(time[i].checked)
                document.getElementById("timeresult").innerHTML
                        =time[i].value;
                  
            }
        }
</script>
<script type="text/javascript">
        function displayTotal() {
            var basenumber = parseInt(document.getElementById("getValue").textContent);
            
            var mulnumber  = 50000;
            var total = basenumber *mulnumber;
            document.getElementById("showValue").innerHTML = parseInt(total);
            
        }
</script>




    <?php else: ?>
        <script type="text/javascript">
            $(document).ready(function(){
                swal("Hãy đăng nhập trước khi đặt vé!");
            });
        </script>
    <?php endif ?>

    <?php endforeach ?>
    <!-- Hero Section End -->
    
 
    
    <!-- Product Section Begin -->
   
<!-- Product Section End -->

<!-- Footer Section Begin -->

  <!-- Footer Section End -->

  <!-- Search model Begin -->
  <div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form class="search-model-form" name="key" action="{{route('search')}}">
            <input type="text" name="key" id="search-input" placeholder="Vui lòng nhập tên phim.....">
        </form>
    </div>
</div>
<!-- Search model end -->
<!-- Login Modal -->
<!-- Modal -->
         <div class="modal fade login" id="loginModal">
              <div class="modal-dialog login animated">
                  <div class="modal-content">
                     <div class="modal-header">
                        
                        <h4 class="modal-title">Đăng nhập</h4>
                    </div>
                    <div class="modal-body">
                        <div class="box">
                             <div class="content">
                                <div class="social">
                                    <a class="circle github" href="#">
                                        <i class="fa fa-github fa-fw"></i>
                                    </a>
                                    <a id="google_login" class="circle google" href="#">
                                        <i class="fa fa-google-plus fa-fw"></i>
                                    </a>
                                    <a id="facebook_login" class="circle facebook" href="#">
                                        <i class="fa fa-facebook fa-fw"></i>
                                    </a>
                                </div>
                                <div class="division">
                                    <div class="line l"></div>
                                      <span>Hoặc</span>
                                    <div class="line r"></div>
                                </div>
                                <div class="error"></div>
                                <div class="form loginBox">
                                    <form method="post" action="{{route('custom.login')}}" accept-charset="UTF-8">
                             <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <?php if (Session::has('success')): ?>
                                    <div >{{Session::get('success')}}</div>
                                <?php endif ?>
                                 <?php if (Session::has('toast_error')): ?>
                                    <div >{{Session::get('toast_error')}}</div>
                                <?php endif ?>
                                    <input id="email" class="form-control" type="text" placeholder="Email" name="email">
                                    <input id="password" class="form-control" type="password" placeholder="Mật khẩu" name="password">
                                    <input class="btn btn-default btn-login" type="submit" value="Đăng nhập"  >
                                    </form>
                                </div>
                             </div>
                        </div>
                        <div class="box">
                            <div class="content registerBox" style="display:none;">
                             <div class="form">
                                <form method="post" html="{:multipart=>true}" data-remote="true" action="{{ route('custom.register')}}" accept-charset="UTF-8">
                                    <input type="hidden" name="_token" value="{{csrf_token()}}">
                                    <?php if (count(array($errors))>0): ?>
                                        
                                            <?php foreach ($errors->all() as $err): ?>
                                                {{$err}}
                                            <?php endforeach ?>


                                        
                                    <?php endif ?>
                                <?php if (Session::has('success')): ?>
                                    <div class="alert alert-success">{{Session::get('success')}}</div>
                                <?php endif ?>
                                <input id="email" class="form-control" type="text" placeholder="Email" name="email">
                                <input id="password" class="form-control" type="password" placeholder="Mật khẩu" name="password">
                                <input id="password_confirmation" class="form-control" type="password" placeholder="Nhập lại mật khẩu" name="re_password">
                                <input type="text" class="form-control" name="phone" placeholder="Số điện thoại">
                                <input type="text" class="form-control" name="fullname" placeholder="Họ và tên">

                                <input type="date" class="form-control" name="birth">
                                <input type="text" class="form-control" name="address" placeholder="Địa chỉ">
                                <input class="btn btn-default btn-register" type="submit" value="Đăng ký" name="commit">
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="forgot login-footer">
                            <span>Bạn chưa có tài khoản?
                                 <a href="javascript: showRegisterForm();">Tạo ngay!</a>
                            </span>
                        </div>
                        <div class="forgot register-footer" style="display:none">
                             <span>Đã có tài khoản?</span>
                             <a href="javascript: showLoginForm();">Đăng nhập.</a>
                        </div>
                    </div>
                  </div>
              </div>
          </div>





<!-- End login/register Modal-->
<!-- Js Plugins -->
<script src="{{asset('public/frontend/js/multistep.js')}}"></script>
<script src="{{asset('public/frontend/js/bootstrap.min.js')}}"></script>
<script src="{{asset('public/frontend/js/player.js')}}"></script>
<script src="{{asset('public/frontend/js/jquery.nice-select.min.js')}}"></script>
<script src="{{asset('public/frontend/js/mixitup.min.js')}}"></script>
<script src="{{asset('public/frontend/js/jquery.slicknav.js')}}"></script>
<script src="{{asset('public/frontend/js/owl.carousel.min.js')}}"></script>
<script src="{{asset('public/frontend/js/main.js')}}"></script>
<script src="{{asset('public/frontend/js/login-register.js')}}"></script>

<!-- Location Cinema Modal -->    
<script type="text/javascript">
$( "#locationModal" ).click(function() {
    swal({  title:'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1958.9182267735507!2d106.83360608582798!3d10.900030999160187!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDU0JzAwLjEiTiAxMDbCsDUwJzAzLjYiRQ!5e0!3m2!1svi!2s!4v1616490481837!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>'});

});

</script>

<!-- End LCM -->

<!-- Load Facebook SDK for JavaScript -->
      <div id="fb-root"></div>
      <script>
        window.fbAsyncInit = function() {
          FB.init({
            xfbml            : true,
            version          : 'v10.0'
          });
        };

        (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));</script>

      <!-- Your Chat Plugin code -->
      <div class="fb-customerchat"
        attribution="setup_tool"
        page_id="101335638730777">
      </div>

@include('sweetalert::alert', ['cdn' => "https://cdn.jsdelivr.net/npm/sweetalert2@9"])
</body>

</html>

