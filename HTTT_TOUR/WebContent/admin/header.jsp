<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container-scroller">
	<fmt:setLocale value="${locale }" />

	<fmt:setBundle basename="language/messages" />
	<!-- partial:partials/_navbar.jsp -->
	<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
		<div class="navbar-brand-wrapper d-flex justify-content-center">
			<div
				class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">
				<a class="navbar-brand brand-logo" href="admin-trang-chu"><img
					src="images/planes.png" style="width: 22%" alt="logo" /></a>
				<button class="navbar-toggler navbar-toggler align-self-center"
					type="button" data-toggle="minimize">
					<span class="mdi mdi-sort-variant"></span>
				</button>
			</div>
		</div>
		<div
			class="navbar-menu-wrapper d-flex align-items-center justify-content-end">

			<ul class="navbar-nav navbar-nav-right">
				<li class="nav-item nav-profile dropdown"><a
					class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
					id="profileDropdown" aria-expanded="false" style="width: 75px;">
						<img src="images/planes.png" alt="profile"> <span
						class="nav-profile-name"> Admin</span>
				</a>
					<div class="dropdown-menu dropdown-menu-right navbar-dropdown"
						aria-labelledby="profileDropdown">
						<a class="dropdown-item"> <i
							class="mdi mdi-settings text-primary"></i> Cài đặt tài khoản
						</a> <a class="dropdown-item"
							href="${pageContext.request.contextPath }/dang-xuat"> <i
							class="mdi mdi-logout text-primary"></i> Đăng xuất
						</a>
					</div></li>
			</ul>
			<button
				class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
				type="button" data-toggle="offcanvas">
				<span class="mdi mdi-menu"></span>
			</button>
		</div>
	</nav>
	<!-- partial -->
	<div class="container-fluid page-body-wrapper">
		<!-- partial:partials/_sidebar.jsp -->
		<nav class="sidebar sidebar-offcanvas" id="sidebar">
			<ul class="nav">

				<li class="nav-item"><a class="nav-link" href="admin-tour">
						<i class="mdi mdi-view-headline menu-icon"></i> <span
						class="menu-title">Quản lý Tour</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="admin-thanh-toan"> <i class="mdi mdi-chart-pie menu-icon"></i>
						<span class="menu-title">Quản lý thanh toán</span>
				</a></li>



			</ul>
		</nav>