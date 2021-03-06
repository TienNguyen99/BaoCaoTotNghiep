


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
    <!-- <link href="{{asset('public/frontend/css/stylebooking.css')}}" rel="stylesheet" type="text/css" media="all" /> -->

</head>

<body>
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


    <!-- Hero Section End -->
    
 <section class="product spad">
        <div class="container">
            


            <div class="row">
<div class="col-lg-12">
                    <div class="product__page__content">
                        <div class="product__page__title">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-6">
                                    <div class="section-title">
                                        <h4>Tất cả Phim</h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="product__page__filter">
                                        <p>Sắp xếp:</p>
                                        <select name="sortBy">
                                            <option value="1">A-Z</option>
                                            <option value="2">1-10</option>
                                            <option value="3">10-50</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                            <div class="row">
                                <?php foreach ($phimhots as $key => $phim): ?>
                            <div class="col-sm-3">

                                <div class="product__item">
                <div class="product__item__pic" style="
                background-image: url('{{Voyager::Image($phim->picture)}}'); 
                background-repeat: no-repeat;
                background-size: cover;
                background-position: top center;">
                    <div class="ep">Đánh giá {{$phim->rate}} / 5</div>
                    <div class="comment"><i class="fa fa-comments"></i> </div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
                <div class="product__item__text">
                    <ul>
                        <li>{{$phim-> namet}}</li>
                        
                    </ul>
                    <h5><a href="{{URL::to('/detail/'.$phim->filid)}}">{{$phim->namef}}</a></h5>
                </div>
                                </div>

    

                            </div>
<?php endforeach ?>
                        </div>
                    </div>
                    <div class="product__pagination">
                        <a href="#" class="current-page">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#"><i class="fa fa-angle-double-right"></i></a>
                    </div> 

                </div>

</div>
</div>
</section>  
    
    <!-- Product Section Begin -->
   
<!-- Product Section End -->

<!-- Footer Section Begin -->
<footer class="footer">
    <div class="page-up">
        <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <!-- <div class="footer__logo">
                    <a href="./index.html"><img src="img/logo.png" alt=""></a>
                </div> -->
            </div>
            <div class="col-lg-6">
                <div class="footer__nav">
                    <ul>
                        <li class="active"><a href="{{URL::to('/trang-chu')}}">TRANG CHỦ</a></li>
                        <li><a href="#">DANH SÁCH PHIM</a></li>
                        <li><a href="#">BLOG</a></li>
                        <li><a href="#">LIÊN HỆ</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                  Copyright &copy;<script>document.write(new Date().getFullYear());</script> Website đồ án Đặt vé xem phim Binh An Cinema <i class="fa fa-heart" aria-hidden="true"></i> by <a href="javascript:" target="_blank">Nguyễn Minh Tiến D17PM03</a>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>

              </div>
          </div>
      </div>
  </footer>
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
<script src="{{asset('public/frontend/js/jquery-3.3.1.min.js')}}"></script>
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

