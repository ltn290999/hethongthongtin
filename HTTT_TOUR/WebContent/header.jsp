<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Trang chủ</title>
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

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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

						<ul class="site-menu js-clone-nav d-none d-lg-block"
							style="margin-left: -200px">
							<li><a href="tour-trong-nuoc">TOUR</a></li>
							<c:choose> 
									<c:when test="${user.user_name == null }">
							<li><a href="dang-nhap">ĐĂNG NHẬP</a></li>
							</c:when>
								<c:otherwise>
							<li><div class="w3-container">
									<div class="w3-dropdown-hover">
										<button class="w3-button w3-yellow">Chào, ${user.user_name}</button>
										<div class="w3-dropdown-content w3-bar-block w3-border">
											<a href="#" class="w3-bar-item w3-button">Cài đặt tài
												khoản</a> <a href="dang-xuat" class="w3-bar-item w3-button">Đăng
												Xuất</a>
										</div>
									</div>
								</div></li>
								</c:otherwise>
								</c:choose>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>


</body>
</html>