<!DOCTYPE html>
<html lang="en">

<head>
<title>Danh sách tour trong nước</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="user/css/open-iconic-bootstrap.min.css">

<link rel="stylesheet" href="user/css/bootstrap.min.css">
<link rel="stylesheet" href="user/css/magnific-popup.css">
<link rel="stylesheet" href="user/css/jquery-ui.css">
<link rel="stylesheet" href="user/css/owl.carousel.min.css">
<link rel="stylesheet" href="user/css/owl.theme.default.min.css">
<link rel="stylesheet" href="user/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="user/css/mediaelementplayer.css">
<link rel="stylesheet" href="user/css/animate.css">
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="user/css/fl-bigmug-line.css">


<link rel="stylesheet" href="user/css/aos.css">

<link rel="stylesheet" href="user/css/style.css">

</head>

<body>



	<div class="site-wrap">
		<div class="site-mobile-menu">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>
		<!-- .site-mobile-menu -->
	</div>
	<div class="site-navbar">
		<div class="container py-1">
			<div class="row align-items-center">
				<div class="col-8 col-md-8 col-lg-4">
					<h1 class="">
						<a href="index.jsp" class="h5 text-uppercase text-black"><strong>HomeTourist<span
								class="text-danger">.</span></strong></a>
					</h1>
				</div>
				<div class="col-4 col-md-4 col-lg-8">
					<nav class="site-navigation text-right text-md-right"
						role="navigation">

						<div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3">
							<a href="#" class="site-menu-toggle js-menu-toggle text-black"><span
								class="icon-menu h3"></span></a>
						</div>

						<ul class="site-menu js-clone-nav d-none d-lg-block"
							style="margin-left: -200px">
							<li><a href="index.jsp">TRANG CHỦ</a></li>
							<li class="active"><a href="properties.jsp">TOUR TRONG
									NƯỚC</a></li>
							<li><a href="internationaltour.jsp">TOUR NƯỚC NGOÀI</a></li>
							<li><a href="./Login/login.jsp">ĐĂNG NHẬP</a></li>

							<li><a href="booking.jsp"><button
										class="btn btn-deep-orange " type="button"
										style="width: 120px; font-size: 15px; padding-left: 8px; color: #ffffff; background: #f89d13;">
										<i class="bookingNow"></i> ĐẶT NGAY
									</button></a></li>
						</ul>
					</nav>
				</div>

			</div>
		</div>
	</div>
	</div>


	<div class="slide-one-item home-slider owl-carousel tour-image">

		<div class="site-blocks-cover domestic-tour"
			style="background-image: url(user/images/domesticbannertour.jpg); min-height: 250px; height: calc(100vh - 45vh);"
			data-aos="fade" data-stellar-background-ratio="0.5"></div>
	</div>
	<div class="location-from">
		<form action="#" class="search-destination">
			<div class="row">
				<div class="col-md align-items-end">
					<div class="form-group">
						<label for="#">Tìm tour</label>
						<div class="form-field">
							<div class="icon">
								<span class="icon-map-marker"></span>
							</div>
							<input type="text" class="form-control"
								placeholder=" Nhập tìm kiếm tour">
						</div>
					</div>
				</div>
				<div class="col-md align-items-end">
					<div class="form-group">
						<label for="#">Từ ngày </label>
						<div class="form-field">
							<div class="icon">
								<span><img src="images/calender.png" width="18px"></span>
							</div>
							<input type="text" class="form-control checkin_date"
								placeholder=" Chọn ngày đi">
						</div>
					</div>
				</div>
				<div class="col-md align-items-end">
					<div class="form-group">
						<label for="#">Đến ngày</label>
						<div class="form-field">
							<div class="icon">
								<span><img src="images/calender.png" width="18px"></span>
							</div>
							<input type="text" class="form-control checkout_date"
								placeholder=" Chọn ngày đến">
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="#">Chọn tour</label>
						<div class="form-field">
							<i class="icon icon-arrow-down3"></i> <select name="people"
								id="people" class="form-control">
								<option value="#">Trong nước</option>
								<option value="#">Ngoài nước</option>
								<option value="#">Tất cả</option>
							</select>
						</div>
					</div>
				</div>
				<div class="col-md align-self-end">
					<div class="form-group">
						<div class="form-field">
							<input type="submit" value="Tìm kiếm"
								class="form-control-date btn btn-primary">
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>



	<div class="site-section" style="margin-bottom: 70px;">
		<div class="container">
			<div class="row mb-5">
				<div class="col-12">
					<div class="site-section-title">
						<h3 style="margin-top: 20px">Tour khuyến mãi</h3>
					</div>
				</div>
			</div>
			<div class="card-salesoff">
				<div class="card sales" style="width: 400px; height: 500px">

					<img class="card-img-top" height="250px" src="images/image8.jpg"
						alt="Card image">
					<div class="sales-text">
						<p>Sales 30%</p>
					</div>

					<div class="card-block px-3">
						<h4 class="card-title">DU LỊCH ĐÀ NẴNG</h4>
						<h6 class="card-text-city">HÀ NỘI - ĐÀ NẴNG</h6>
						<p class="card-text">
							Thời gian: 4 ngày 3 đêm <br>Phương tiện : Hàng không Việt
							Nam Airlines
						</p>
						<input type="submit" value="Giá từ 3,739,000đ"
							class="form-control-date btn btn-primary">
					</div>
				</div>
				<div class="card sales2" style="width: 400px; height: 500px">
					<img class="card-img-top" height="250px" src="images/image6.jpg"
						alt="Card image">
					<div class="sales-text">
						<p>Sales 30%</p>
					</div>

					<div class="card-block px-3">
						<h4 class="card-title">DU LỊCH HUẾ</h4>
						<h6 class="card-text-city">BÌNH ĐỊNH - HUẾ</h6>
						<p class="card-text">
							Thời gian: 4 ngày 3 đêm <br>Phương tiện : Hàng không Việt
							Nam Airlines
						</p>
						<input type="submit" value="Giá từ 3,739,000đ"
							class="form-control-date btn btn-primary">
					</div>
				</div>

				<div class="card sales2" style="width: 400px; height: 500px">
					<img class="card-img-top" height="250px" src="images/image9.jpg"
						alt="Card image">
					<div class="sales-text">
						<p>Sales 30%</p>
					</div>

					<div class="card-block px-3">
						<h4 class="card-title">DU LỊCH HUẾ</h4>
						<h6 class="card-text-city">BÌNH ĐỊNH - HUẾ</h6>
						<p class="card-text">
							Thời gian: 4 ngày 3 đêm <br>Phương tiện : Hàng không Việt
							Nam Airlines
						</p>
						<input type="submit" value="Giá từ 3,739,000đ"
							class="form-control-date btn btn-primary">
					</div>
				</div>


			</div>
			<div class="card-salesoff">
				<div class="card sales" style="width: 400px; height: 500px">
					<img class="card-img-top" height="250px" src="images/image11.jpg"
						alt="Card image">
					<div class="sales-text">
						<p>Sales 30%</p>
					</div>

					<div class="card-block px-3">
						<h4 class="card-title">DU LỊCH NHA TRANG</h4>
						<h6 class="card-text-city">PHÚ YÊN - NHA TRANG</h6>
						<p class="card-text">
							Thời gian: 4 ngày 3 đêm <br>Phương tiện : Hàng không Việt
							Nam Airlines
						</p>
						<input type="submit" value="Giá từ 3,739,000đ"
							class="form-control-date btn btn-primary">
					</div>
				</div>
				<div class="card sales2" style="width: 400px; height: 500px">
					<img class="card-img-top" height="250px" src="images/image12.jpg"
						alt="Card image">
					<div class="sales-text">
						<p>Sales 30%</p>
					</div>

					<div class="card-block px-3">
						<h4 class="card-title">DU LỊCH VŨNG TÀU</h4>
						<h6 class="card-text-city">PHÚ YÊN - VŨNG TÀU</h6>
						<p class="card-text">
							Thời gian: 4 ngày 3 đêm <br>Phương tiện : Hàng không Việt
							Nam Airlines
						</p>
						<input type="submit" value="Giá từ 3,739,000đ"
							class="form-control-date btn btn-primary">
					</div>
				</div>
				<div class="card sales2" style="width: 400px; height: 500px">
					<img class="card-img-top" height="250px" src="images/image3.jpg"
						alt="Card image">
					<div class="sales-text">
						<p>Sales 30%</p>
					</div>

					<div class="card-block px-3">
						<h4 class="card-title">DU LỊCH QUẢNG NAM</h4>
						<h6 class="card-text-city">KHÁNH HÒA - QUẢNG NAM</h6>
						<p class="card-text">
							Thời gian: 4 ngày 3 đêm <br>Phương tiện : Hàng không Việt
							Nam Airlines
						</p>
						<input type="submit" value="Giá từ 3,739,000đ"
							class="form-control-date btn btn-primary">
					</div>
				</div>

			</div>

			<div class="row mb-5">
				<div class="col-12">
					<div class="site-section-title">
						<h3 style="margin-top: 20px">Tour yêu thích</h3>
					</div>
				</div>
			</div>

			<div class="card">
				<div class="row ">
					<div class="col-md-4">
						<img src="images/image9.jpg" class="w-100">
					</div>

					<div class="row">
						<div class=".col-12 .col-md-8">
							<div class="card-block px-3">
								<h4 class="card-title">DU LỊCH ĐÀ NẴNG</h4>
								<h6 class="card-text-city">HÀ NỘI - ĐÀ NẴNG</h6>
								<p class="card-text">
									Thời gian: 4 ngày 3 đêm <br>Phương tiện : Hàng không Việt
									Nam Airlines <br>- Tham quan Đà Nẵng, Rừng dừa Bảy Mẫu,
									phố cổ Hội An
								</p>
							</div>
						</div>
						<div class=".col-6 .col-md-4">
							<div class="col-md align-self-end">
								<div class="form-group">
									<div class="form-field">
										<input type="submit" value="Giá từ 3,739,000đ"
											class="form-control-date btn btn-primary">
									</div>
									<div class="form-group">
										<div class="form-field">
											<div class="row" style="text-align: center;">
												<span style="margin-left: 50px;" class="icon-calendar"></span>
												<p
													style="text-decoration: underline; margin-left: 10px; margin-top: -5px;">Xem
													thêm</p>
											</div>
											<input type="text" class="form-control"
												placeholder=" 27/10/2019"
												style="pointer-events: none; text-align: center;"> <input
												type="text" class="form-control" placeholder=" 03/11/2019"
												style="pointer-events: none; text-align: center; margin-top: 5px;">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="card">
				<div class="row ">
					<div class="col-md-4">
						<img src="images/image3.jpg" class="w-100">
					</div>

					<div class="row">
						<div class=".col-12 .col-md-8">
							<div class="card-block px-3">
								<h4 class="card-title">DU LỊCH ĐÀ NẴNG</h4>
								<h6 class="card-text-city">HÀ NỘI - ĐÀ NẴNG</h6>
								<p class="card-text">
									Thời gian: 4 ngày 3 đêm <br>Phương tiện : Hàng không Việt
									Nam Airlines <br>- Tham quan Đà Nẵng, Rừng dừa Bảy Mẫu,
									phố cổ Hội An
								</p>
							</div>
						</div>
						<div class=".col-6 .col-md-4">
							<div class="col-md align-self-end">
								<div class="form-group">
									<div class="form-field">
										<input type="submit" value="Giá từ 3,739,000đ"
											class="form-control-date btn btn-primary">
									</div>
									<div class="form-group">
										<div class="form-field">
											<div class="row" style="text-align: center;">
												<span style="margin-left: 50px;" class="icon-calendar"></span>
												<p
													style="text-decoration: underline; margin-left: 10px; margin-top: -5px;">Xem
													thêm</p>
											</div>
											<input type="text" class="form-control"
												placeholder=" 27/10/2019"
												style="pointer-events: none; text-align: center;"> <input
												type="text" class="form-control" placeholder=" 03/11/2019"
												style="pointer-events: none; text-align: center; margin-top: 5px;">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="card">
				<div class="row ">
					<div class="col-md-4">
						<img src="images/image4.jpg" class="w-100">
					</div>

					<div class="row">
						<div class=".col-12 .col-md-8">
							<div class="card-block px-3">
								<h4 class="card-title">DU LỊCH NHA TRANG</h4>
								<h6 class="card-text-city">HÀ NỘI - ĐÀ NẴNG</h6>
								<p class="card-text">
									Thời gian: 4 ngày 3 đêm <br>Phương tiện : Hàng không Việt
									Nam Airlines <br>- Tham quan Đà Nẵng, Rừng dừa Bảy Mẫu,
									phố cổ Hội An
								</p>
							</div>
						</div>
						<div class=".col-6 .col-md-4">
							<div class="col-md align-self-end">
								<div class="form-group">
									<div class="form-field">
										<input type="submit" value="Giá từ 3,739,000đ"
											class="form-control-date btn btn-primary">
									</div>
									<div class="form-group">
										<div class="form-field">
											<div class="row" style="text-align: center;">
												<span style="margin-left: 50px;" class="icon-calendar"></span>
												<p
													style="text-decoration: underline; margin-left: 10px; margin-top: -5px;">Xem
													thêm</p>
											</div>
											<input type="text" class="form-control"
												placeholder=" 27/10/2019"
												style="pointer-events: none; text-align: center;"> <input
												type="text" class="form-control" placeholder=" 03/11/2019"
												style="pointer-events: none; text-align: center; margin-top: 5px;">
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="card">
				<div class="row ">
					<div class="col-md-4">
						<img src="images/image5.jpg" class="w-100">
					</div>

					<div class="row">
						<div class=".col-12 .col-md-8">
							<div class="card-block px-3">
								<h4 class="card-title">DU LỊCH PHÚ QUỐC</h4>
								<h6 class="card-text-city">HÀ NỘI - ĐÀ NẴNG</h6>
								<p class="card-text">
									Thời gian: 4 ngày 3 đêm <br>Phương tiện : Hàng không Việt
									Nam Airlines <br>- Tham quan Đà Nẵng, Rừng dừa Bảy Mẫu,
									phố cổ Hội An
								</p>
							</div>
						</div>
						<div class=".col-6 .col-md-4">
							<div class="col-md align-self-end">
								<div class="form-group">
									<div class="form-field">
										<input type="submit" value="Giá từ 3,739,000đ"
											class="form-control-date btn btn-primary">
									</div>
									<div class="form-group">
										<div class="form-field">
											<div class="row" style="text-align: center;">
												<span style="margin-left: 50px;" class="icon-calendar"></span>
												<p
													style="text-decoration: underline; margin-left: 10px; margin-top: -5px;">Xem
													thêm</p>
											</div>
											<input type="text" class="form-control"
												placeholder=" 27/10/2019"
												style="pointer-events: none; text-align: center;"> <input
												type="text" class="form-control" placeholder=" 03/11/2019"
												style="pointer-events: none; text-align: center; margin-top: 5px;">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="card">
				<div class="row ">
					<div class="col-md-4">
						<img src="images/image6.jpg" class="w-100">
					</div>

					<div class="row">
						<div class=".col-12 .col-md-8">
							<div class="card-block px-3">
								<h4 class="card-title">DU LỊCH HẠ LONG</h4>
								<h6 class="card-text-city">HÀ NỘI - ĐÀ NẴNG</h6>
								<p class="card-text">
									Thời gian: 4 ngày 3 đêm <br>Phương tiện : Hàng không Việt
									Nam Airlines <br>- Tham quan Đà Nẵng, Rừng dừa Bảy Mẫu,
									phố cổ Hội An
								</p>
							</div>
						</div>
						<div class=".col-6 .col-md-4">
							<div class="col-md align-self-end">
								<div class="form-group">
									<div class="form-field">
										<input type="submit" value="Giá từ 3,739,000đ"
											class="form-control-date btn btn-primary">
									</div>
									<div class="form-group">
										<div class="form-field">
											<div class="row" style="text-align: center;">
												<span style="margin-left: 50px;" class="icon-calendar"></span>
												<p
													style="text-decoration: underline; margin-left: 10px; margin-top: -5px;">Xem
													thêm</p>
											</div>
											<input type="text" class="form-control"
												placeholder=" 27/10/2019"
												style="pointer-events: none; text-align: center;"> <input
												type="text" class="form-control" placeholder=" 03/11/2019"
												style="pointer-events: none; text-align: center; margin-top: 5px;">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="card">
				<div class="row ">
					<div class="col-md-4">
						<img src="images/image7.jpg" class="w-100">
					</div>

					<div class="row">
						<div class=".col-12 .col-md-8">
							<div class="card-block px-3">
								<h4 class="card-title">DU LICH BA BỂ</h4>
								<h6 class="card-text-city">HÀ NỘI - ĐÀ NẴNG</h6>
								<p class="card-text">
									Thời gian: 4 ngày 3 đêm <br>Phương tiện : Hàng không Việt
									Nam Airlines <br>- Tham quan Đà Nẵng, Rừng dừa Bảy Mẫu,
									phố cổ Hội An
								</p>
							</div>
						</div>
						<div class=".col-6 .col-md-4">
							<div class="col-md align-self-end">
								<div class="form-group">
									<div class="form-field">
										<input type="submit" value="Giá từ 3,739,000đ"
											class="form-control-date btn btn-primary">
									</div>
									<div class="form-group">
										<div class="form-field">
											<div class="row" style="text-align: center;">
												<span style="margin-left: 50px;" class="icon-calendar"></span>
												<p
													style="text-decoration: underline; margin-left: 10px; margin-top: -5px;">Xem
													thêm</p>
											</div>
											<input type="text" class="form-control"
												placeholder=" 27/10/2019"
												style="pointer-events: none; text-align: center;"> <input
												type="text" class="form-control" placeholder=" 03/11/2019"
												style="pointer-events: none; text-align: center; margin-top: 5px;">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="card">
				<div class="row ">
					<div class="col-md-4">
						<img src="images/image8.jpg" class="w-100">
					</div>

					<div class="row">
						<div class=".col-12 .col-md-8">
							<div class="card-block px-3">
								<h4 class="card-title">DU LỊCH PHAN THIẾT - MŨI NÉ</h4>
								<h6 class="card-text-city">HÀ NỘI - ĐÀ NẴNG</h6>
								<p class="card-text">
									Thời gian: 4 ngày 3 đêm <br>Phương tiện : Hàng không Việt
									Nam Airlines <br>- Tham quan Đà Nẵng, Rừng dừa Bảy Mẫu,
									phố cổ Hội An
								</p>
							</div>
						</div>
						<div class=".col-6 .col-md-4">
							<div class="col-md align-self-end">
								<div class="form-group">
									<div class="form-field">
										<input type="submit" value="Giá từ 3,739,000đ"
											class="form-control-date btn btn-primary">
									</div>
									<div class="form-group">
										<div class="form-field">
											<div class="row" style="text-align: center;">
												<span style="margin-left: 50px;" class="icon-calendar"></span>
												<p
													style="text-decoration: underline; margin-left: 10px; margin-top: -5px;">Xem
													thêm</p>
											</div>
											<input type="text" class="form-control"
												placeholder=" 27/10/2019"
												style="pointer-events: none; text-align: center;"> <input
												type="text" class="form-control" placeholder=" 03/11/2019"
												style="pointer-events: none; text-align: center; margin-top: 5px;">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="card">
				<div class="row ">
					<div class="col-md-4">
						<img src="images/image9.jpg" class="w-100">
					</div>

					<div class="row">
						<div class=".col-12 .col-md-8">
							<div class="card-block px-3">
								<h4 class="card-title">DU LỊCH ĐÀ NẴNG</h4>
								<h6 class="card-text-city">HÀ NỘI - ĐÀ NẴNG</h6>
								<p class="card-text">
									Thời gian: 4 ngày 3 đêm <br>Phương tiện : Hàng không Việt
									Nam Airlines <br>- Tham quan Đà Nẵng, Rừng dừa Bảy Mẫu,
									phố cổ Hội An
								</p>
							</div>
						</div>
						<div class=".col-6 .col-md-4">
							<div class="col-md align-self-end">
								<div class="form-group">
									<div class="form-field">
										<input type="submit" value="Giá từ 3,739,000đ"
											class="form-control-date btn btn-primary">
									</div>
									<div class="form-group">
										<div class="form-field">
											<div class="row" style="text-align: center;">
												<span style="margin-left: 50px;" class="icon-calendar"></span>
												<p
													style="text-decoration: underline; margin-left: 10px; margin-top: -5px;">Xem
													thêm</p>
											</div>
											<input type="text" class="form-control"
												placeholder=" 27/10/2019"
												style="pointer-events: none; text-align: center;"> <input
												type="text" class="form-control" placeholder=" 03/11/2019"
												style="pointer-events: none; text-align: center; margin-top: 5px;">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="row" style="margin-top: 30px;">
				<div class="col-md-12 text-center">
					<div class="site-pagination">
						<a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a>
						<a href="#">4</a> <a href="#">5</a> <span>...</span> <a href="#">10</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>


	<footer class="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="mb-5">
						<h3 class="footer-heading mb-4">Giới thiệu HomeTourist</h3>
						<p>Bạn có nhu cầu quẩy? Bạn có nhiều tiền quá không biết để
							làm gì? Hãy đến với HomeTourist để tìm những tour du lịch trong
							mơ của mình.</p>
					</div>



				</div>
				<div class="col-lg-4 mb-5 mb-lg-0">
					<div class="row mb-5">
						<div class="col-md-12">
							<h3 class="footer-heading mb-4">Dịch vụ</h3>
						</div>
						<div class="col-md-6 col-lg-6">
							<ul class="list-unstyled">
								<li><a href="#">Tour trongg nước</a></li>
								<li><a href="#">Tour nước ngoài</a></li>
								<li><a href="#">Tuyển dụng</a></li>
								<li><a href="#">Liên hệ</a></li>
							</ul>
						</div>
						<div class="col-md-6 col-lg-6">
							<ul class="list-unstyled">
								<li><a href="#">Ý kiến khách hàng</a></li>
								<li><a href="#">Bảo hiểm du lịch</a></li>
								<li><a href="#">Phiếu góp ý</a></li>
								<li><a href="#">Chương trình</a></li>
							</ul>
						</div>
					</div>


				</div>

				<div class="col-lg-4 mb-5 mb-lg-0">
					<h3 class="footer-heading mb-4">Theo dõi chúng tôi</h3>

					<div>
						<a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
						<a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
						<a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
						<a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
					</div>



				</div>

			</div>

		</div>
	</footer>

	</div>

	<script src="user/js/jquery-3.3.1.min.js"></script>
	<script src="user/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="user/js/jquery-ui.js"></script>
	<script src="user/js/popper.min.js"></script>
	<script src="user/js/bootstrap.min.js"></script>
	<script src="user/js/owl.carousel.min.js"></script>
	<script src="user/js/mediaelement-and-player.min.js"></script>
	<script src="user/js/jquery.stellar.min.js"></script>
	<script src="user/js/jquery.countdown.min.js"></script>
	<script src="user/js/jquery.magnific-popup.min.js"></script>
	<script src="user/js/bootstrap-datepicker.min.js"></script>
	<script src="user/js/aos.js"></script>

	<script src="user/js/main.js"></script>


</body>

</html>