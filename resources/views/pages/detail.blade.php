@extends('layout')
@section('content')


<?php foreach ($chitiet_film as $key => $value): ?>
    
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
                                <div class="rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star-half-o"></i></a>
                                </div>
                                
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
                                            <li><span>Chất lượng:</span> HD</li>
                                            <li><span>Lượt xem:</span> {{$value->count_view}}</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="anime__details__btn">
                                <a href="#trailerModal" class="follow-btn" data-toggle="modal" data-src="https://www.youtube.com/embed/Jfrjeg26Cwk" ><i class="fa fa-heart-o"></i> Trailer</a>
                                <a href="#" class="watch-btn"><span>Đặt vé</span> <i
                                    class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <div class="anime__details__review">
                            <div class="section-title">
                                <h5>Reviews</h5>
                            </div>
                            <?php foreach ($chitiet_film as $key => $chitiet): ?>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="{{Voyager::Image($chitiet->avatar)}}" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>{{$chitiet->fullname}} - <span>{{$chitiet->created_at}}</span></h6>
                                    <p>{{$chitiet->comment}}</p>
                                </div>
                            </div>    
                            <?php endforeach ?>
                            

                        </div>
                        <div class="anime__details__form">
                            <div class="section-title">
                                <h5>Your Comment</h5>
                            </div>
                            <form action="#">
                                <textarea placeholder="Your Comment"></textarea>
                                <button type="submit"><i class="fa fa-location-arrow"></i> Review</button>
                            </form>
                        </div>
                    </div>
         
                </div>
            </div>
            
        </section>
        <!-- Anime Section End -->
<!-- Modal -->
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
    
    


  
  
// document ready  
});




</script>



<?php endforeach ?>
    <!-- Header Section Begin -->

    <!-- Header End -->

    <!-- Breadcrumb Begin -->

    <!-- Breadcrumb End -->

    <!-- Anime Section Begin -->
  
@endsection
        <!-- Footer Section Begin -->

        <!-- Search model end -->

