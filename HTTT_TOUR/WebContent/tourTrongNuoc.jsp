<!DOCTYPE html>
<html lang="en">

<head>
<title>Danh sách tour trong nước</title>
<meta charset="utf-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<jsp:include page="header.jsp" />


	<div class="slide-one-item home-slider owl-carousel tour-image">

		<div class="site-blocks-cover domestic-tour"
			style="background-image: url(images/domesticbannertour.jpg); min-height: 250px; height: calc(100vh - 45vh);"
			data-aos="fade" data-stellar-background-ratio="0.5"></div>
	</div>
	<div class="location-from">
		<form action="tour-trong-nuoc" method="post">
			<div class="row">
				<div class="col-md align-items-end">
					<div class="form-group">
						<label for="#">Tìm tour</label>
						<div class="form-field">
							<div class="icon">
								<span class="icon-map-marker"></span>
							</div>
							<input type="text" name="text" class="form-control"
								placeholder=" Nhập tìm kiếm tour">
						</div>
					</div>
				</div>
				<div class="col-md align-items-end">
					<div class="form-group">
						<label for="#">Từ ngày </label>
						<div class="form-field">

							<input type="date" name="tuNgay">
						</div>
					</div>
				</div>
				<div class="col-md align-items-end">
					<div class="form-group">
						<label for="#">Đến ngày</label>
						<div class="form-field">

							<input type="date" name="denNgay">
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
			<c:forEach items="${listTour}" var="list">
				<c:url value="detail-tour" var="detailTour">
					<c:param name="id" value="${list.idTour }"></c:param>
				</c:url>

				<div class="card">
					<div class="row ">
						<div class="col-md-4">
							<img src="${list.img_Tour }" class="w-100">
						</div>

						<div class="row">
							<div class=".col-12 .col-md-8">
								<div class="card-block px-3">
									<a href="detail-tour">
										<h4 class="card-title">${list.tourName }</h4>
									</a>
									<h6 class="card-text-city">${list.diemXuatPhat }-
										${list.diemDen }</h6>
									<p class="card-text">
										Thời gian: ${list.timeTour } <br>Phương tiện
										:${list.vehicle }
									</p>
								</div>
							</div>
							<div class=".col-6 .col-md-4">
								<div class="col-md align-self-end">
									<div class="form-group">
										<div class="form-field">
											<input type="submit" value=" Giá : ${list.price}"
												class="form-control-date btn btn-primary">
										</div>
										<div class="form-group">
											<div class="form-field">
												<div class="row" style="text-align: center;">
													<span style="margin-left: 50px;" class="icon-calendar"></span>
													<a href="${detailTour }"><p
															style="text-decoration: underline; margin-left: 10px; margin-top: -5px;">Xem
															thêm</p></a>

												</div>
												<input type="text" class="form-control"
													placeholder="${list.dateStart}"
													style="pointer-events: none; text-align: center;">

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>

			</c:forEach>



			<div class="row" style="margin-top: 30px;">
				<div class="col-md-12 text-center">
					<div class="site-pagination">
						<c:forEach begin="1" end="${countpage}" step="1" var="count">
							<c:url value="tour-trong-nuoc" var="pages">
								<c:param name="page" value="${(count-1)}">
								</c:param>
							</c:url>
							<a href="${pages }" class="active">${count}</a>
						</c:forEach>

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