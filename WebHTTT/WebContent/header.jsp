<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	<header>

		<div class="click-closed"></div>
		<!--/ Form Search Star /-->
		<div class="box-collapse">
			<div class="title-box-d">
				<h3 class="title-d">Xin chào</h3>
			</div>
			<span class="close-box-collapse right-boxed ion-ios-close"></span>
			<div class="box-collapse-wrap form">
				<form class="form-a">
					<div class="row">
						<div class="col-md-12 mb-2">
							<div class="form-group">
								<label for="Type">Từ khóa</label> <input type="text"
									class="form-control form-control-lg form-control-a"
									placeholder="Nhập từ khóa">
							</div>
						</div>
						<div class="col-md-6 mb-2">
							<div class="form-group">
								<label for="Type">Nơi khởi hành</label> <select
									class="form-control form-control-lg form-control-a"
									id="Nơi khởi hành">
									<option>Hà Nội</option>
									<option>Hải Phòng</option>
									<option>Đà Nẵng</option>
									<option>Thành Phố Hồ Chí Minh</option>
									<option>Cần Thơ</option>
								</select>
							</div>
						</div>
						<div class="col-md-6 mb-2">
							<div class="form-group">
								<label for="city">Tuyến </label> <select
									class="form-control form-control-lg form-control-a"
									id="Tuyến di chuyển">
									<option>Hà Nội</option>
									<option>Hải Phòng</option>
									<option>Đà Nẵng</option>
									<option>Thành Phố Hồ Chí Minh</option>
									<option>Cần Thơ</option>
								</select>
							</div>
						</div>
						<div class="col-md-6 mb-2">
							<div class="form-group">
								<label for="bedrooms">Nơi đến</label> <select
									class="form-control form-control-lg form-control-a"
									id="Nơi đến">
									<option>Hà Nội</option>
									<option>Hải Phòng</option>
									<option>Đà Nẵng</option>
									<option>Thành Phố Hồ Chí Minh</option>
									<option>Cần Thơ</option>
									<option>Nhật Bản</option>
									<option>Hàn Quốc</option>
									<option>Mỹ</option>
									<option>Đức</option>
									<option>Anh</option>
									<option>Thụy Sĩ</option>
									<option>Trung Quốc</option>
									<option>Thái Lan</option>


								</select>
							</div>
						</div>
						<div class="col-md-6 mb-2">
							<div class="form-group">
								<label for="garages">Giá</label> <select
									class="form-control form-control-lg form-control-a"
									id="Giá">
									<option>Dưới 1 triệu</option>
									<option>1 triệu đến 2 triệu</option>
									<option>2 triệu đến 5 triệu</option>
									<option>5 triệu đến 10 triệu</option>
									<option>10 triệu đến 20 triệu</option>
									<option>20 triệu đến 50 triệu</option>
									<option>50 triệu đến 100triệu</option>
								</select>
							</div>
						</div>
						<div class="col-md-6 mb-2">
							<div class="form-group">
								<label for="bathrooms">Phương tiện di chuyển</label> <select
									class="form-control form-control-lg form-control-a"
									id="Phương tiện">
									<option>Máy bay</option>
									<option>Xe tour</option>
						
								</select>
							</div>
						</div>
						<div class="col-md-6 mb-2">
							<div class="form-group">
								<label for="price">Số người</label> <select
									class="form-control form-control-lg form-control-a" id="Số người">
									<option>Dưới 2 người</option>
									<option>Dưới 5 người</option>
									<option>Dưới 10 người</option>
									<option>Dưới 20 người</option>
									<option>Dưới 50 người</option>
								</select>
							</div>
						</div>
						<div class="col-md-12">
							<button type="submit" class="btn btn-b">Tìm kiếm</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!--/ Form Search End /-->

		<!--/ Nav Star /-->
		<nav
			class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
			<div class="container">
				<button class="navbar-toggler collapsed" type="button"
					data-toggle="collapse" data-target="#navbarDefault"
					aria-controls="navbarDefault" aria-expanded="false"
					aria-label="Toggle navigation">
					<span></span> <span></span> <span></span>
				</button>
				<img src="img\logo.png"width: '16%' height: '16%'>
				<button type="button"
					class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none"
					data-toggle="collapse" data-target="#navbarTogglerDemo01"
					aria-expanded="false">
					<span class="fa fa-search" aria-hidden="true"></span>
				</button>
				<div class="navbar-collapse collapse justify-content-center"
					id="navbarDefault">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"
							href="index.html">Tour trong nước </a></li>
						<li class="nav-item"><a class="nav-link" href="about.html">Tour
								nước ngoài</a></li>
						<li class="nav-item"><a class="nav-link"
							href="property-grid.html">Blog</a></li>
						<li class="nav-item"><a class="nav-link"
							href="property-grid.html">Liên hệ</a></li>
						<li class="nav-item"><a class="nav-link"
							href="blog-grid.html"><button>Đăng kí</button></a></li>
						<li class="nav-item"><a class="nav-link"
							href="blog-grid.html"><button>Đăng nhập</button></a></li>

					</ul>
				</div>
				<button type="button"
					class="btn btn-b-n navbar-toggle-box-collapse d-none d-md-block"
					data-toggle="collapse" data-target="#navbarTogglerDemo01"
					aria-expanded="false">
					<span class="fa fa-search" aria-hidden="true"></span>
				</button>
			</div>
		</nav>
		<!--/ Nav End /-->
	</header>
</body>
</html>