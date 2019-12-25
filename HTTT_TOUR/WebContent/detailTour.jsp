<!DOCTYPE html>
<html lang="en">

<head>
<title>Đặt ngay</title>
<meta charset="utf-8">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
<link rel="stylesheet" href="user/css/style1.css">

<style type="text/css">
.main {
	width: 85%;
	margin: auto;
}

.title-tour {
	border-bottom: 1px solid black;
}

.title-tour th {
	color: #000000;
}

.title-body td {
	color: #f89d13;
	font-size: 14px;
	font-weight: bold;
}

.title-body th {
	color: #000000;
	font-size: 14px;
	font-weight: bold;
}

.text-strong {
	font-weight: bold;
	color: black;
}

.text-uppercase {
	font-size: 14px;
	color: black;
}

.title {
	color: #f89d13;
	font-weight: bold;
}

.help-tour {
	margin-left: 30px;
	margin-top: 20px;
	margin-bottom: 20px
}

.help-tour p {
	font-size: 14px;
	color: black;
	margin-top: 10px;
}

.help-tour a button {
	width: 150px;
	font-size: 13px;
	height: 30px;
	color: #ffffff;
	background: #f89d13;
	border-radius: 5px;
}
</style>

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
						<a href="trang-chu" class="h5 text-uppercase text-black"><strong>HomeTourist<span
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

						<ul class="site-menu js-clone-nav d-none d-lg-block">
							<li><a href="tour-trong-nuoc">TOUR </a></li>
							<li><a href="dang-nhap">ĐĂNG NHẬP</a></li>

						</ul>

					</nav>
				</div>


			</div>
		</div>
	</div>

	<div class="slide-one-item home-slider owl-carousel tour-image">

		<div class="site-blocks-cover domestic-tour"
			style="background-image: url(images/banner1.jpg); min-height: 300px; height: calc(100vh - 45vh);"
			data-aos="fade" data-stellar-background-ratio="0.5"></div>
	</div>


	<section class="main">
		<div class="col-md-8 col-sm-6 col-xs-12 ">
			<div class="card" style="border-style: none;">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12 ">
						<span class="text-uppercase">Thời gian:</span> <span
							class="text-strong">${tour.timeTour }</span>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<span class="text-uppercase">Phương tiện:</span> <span
							class="text-strong">${tour.vehicle } </span>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<span class="text-uppercase">Điểm xuất phát:</span> <span
							class="text-strong">${tour.diemXuatPhat } </span>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<span class="text-uppercase">Điểm đến:</span> <span
							class="text-strong">${tour.diemDen }</span>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3 col-sm-4 col-xs-12 float-right">
			<div class="card">
				<div class="row">
					<div class="col-md-12 col-sm-4 col-xs-12">
						<div class="right-detail-tour-box help-tour">
							<div class="title">Hỗ trợ khách hàng</div>
							<p>Hotline: 1900</p>
							<p style="margin-top: -10px;">Email:</p>
							<a href="#"><button>Bạn muốn được gọi lại?</button></a>
						</div>
					</div>
				</div>
			</div>

			
		</div>

		<div class="col-md-12 col-sm-4 col-xs-12">
			<div class="card"
				style="background-color: #FFEDDF; border-style: none;">
				<table class="table table-borderless">
					<thead>
						<tr class="title-tour">
							<th scope="col">KHỞI HÀNH</th>
							
							<th scope="col">GIÁ</th>
							<th scope="col">GIÁ TRẺ EM</th>
							<th scope="col"></th>
						</tr>
						</div>
					</thead>
					<tbody>

						<tr class="title-body">
							<th scope="row">${tour.dateStart}</th>
								
							<td>${tour.price }</td>
							<td>${tour.priceTreEm }</td>
							<td><a href="book-tour?id=${tour.idTour }"><button
										class="btn btn-deep-orange " type="button"
										style="width: 110px; font-size: 14px; height: 30px; color: #ffffff; background: #f89d13; text-align: center;">
										MUA ONLINE</button></a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>


		<div class="card" style="border-style: none;">
			<div class="col-md-12 col-sm-4 col-xs-12">
				<div class="title-description">TOUR NÀY CÓ Gì HAY</div>
				<div class="content-description">- ${tour.description }</div>

			</div>
			
	</section>
	<!-- menu nav -->

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