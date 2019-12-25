<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>BackEnd</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="logo.png" />
</head>
<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="navbar-brand-wrapper d-flex justify-content-center">
        <div class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">  
          <a class="navbar-brand brand-logo" href="admin_index.html"><img src="logo.png" alt="logo"/></a>

          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-sort-variant"></span>
          </button>
        </div>  
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
       
        <ul class="navbar-nav navbar-nav-right">
       
         
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              <img src="logo.png" alt="profile"/>
              <span class="nav-profile-name"> Admin</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item">
                <i class="mdi mdi-settings text-primary"></i>
                Cài đặt tài khoản
              </a>
              <a class="dropdown-item">
                <i class="mdi mdi-logout text-primary"></i>
               Đăng xuất
              </a>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
   </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
		    <nav class="sidebar sidebar-offcanvas" id="sidebar">
			<ul class="nav">
			  <li class="nav-item">
				<a class="nav-link" href="admin_index.html">
				  <i class="mdi mdi-home menu-icon"></i>
				  <span class="menu-title">Trang quản lý</span>
				</a>
			  </li>
			
			  <li class="nav-item">
				<a class="nav-link" href="quanlydienthoai.html">
				  <i class="mdi mdi-view-headline menu-icon"></i>
				  <span class="menu-title">Quản lý Tour</span>
				</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="quanlydonhang.html">
				  <i class="mdi mdi-chart-pie menu-icon"></i>
				  <span class="menu-title">Quản lý thanh toán</span>
				</a>
			  </li>
			
			  <li class="nav-item">
				<a class="nav-link" href="quanlykhachhang.html">
				  <i class="mdi mdi-grid-large menu-icon"></i>
				  <span class="menu-title">Quản lý đơn đặt Tour</span>
				</a>
			  </li>
			  
			  
			</ul>
		  </nav>
      <!-- partial -->
       <div class="main-panel">
                <div class="content-wrapper">
                    <div class="row">
                        <div class="col-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">

                                    <form class="forms-sample">
                                        <div class="form-group">
                                            <label for="exampleInputName1"> Mã Tour</label>
                                            <input type="text" class="form-control" id="exampleInputName1"
                                                placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail3">Ngày khởi hành</label>
                                            <input type="text" class="form-control" id="exampleInputEmail3"
                                                placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword4">Thời gian đi</label>
                                            <input type="text" class="form-control" id="exampleInputPassword4"
                                                placeholder="">
                                        </div>
										    <div class="form-group">
                                            <label for="exampleTextarea1">Phương tiện</label>
                                            <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
                                        </div>
										    <div class="form-group">
                                            <label for="exampleTextarea1">Số chỗ nhận</label>
                                            <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Hình ảnh</label>
                                            <input type="file" name="img[]" class="file-upload-default">
                                            <div class="input-group col-xs-12">
                                                <input type="text" class="form-control file-upload-info" disabled
                                                    placeholder="Upload Image">
                                                <span class="input-group-append">
                                                    <button class="file-upload-browse btn btn-primary"
                                                        type="button">Upload</button>
                                                </span>
                                            </div>
                                        </div>

                                    
                                        <a href="quanlytintuc.html"><button type="button"
                                                class="btn btn-primary mr-2">
                                                <i class="ace-icon fa fa-plus-circle bigger-120 blue"></i> Thêm
                                            </button></a>
                                        <button class="btn btn-light">Cancel</button>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->

        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="vendors/chart.js/Chart.min.js"></script>
  <script src="vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <script src="js/data-table.js"></script>
  <script src="js/jquery.dataTables.js"></script>
  <script src="js/dataTables.bootstrap4.js"></script>
  <!-- End custom js for this page-->
</body>

</html>

