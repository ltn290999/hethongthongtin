<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Chọn dịch vụ</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<script type="text/javascript" nonce="39be21c4b7934f2cb0da9b523b0"
	src="//local.adguard.org?ts=1574694577622&amp;type=content-script&amp;dmn=cdn.fbsbx.com&amp;css=1&amp;js=1&amp;gcss=1&amp;rel=1&amp;rji=1"></script>
<script type="text/javascript" nonce="39be21c4b7934f2cb0da9b523b0"
	src="//local.adguard.org?ts=1574694577622&amp;name=AdGuard%20Popup%20Blocker&amp;name=AdGuard%20Assistant&amp;name=AdGuard%20Extra&amp;type=user-script"></script>
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

</head>

<body>
	<div class="site-loader"></div>
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
		<jsp:include page="header.jsp" />



	<div class="slide-one-item home-slider owl-carousel tour-image">

		<div class="site-blocks-cover domestic-tour"
			style="background-image: url(images/banner4.jpg); min-height: 300px; height: calc(100vh - 45vh);"
			data-aos="fade" data-stellar-background-ratio="0.5"></div>
	</div>

	<br>

	<div class="row" style="width: 80%; margin: auto;">
		<div class="col">
			<div class="card" style="border-style: none;">
				<div class="card-body"
					style="border-color: #f89d13; width: 200px; border-radius: 10px; margin: auto; text-align: center; height: 65px">
					<p
						style="margin-top: -10px; color: black; font-size: 14px; font-weight: bold;">1.
						CHỌN DỊCH VỤ</p>
				</div>
			</div>
		</div>


		<div class="col">
			<div class="card" style="border-style: none;">
				<div class="card-body"
					style="width: 200px; border-radius: 10px; margin: auto; text-align: center; height: 55px; border-style: solid;">
					<p style="color: black; font-size: 14px; font-weight: bold;">2.
						THANH TOÁN</p>
				</div>
			</div>
		</div>

	</div>

	<section class="main">
		<div class="show_view_thongtin_tour">
			<div>
				<div class="tit_order">THÔNG TIN TOUR</div>
			</div>
			<table class="table table-bordered">

				<tbody class="">
					<tr>
						<td>Tên tour</td>
						<td>${tour.tourName }</td>
					</tr>
					<tr>
						<td>Ngày khởi hành</td>
						<td>${tour.dateStart }</td>
					</tr>
					<tr>
						<td>Thời gian đi</td>
						<td>${tour.timeTour }</td>
					</tr>
					<tr>
						<td>Phương tiện:</td>
						<td><span class="depdate  pt_oto"></span>${tour.vehicle }</td>
					</tr>
					<tr>

						<td>Giá</td>
						<c:set var="total"
							value="${bookTour.slNguoiLon*tour.price + tour.priceTreEm*bookTour.slTreNho}" />
						<td><fmt:formatNumber type="number" maxFractionDigits="0"
								value="${total}" /> đ</td>
					</tr>
					<tr>
						<td>Số chỗ nhận</td>
						<td><c:out value="${bookTour.slNguoiLon + bookTour.slTreNho}" /></td>
					</tr>
				</tbody>

			</table>
		</div>
		<div class="div_order">
			<div class="">
				<div class="tit_tt_khachhang_coban">THÔNG TIN LIÊN HỆ</div>
			</div>
			<table class="table table-bordered" id="tbl_tourdetail">
				<tbody>
					<tr>
						<td>Họ tên</td>
						<td>${bookTour.cus_name }</td>
					</tr>
					<tr>
						<td>Điện thoại</td>
						<td>${bookTour.cus_phone }</td>
					</tr>
					<tr>
						<td>Địa chỉ</td>
						<td>${bookTour.cus_address }</td>
					</tr>


				</tbody>
			</table>
		</div>
		<span>Tổng cộng: </span> <input name="txt_tongcong" type="text"
			value="<fmt:formatNumber type="number" maxFractionDigits="0"
								value="${total}" />"
			readonly="readonly" class="aspNetDisabled">

		<form action="thanh-toan" method="post">
			<div class="div_next">
				<input type="submit" value="Đặt tour"
					class="form-control-date btn btn-primary">
			</div>
		</form>
	</section>


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