@extends('layout')
@section('content')
<?php if (Auth::guard('customers')->check()): ?>
<div class="container">
<div class="row gutters">
	<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
		<div class="card h-100">
			<div class="card-body" style="padding-top: 100%">
				<div class="account-settings" >
										<div class="user-profile">
						<h5 class="user-name">Xin chào ,{{Auth::guard('customers')->user()->customer_name}}</h5>	
										
						
						<?php if (Auth::guard('customers')->user()->customer_avatar): ?>
							<img class="image rounded-circle" src="{{asset('storage/app/public/'.Auth::guard('customers')->user()->customer_avatar)}}" alt="profile_image" style="width: 100px;height: 80px; padding: 10px; margin: 0px; ">
						<?php else: ?>
							<img class="image rounded-circle" src="{{asset('storage/app/public/customer/March2021/defaultuser.png')}}" alt="profile_image" style="width: 100px;height: 80px; padding: 10px; margin: 0px; ">
						<?php endif ?>
						<!-- <h6 class="user-email">yuki@Maxwell.com</h6> -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
		<div class="card h-100">
			<div class="card-body">
				<div class="row gutters">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<h6 class="mb-3 text-primary">Thông tin tài khoản</h6>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="fullName">Họ và tên</label>
							<input type="text" class="form-control" id="fullName" readonly placeholder="Enter full name" value="{{Auth::guard('customers')->user()->customer_name}}">
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="eMail">Email</label>
							<input type="email" class="form-control" id="eMail" readonly placeholder="Enter email ID" value="{{Auth::guard('customers')->user()->email}}">
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="phone">Điện thoại</label>
							<input type="text" class="form-control" id="phone" readonly placeholder="Enter phone number" value="{{Auth::guard('customers')->user()->customer_phone}}">
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="website">Địa chỉ</label>
							<input type="url" class="form-control" id="website" readonly placeholder="Website url" value="{{Auth::guard('customers')->user()->customer_address}}">
						</div>
					</div>
				</div>
				<div class="row gutters">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<h6 class="mb-3 text-primary">Lịch sử đặt vé</h6>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="Street">Phim</label>
							<input type="name" class="form-control" id="Street" readonly="">
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="ciTy">Ngày chiếu</label>
							<input type="name" class="form-control" id="ciTy" readonly="">
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
						<div class="form-group">
							<label for="sTate">Chỗ ngồi</label>
							<input type="text" class="form-control" id="sTate" readonly="">
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12" >
						<div class="form-group">
							<label for="zIp"></label>
							<input type="text" class="form-control" id="zIp" >
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
</div>
                        	<?php else: ?>
                        		<div class="container">
                        			                            <div class="hero__text">

                                <h2>&nbsp;</h2>
                                <p>&nbsp;</p>
                                <a href="#"><span>Xem chi tiết</span> <i class="fa fa-angle-right"></i></a>
                            </div>

                        		</div>
                        	<?php endif ?>

@endsection