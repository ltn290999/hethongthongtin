<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Quản lý thanh toán</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="admin/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="admin/vendors/base/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<link rel="stylesheet"
	href="admin/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="admin/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="logo.png" />
<link rel="stylesheet"
	href="admin/font-awesome-4.7.0/css/font-awesome.min.css">
</head>

<body>

	<jsp:include page="header.jsp" />
	<!-- partial -->
	<div class="col-xs-12">
		<table id="datatable-buttons"
			class="table table-striped table-bordered dataTable no-footer"
			role="grid" aria-describedby="datatable-buttons_info">
			<thead>
				<tr role="row">
					<th tabindex="0" aria-controls="datatable-buttons" rowspan="1"
						colspan="1" aria-label="SST: activate to sort column ascending"
						style="width: 50px;">STT</th>
					<th tabindex="0" aria-controls="datatable-buttons" rowspan="1"
						colspan="1"
						aria-label="Tên sản phẩm: activate to sort column ascending"
						style="width: 200px;">Tên Tour</th>
					<th tabindex="0" aria-controls="datatable-buttons" rowspan="1"
						colspan="1" aria-label="Giá: activate to sort column ascending"
						style="width: 150px;">Tên người đặt</th>
					<th tabindex="0" aria-controls="datatable-buttons" rowspan="1"
						colspan="1" aria-label="Giá: activate to sort column ascending"
						style="width: 150px;">Địa chỉ</th>
					<th tabindex="0" aria-controls="datatable-buttons" rowspan="1"
						colspan="1" aria-label="Giá: activate to sort column ascending"
						style="width: 150px;">Số điện thoại</th>
					<th tabindex="0" aria-controls="datatable-buttons" rowspan="1"
						colspan="1" aria-label="Giá: activate to sort column ascending"
						style="width: 150px;">Số người lớn</th>
					<th tabindex="0" aria-controls="datatable-buttons" rowspan="1"
						colspan="1" aria-label="Giá: activate to sort column ascending"
						style="width: 150px;">Số trẻ em</th>
					<th tabindex="0" aria-controls="datatable-buttons" rowspan="1"
						colspan="1"
						aria-label="Thao tác: activate to sort column ascending"
						style="width: 150px;">Thao tác</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listBookTour }" var="list">

					<tr role="row" class="odd">
						<td>${list.id }</td>
						<td>${list.tourName }</td>
						<td>${list.cus_name }</td>
						<td>${list.cus_address }</td>
						<td>${list.cus_phone }</td>
						<td>${list.slNguoiLon }</td>
						<td>${list.slTreNho }</td>


						<!-- phần xóa  -->
						<!-- phần xóa  -->
						<c:url value="admin-thanh-toan" var="delete">
							<c:param name="delete" value="${list.id}" />
						</c:url>

						<td class="center"><a href="${delete }"
							style="display: inline-block">
								<button title="Xóa bài viết" type="button"
									class="btn btn-xs btn-danger btn-round text-center">
									<i class="ace-icon fa fa-trash-o" style="font-size: 11px">Xóa</i>
								</button>
						</a> <c:url value="admin-thanh-toan" var="confirm">
								<c:param name="confirm" value="${list.id}" />
							</c:url> <a href="${confirm }">
								<button class="btn btn-xs btn-info btn-round text-center">
									<i class="ace-icon fa fa-pencil" style="font-size: 11px">Xác nhận</i>
								</button>
						</a></td>
						<!-- kết thúc phần xóa  -->
					</tr>
				</c:forEach>



			</tbody>
		</table>

	</div>

	<!-- plugins:js -->
	<script src="admin/vendors/base/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<script src="admin/vendors/chart.js/Chart.min.js"></script>
	<script src="admin/vendors/datatables.net/jquery.dataTables.js"></script>
	<script src="admin/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="admin/js/off-canvas.js"></script>
	<script src="admin/js/hoverable-collapse.js"></script>
	<script src="admin/js/template.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="admin/js/dashboard.js"></script>
	<script src="admin/js/data-table.js"></script>
	<script src="admin/js/jquery.dataTables.js"></script>
	<script src="admin/js/dataTables.bootstrap4.js"></script>
	<!-- End custom js for this page-->

</body>

</html>
