<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="header.jsp" />
	<section class="section-property section-t8">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title-wrap d-flex justify-content-between">
						<div class="title-box">
							<h5 class="title-a">Tour Hot </h5>
						</div>

					</div>
				</div>
			</div>
						
			<div id="property-carousel" class="owl-carousel owl-theme">
				<c:forEach items="${listTour }" var="listTour">
				<div class="carousel-item-b">
					<div class="card-box-a card-shadow">
						<div class="img-box-a">
							<img src="${listTour.img_url}" alt="" class="img-a img-fluid">
						</div>
						<div class="card-overlay">
							<div class="card-overlay-a-content">
								<div class="card-header-a">
									<h2 class="card-title-a">
										<a href="property-single.html">${listTour.tour_name }<br />
										</a>
									</h2>
								</div>
								<div class="card-body-a">
									<div class="price-box d-flex">
										<span class="price-a">Giá | ${listTour.tour_price } Vnd</span>
									</div>
									<a href="#" class="link-a">Click here to view <span
										class="ion-ios-arrow-forward"></span>
									</a>
								</div>
								<div class="card-footer-a">
									<ul class="card-info d-flex justify-content-around">
										<li>
											<h4 class="card-info-title">Ngày</h4> <span>${listTour.tour_date } </span>
										</li>
										<li>
											<h4 class="card-info-title">Người</h4> <span><center>${listTour.tour_people } </center></span>
										</li>
										<li>
											<h4 class="card-info-title">Khách sạn</h4> <span>${listTour.tour_hotel }</span>
										</li>
										<li>
											<h4 class="card-info-title">Phương tiện</h4> <span>${listTour.tour_vehicle }
												</span>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
					</c:forEach>
			</div>
		</div>
	</section>

</body>

</html>