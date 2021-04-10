@extends('layout')
@section('content')

<div class="trending__product">
    <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8">
            <div class="section-title">
                <h4>Tìm kiếm</h4>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="btn__all">
                <a href="#" class="primary-btn">Đã tìm thấy {{count($film)}} <span class="arrow_right"></span></a>
            </div>
        </div>
    </div>



    <div class="row"> 
        <?php foreach ($film as $key => $phim): ?> 
            <div
    class="col-lg-4 col-md-6 col-sm-6"> 
    <div class="product__item"> 
                <div class="product__item__pic" style="
                background-image: url('{{Voyager::Image($phim->picture)}}'); 
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-position: top center;">
                    <div class="ep">Đánh giá {{$phim->rate}} / 10</div>
                    <div class="comment"><i class="fa fa-comments"></i> 11</div>
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

@endsection