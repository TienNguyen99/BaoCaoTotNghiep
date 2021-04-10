@extends('layout')

@section('content')

<div class="trending__product">
    <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8">
            <div class="section-title">
                <h4>PHIM ĐANG CHIẾU RẠP</h4>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="btn__all">
                <a href="{{URL::to('/tat-ca-phim')}}" class="primary-btn">Xem tất cả <span class="arrow_right"></span></a>
            </div>
        </div>
    </div>



    <div class="row"> 
        <?php foreach ($Phims as $key => $phim): ?> 
            <div
    class="col-lg-4 col-md-6 col-sm-6"> 
    <div class="product__item"> 
                <div class="product__item__pic" style="
                background-image: url('{{Voyager::Image($phim->picture)}}'); 
                background-repeat: no-repeat;
                background-size: 100% 100%;
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




<div class="popular__product">
    <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8">
            <div class="section-title">
                <h4>PHIM SẮP CHIẾU</h4>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="btn__all">
                <a href="{{URL::to('/tat-ca-phim')}}" class="primary-btn">Xem tất cả <span class="arrow_right"></span></a>
            </div>
        </div>
    </div>
    <div class="row">
        <?php foreach ($Phimsupcoming as $key => $phimup): ?>
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
                <div class="product__item__pic" style="
                background-image: url('{{Voyager::Image($phimup->picture)}}'); 
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-position: top center;">
                    <div class="ep">Đánh giá {{$phimup->rate}} / 5</div>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
                <div class="product__item__text">
                    <ul>
                        <li>{{$phimup->namet}}</li>
                        
                    </ul>
                    <h5><a href="{{URL::to('/detail/'.$phimup->filid)}}">{{$phimup->namef}}</a></h5>
                </div>
            </div>
        </div>            
        <?php endforeach ?>


    </div>
</div>
<!-- <div class="recent__product">
    <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8">
            <div class="section-title">
                <h4>PHIM NỔI BẬT</h4>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="btn__all">
                <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
                <div class="product__item__pic set-bg" data-setbg="img/recent/recent-1.jpg">
                    <div class="ep">18 / 18</div>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
                <div class="product__item__text">
                    <ul>
                        <li>Active</li>
                        <li>Movie</li>
                    </ul>
                    <h5><a href="#">Great Teacher Onizuka</a></h5>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
                <div class="product__item__pic set-bg" data-setbg="img/recent/recent-2.jpg">
                    <div class="ep">18 / 18</div>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
                <div class="product__item__text">
                    <ul>
                        <li>Active</li>
                        <li>Movie</li>
                    </ul>
                    <h5><a href="#">Fate/stay night Movie: Heaven's Feel - II. Lost</a></h5>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
                <div class="product__item__pic set-bg" data-setbg="img/recent/recent-3.jpg">
                    <div class="ep">18 / 18</div>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
                <div class="product__item__text">
                    <ul>
                        <li>Active</li>
                        <li>Movie</li>
                    </ul>
                    <h5><a href="#">Mushishi Zoku Shou: Suzu no Shizuku</a></h5>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
                <div class="product__item__pic set-bg" data-setbg="img/recent/recent-4.jpg">
                    <div class="ep">18 / 18</div>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
                <div class="product__item__text">
                    <ul>
                        <li>Active</li>
                        <li>Movie</li>
                    </ul>
                    <h5><a href="#">Fate/Zero 2nd Season</a></h5>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
                <div class="product__item__pic set-bg" data-setbg="img/recent/recent-5.jpg">
                    <div class="ep">18 / 18</div>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
                <div class="product__item__text">
                    <ul>
                        <li>Active</li>
                        <li>Movie</li>
                    </ul>
                    <h5><a href="#">Kizumonogatari II: Nekket su-hen</a></h5>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
                <div class="product__item__pic set-bg" data-setbg="img/recent/recent-6.jpg">
                    <div class="ep">18 / 18</div>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
                <div class="product__item__text">
                    <ul>
                        <li>Active</li>
                        <li>Movie</li>
                    </ul>
                    <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="live__product">
    <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8">
            <div class="section-title">
                <h4>Live Action</h4>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="btn__all">
                <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
                <div class="product__item__pic set-bg" data-setbg="img/live/live-1.jpg">
                    <div class="ep">18 / 18</div>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
                <div class="product__item__text">
                    <ul>
                        <li>Active</li>
                        <li>Movie</li>
                    </ul>
                    <h5><a href="#">Shouwa Genroku Rakugo Shinjuu</a></h5>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
                <div class="product__item__pic set-bg" data-setbg="img/live/live-2.jpg">
                    <div class="ep">18 / 18</div>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
                <div class="product__item__text">
                    <ul>
                        <li>Active</li>
                        <li>Movie</li>
                    </ul>
                    <h5><a href="#">Mushishi Zoku Shou 2nd Season</a></h5>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
                <div class="product__item__pic set-bg" data-setbg="img/live/live-3.jpg">
                    <div class="ep">18 / 18</div>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
                <div class="product__item__text">
                    <ul>
                        <li>Active</li>
                        <li>Movie</li>
                    </ul>
                    <h5><a href="#">Mushishi Zoku Shou: Suzu no Shizuku</a></h5>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
                <div class="product__item__pic set-bg" data-setbg="img/live/live-4.jpg">
                    <div class="ep">18 / 18</div>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
                <div class="product__item__text">
                    <ul>
                        <li>Active</li>
                        <li>Movie</li>
                    </ul>
                    <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
                <div class="product__item__pic set-bg" data-setbg="img/live/live-5.jpg">
                    <div class="ep">18 / 18</div>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
                <div class="product__item__text">
                    <ul>
                        <li>Active</li>
                        <li>Movie</li>
                    </ul>
                    <h5><a href="#">Fate/stay night Movie: Heaven's Feel - II. Lost</a></h5>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
                <div class="product__item__pic set-bg" data-setbg="img/live/live-6.jpg">
                    <div class="ep">18 / 18</div>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                </div>
                <div class="product__item__text">
                    <ul>
                        <li>Active</li>
                        <li>Movie</li>
                    </ul>
                    <h5><a href="#">Kizumonogatari II: Nekketsu-hen</a></h5>
                </div>
            </div>
        </div>
    </div>
</div> -->

@endsection