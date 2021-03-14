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
                                            <li><span>Date aired:</span> Oct 02, 2019 to ?</li>
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
                                <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i> Trailer</a>
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

<?php endforeach ?>
    <!-- Header Section Begin -->

    <!-- Header End -->

    <!-- Breadcrumb Begin -->

    <!-- Breadcrumb End -->

    <!-- Anime Section Begin -->
  
@endsection
        <!-- Footer Section Begin -->

        <!-- Search model end -->

