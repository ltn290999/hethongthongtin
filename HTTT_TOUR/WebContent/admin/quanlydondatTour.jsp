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
	        <div class="col-lg-12 stretch-card" style = "width :14%">
              <div class="card">
                <div class="card-body">

                  <div class="table-responsive pt-3" >
                    <table class="table table-bordered" >
                      <thead>
                        <tr>
                         
                         <th  style = "width: 5px">STT </th>
                          	<th >
                            Tên	khách hàng 
                          </th>
				
                         	<th >
							Số điện thoại
                          </th>
		<th >
							Địa chỉ
                          </th>
						   <th>
							Mã đơn đã đặt
                          </th>
						      <th>
							Ngày đặt
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr class="table-info" >
                       
                        
						 
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
           
          </div>
        </div>
		  
      <!-- partial -->
      
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
