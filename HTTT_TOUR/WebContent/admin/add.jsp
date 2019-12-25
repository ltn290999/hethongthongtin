<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>


<head>
<!-- Required meta tags -->
<meta charset="utf-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>BackEnd</title>
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
<script src="admin/ckeditor/ckeditor.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />

	<!-- partial -->
	<div class="main-panel">
		<div class="content-wrapper">
			<div class="row">
				<div class="col-12 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">

							<form action="admin-add-tour" method="post"
								enctype="multipart/form-data">

								<div class="">
									<label style="width: 130px;">Tour name</label> <input
										type="text" name="name" value="${tour.tourName }">

								</div>
								<div class="">
									<label style="width: 130px;">Vehicle</label> <input type="text"
										name="vehicle" value="${tour.vehicle }" placeholder=""
										required>
								</div>
								<div class="">
									<label style="width: 130px;">Số chỗ</label> <input
										type="number" name="soCho" value="${tour.customerSeat }"
										placeholder="" required>
								</div>
								<div class="">
									<label style="width: 130px;">Giá người lớn</label> <input
										type="number" name="price" value="${tour.price }" required>
								</div>
								<div class="">
									<label style="width: 130px;">Giá trẻ em</label> <input
										type="text" name="priceTreEm" value="${tour.priceTreEm }"
										required>
								</div>
								<div class="">
									<label style="width: 130px;">Ngày xuất phát</label> <input
										type="date" name="ngayXuatPhat" value="${tour.dateStart }"
										required>
								</div>
								<div class="">
									<label style="width: 130px;">Thời gian tour</label> <input
										type="text" name="thoiGian" value="${tour.timeTour }" required>
								</div>

								<div class="">
									<label style="width: 130px;">Điểm đến</label> <input
										type="text" name="diemDen" value="${tour.diemDen }" required>
								</div>
								<div class="">
									<label style="width: 130px;">Điểm xuất phát</label> <input
										type="text" name="diemXuatPhat" value="${tour.diemXuatPhat }"
										required>
								</div>


								<c:if test="${tour.idTour == null}">
									<label>Hình ảnh</label>
									<input type="file" name="img" accept="image/" required>
									<br>
								</c:if>
								<label>Miêu tả</label>


								<textarea class="form-control" id="noiDung" name="des" rows="4"
									required>${tour.description }</textarea>

								<input type="hidden" name="id" value="${tour.idTour }">
								<input type="submit" value="Thêm"> <a
									href="${pageContext.request.contextPath }/admin-quan-ly-dien-thoai"><button
										class="btn btn-light">Cancel</button></a>

								<p style="color: red">${error }</p>
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- content-wrapper ends -->
	<!-- partial:partials/_footer.jsp -->

	<!-- partial -->
	</div>
	<!-- main-panel ends -->
	</div>
	<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<script>
		// Replace the <textarea id="editor1"> with a CKEditor
		// instance, using default configuration.
		CKEDITOR.replace('noiDung');
	</script>


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

