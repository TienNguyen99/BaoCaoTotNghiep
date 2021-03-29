@extends('layout')
@section('content')

    <div id="preloder">
        <div class="loader"></div>
    </div>
<?php foreach ($chitiet_film as $key => $value): ?>
        <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="{{URL::to('/trang-chu')}}"><i class="fa fa-home"></i>Mua vé</a>
                        <a href="#">Categories</a>
                        <span>{{$value->namet}}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>  
  <section class="anime-details spad">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="anime__details__pic set-bg" >
                            <img src="{{asset('storage/app/public/'.$value->picture)}}" width="100%" height="100%">
                                       
                            <div class="comment"><i class="fa fa-comments"></i> 11</div>
                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <h3>{{$value->namef}}</h3>
                                <span>{{$value-> director}}</span>
                                                 <div class="anime__details__rating">
                                <!-- <div class="rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star-half-o"></i></a>
                                </div> -->
                                
                            </div>
                            </div>

                            <p>{{$value -> description}}</p>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            
                                            <li><span>Diễn viên:</span> {{$value-> actor}}</li>
                                            <li><span>Date aired:</span> {{$value->created_at}}</li>
                                            <li><span>Tình trạng:</span> {{$value->status}}</li>
                                            <li><span>Thể loại:</span> {{$value ->namet}}</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <!-- <li><span>Scores:</span> 7.31 / 1,515</li> -->
                                            <li><span>Đánh giá:</span> {{$value ->rate}} Sao</li>
                                            <li><span>Thời lượng:</span> {{$value -> duration}}</li>
                                            
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="anime__details__btn">
                                <a href="#trailerModal" class="follow-btn" data-toggle="modal" data-src="https://www.youtube.com/embed/Jfrjeg26Cwk" ><i class="fa fa-heart-o"></i> Trailer</a>
                                <a href="#" class="watch-btn" data-toggle="modal" data-target="#bookingModal"><span>Đặt vé</span> <i
                                    class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="anime__details__review">
                            <div class="section-title">
                                <h5>Reviews</h5>
                            </div>
                            <?php foreach ($feedbacks as $key => $feed): ?>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="{{Voyager::Image($feed->avatar)}}" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>{{$feed->fullname}} - <span>{{Carbon\Carbon::parse($feed->created_at)->diffForHumans()}}</span></h6>
                                    <p>{{$feed->comment}}</p>
                                </div>
                            </div>    
                            <?php endforeach ?>
                            

                        </div>
                        <div class="anime__details__form">
                            <div class="section-title">
                                <h5>Bình luận</h5>
                            </div>
                            <?php if (Auth::guard('customers')->check()): ?>
                                <form action="{{route('custom.comment')}}" method="post">
                                @csrf
                                <input type="hidden" name="film_id" value="{{$value->film_idF}}">
                                <input type="hidden" name="cus_name" value="{{Auth::guard('customers')->user()->customer_name}}" >
                                <input type="hidden" name="cus_avatar" value="{{Auth::guard('customers')->user()->customer_avatar}}">
                                <input type="hidden" name="cus_status" value="1">
                                <textarea placeholder="Your Comment" name="cus_comment"></textarea>
                                <button type="submit"><i class="fa fa-location-arrow"></i> Review</button>
                            </form>  
                            <?php else: ?>
                                <div>
                                    <textarea readonly style= " text-align: center;background-color: white;width: 100%; readonly"> Vui lòng đăng nhập để được bình luận</textarea>
                                </div>
                            <?php endif ?>

                        </div>
                    </div>
         
                </div>
            </div>
            
        </section>
        <!-- Anime Section End -->
<!-- Modal -->
<div class="modal fade" id="bookingModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding-top: 25%">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="bg-white p-2 px-3 border-bottom">
                <div class="row">
                    <div class="col-md-12">
                        <div class="d-flex justify-content-between align-items-center">   
                                <button class="d-flex flex-row align-items-center">
                                    <h2 class="date-o">24</h2>
                                    <div class="d-flex flex-column ml-2 date"> <span>July 20</span> <span>Friday</span> </div>
                                </button>
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="complete p-3 mt-2">
                
                <div class="text-center mt-4 mb-4"> <button class="btn btn-danger booking">Complete Booking</button> </div>
            </div>
        </div>
    </div>
</div>
<!-- End booking modal-->
<div class="modal fade" id="trailerModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding-top: 25%">
  <div class="modal-dialog" role="document" style="      max-width: 800px;margin: 30px auto;">
    <div class="modal-content">

      
      <div class="modal-body" style="  position:relative;
  padding:0px;">

        <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="  position:absolute;
  right:-30px;
  top:0;
  z-index:999;
  font-size:2rem;
  font-weight: normal;
  color:#fff;
  opacity:1;">
          <span aria-hidden="true">&times;</span>
        </button>        
        <!-- 16:9 aspect ratio -->
<div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item" src="{{$value->youtube}}" id="video"  allowscriptaccess="always" allow="autoplay"></iframe>
</div>
      </div>

    </div>
  </div>
</div> 
  <!--Booking Modal -->
  <!-- Modal -->

<!--End Booking modal -->  
  
  <!--Script Trailer Modal -->
<script type="text/javascript">
    $(document).ready(function() {
// Gets the video src from the data-src on each button
var $videoSrc;  
$('.video-btn').click(function() {
    $videoSrc = $(this).data( "src" );
});
console.log($videoSrc);
// when the modal is opened autoplay it  
$('#trailerModal').on('shown.bs.modal', function (e) {  
// set the video src to autoplay and not to show related video. Youtube related video is like a box of chocolates... you never know what you're gonna get
$("#video").attr('src',$videoSrc + "?autoplay=1&amp;modestbranding=1&amp;showinfo=0" ); 
})
// stop playing the youtube video when I close the modal
$('#trailerModal').on('hide.bs.modal', function (e) {
    // a poor man's stop video
    $("#video").attr('src',$videoSrc); 
}) 
});
</script>
 <!-- End Script Traler -->


<?php endforeach ?>
    <!-- Header Section Begin -->

    <!-- Header End -->

    <!-- Breadcrumb Begin -->

    <!-- Breadcrumb End -->

    <!-- Anime Section Begin -->
  
@endsection
        <!-- Footer Section Begin -->

        <!-- Search model end -->

