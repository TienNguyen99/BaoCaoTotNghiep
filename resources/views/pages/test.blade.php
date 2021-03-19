





<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
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
    <!-- <link rel="stylesheet" href="{{asset('public/frontend/css/style.css')}}" type="text/css"> -->
    <link rel="stylesheet" href="{{asset('public/frontend/css/login-register.css')}}" type="text/css">
    
    <script src="{{asset('public/frontend/js/jquery-3.3.1.min.js')}}"></script>
</head>
<body>
                                <form method="post" html="{:multipart=>true}" data-remote="true" action="{{ route('custom.dangkytest')}}" accept-charset="UTF-8" >
                                    <input type="hidden" name="_token" value="{{csrf_token()}}">
                                    <?php if (count(array($errors))>0): ?>
                                        
                                            <?php foreach ($errors->all() as $err): ?>
                                                {{$err}}
                                            <?php endforeach ?>


                                        
                                    <?php endif ?>
                                <?php if (Session::has('success')): ?>
                                    <div class="alert alert-success">{{Session::get('success')}}</div>
                                <?php endif ?>
                                <?php foreach ($Phims as $key => $value): ?>
<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
  <li><a data-toggle="tab" href="#menu1">Menu 1</a></li>
  <li><a data-toggle="tab" href="#menu2">Menu 2</a></li>
</ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
    <h3>HOME</h3>
    <p>Some content.</p>
  </div>
  <div id="menu1" class="tab-pane fade">
    <h3>Menu 1</h3>
    <p>Some content in menu 1.</p>
  </div>
  <div id="menu2" class="tab-pane fade">
    <h3>Menu 2</h3>
    <p>Some content in menu 2.</p>
  </div>
</div>

                                <?php endforeach ?>
                                  


 								
                                
                                <input class="btn btn-default btn-register" type="submit" value="Đăng ký" name="commit">
                                </form>
                                <script type="text/javascript">
                                	

                                </script>
@include('sweetalert::alert', ['cdn' => "https://cdn.jsdelivr.net/npm/sweetalert2@9"])

<script src="{{asset('public/frontend/js/bootstrap.min.js')}}"></script>
<script src="{{asset('public/frontend/js/player.js')}}"></script>
<script src="{{asset('public/frontend/js/jquery.nice-select.min.js')}}"></script>
<script src="{{asset('public/frontend/js/mixitup.min.js')}}"></script>
<script src="{{asset('public/frontend/js/jquery.slicknav.js')}}"></script>
<script src="{{asset('public/frontend/js/owl.carousel.min.js')}}"></script>
<script src="{{asset('public/frontend/js/main.js')}}"></script>
<script src="{{asset('public/frontend/js/login-register.js')}}"></script>


</body>
</html>
