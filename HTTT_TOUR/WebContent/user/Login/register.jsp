<!DOCTYPE html>
<html lang="en">
<head>
<title>Đăng ký</title>
<meta charset="UTF-8">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<!--===============================================================================================-->

<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="user/Login/css/util.css">
<link rel="stylesheet" type="text/css" href="user/Login/css/main.css">
<!--===============================================================================================-->

<!-- phần header -->
<link rel="stylesheet" href="user/css/bootstrap.min.css">
<link rel="stylesheet" href="user/css/style.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500">

</head>
<body>
	<section>
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
								<li></li>
								<li><a href="tour-trong-nuoc">TOUR </a></li>
								<li><a href="booking-tour"><button
											class="btn btn-deep-orange " type="button"
											style="width: 120px; font-size: 15px; padding-left: 8px; color: #ffffff; background: #f89d13;">
											<i class="book-tour"></i> ĐẶT NGAY
										</button></a></li>
							</ul>
						</nav>
					</div>


				</div>
			</div>
		</div>
	</section>
	<br>
	<br>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<br> <br> <img src="images/img-01.png" alt="IMG">
					<!-- <br><br><br><br>
					<img src="user/images/planes.png" alt="IMG"> -->
				</div>

				<form action="dang-ky" class="login100-form validate-form"
					method="post">
					<span class="login100-form-title"> ĐĂNG KÝ </span>
					<div class="wrap-input100 validate-input"
						data-validate="Vui lòng nhập tên">
						<input class="input100" type="text" name="username"
							placeholder="Tên đăng nhập(*)"> <span
							class="focus-input100"></span>
						<!-- biểu tượng kế bên phập nội dung -->
						<span class="symbol-input100"> <i class="fa fa-smile-o"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Email hợp lệ là : ex@abc.xyz">
						<input class="input100" type="text" name="email"
							placeholder="Địa chỉ email(*)"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Vui lòng nhập mật khẩu">
						<input class="input100" type="password" name="pass"
							placeholder="Mật khẩu(*)"> <span class="focus-input100"></span>
						<!-- biểu tượng kế bên phập nội dung -->
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Vui lòng nhập lại mật khẩu">
						<input class="input100" type="password" name="confirm"
							placeholder="Nhập lại mật khẩu(*)"> <span
							class="focus-input100"></span>
						<!-- biểu tượng kế bên phập nội dung -->
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>


					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Đăng ký</button>
					</div>



				</form>
			</div>
		</div>
	</div>




	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->


	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>