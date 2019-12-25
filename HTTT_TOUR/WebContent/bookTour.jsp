
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Chọn dịch vụ</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script type="text/javascript" nonce="39be21c4b7934f2cb0da9b523b0"
	src="//local.adguard.org?ts=1574694577622&amp;type=content-script&amp;dmn=cdn.fbsbx.com&amp;css=1&amp;js=1&amp;gcss=1&amp;rel=1&amp;rji=1"></script>
<script type="text/javascript" nonce="39be21c4b7934f2cb0da9b523b0"
	src="//local.adguard.org?ts=1574694577622&amp;name=AdGuard%20Popup%20Blocker&amp;name=AdGuard%20Assistant&amp;name=AdGuard%20Extra&amp;type=user-script"></script>
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
<link rel="stylesheet" href="user/css/style1.css">

</head>

<body>
	<div class="site-loader"></div>
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
			style="background-image: url(images/banner4.jpg); min-height: 300px; height: calc(100vh - 45vh);"
			data-aos="fade" data-stellar-background-ratio="0.5"></div>
	</div>

	<br>

	<div class="row" style="width: 80%; margin: auto;">
		<div class="col">
			<div class="card" style="border-style: none;">
				<div class="card-body"
					style="border-color: #f89d13; width: 200px; border-radius: 10px; margin: auto; text-align: center; height: 65px; border-style: solid;">
					<p
						style="margin-top: -10px; color: black; font-size: 14px; font-weight: bold;">1.
						CHỌN DỊCH VỤ</p>
				</div>
			</div>
		</div>


		<div class="col">
			<div class="card" style="border-style: none;">
				<div class="card-body"
					style="width: 200px; border-radius: 10px; margin: auto; text-align: center; height: 55px;">
					<p style="color: black; font-size: 14px; font-weight: bold;">2.
						THANH TOÁN</p>
				</div>
			</div>
		</div>

	</div>
	<form action="book-tour" method="post">
		<div class="row" style="width: 80%; margin: auto; padding-top: 50px;">
			<div class="col-8">
				<h4 style="font-weight: bold; color: #000000;">SỐ LƯỢNG HÀNH
					KHÁCH</h4>
				<div class="row">
					<div class="col">
						<p>Người lớn(*)</p>
						<input type="number" class="input-form" name="slNguoiLon" required><br>
						<p>Trẻ em</p>
						<input type="number" name="slTreNho" class="input-form">
						<p>Tên người đặt(*)</p>
						<input type="text" class="input-form" name="name" required><br>
						<p>Số điện thoại(*)</p>
						<input type="text" class="input-form" name="sdt" required><br>
						<p>Địa chỉ(*)</p>
						<input type="text" class="input-form" name="address" required><br>

					</div>
					<div class="col">
						<div style="margin-top: 15px">
							<ul class="highlight-text">
								<li>Trẻ em dưới 10 tuổi được tính giá vé khác.</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12 no-padding">
					<span class="prepayment-description">Sau khi đặt cọc, quý
						khác vui lòng hoàn tất thanh toán trong <strong> 48h</strong>
					</span>
				</div>

				<br>
				<p>
					<b>Chọn một trong các phương thức sau:</b>
				</p>

				<button style="margin-top: 10px">
					<div style="font-size: 20px; font-weight: bold">THANH TOÁN
						BẰNG TIỀN MẶT TẠI VĂN PHÒNG LỮ HÀNH HOMETOURIST</div>
					<div>Quý khách vui lòng đến các văn phòng hometourist để
						thanh toán và nhận vé.</div>
				</button>

				<br> <br> <label> <input type="checkbox"
					name="agreement" required="required"> Tôi đã đọc và đồng ý
					<a target="_blank">điều khoản</a>
				</label>
				<div
					style="width: 100%; height: 250px; overflow-y: scroll; padding: 10px; margin: 0; border: 1px solid #ccc; border-right: 2px solid #ccc;">
					<p>Điều khoản này là sự thoả thuận đồng ý của quý khách khi sử
						dụng dịch vụ thanh toán trên trang web của Công ty Dịch vụ Lữ hành
						tourmanagement (Lữ hành tourmanagement) và những trang web của bên
						thứ ba. Việc quý khách đánh dấu vào ô “Đồng ý” và nhấp chuột vào
						thanh “Chấp nhận” nghĩa là quý khách đồng ý tất cả các điều khoản
						thỏa thuận trong các trang web này.</p>

					<p>&nbsp;</p>

					<p>
						<strong>Giải thích từ ngữ</strong>
					</p>

					<p>Điều khoản: là những điều quy định giữa Lữ hành
						tourmanagement và quý khách</p>

					<p>Bên thứ ba: là những đơn vị liên kết với Lữ hành
						tourmanagement (OnePay, Vietcombank) nhằm hỗ trợ việc thanh toán
						qua mạng cho quý khách</p>

					<p>Vé điện tử: là những thông tin và hành trình của quý khách
						cho chuyến đi được thể hiện trên một trang giấy mà quý khách có
						thể in ra được</p>

					<p>
						<strong>Về sở hữu bản quyền</strong>
					</p>

					<p>
						Trang web <a href="http://www.tourmanagement.tk">www.tourmanagement.tk</a>
						thuộc quyền sở hữu của Lữ hành tourmanagement và được bảo vệ theo
						luật bản quyền, quý khách chỉ được sử dụng trang web này với mục
						đích xem thông tin và đăng ký thanh toán online cho cá nhân chứ
						không được sử dụng cho bất cứ mục đích thương mại nào khác.
					</p>

					<p>Việc lấy nội dung để tham khảo, làm tài liệu cho nghiên cứu
						phải ghi rõ ràng nguồn lấy từ nội dung trang web Lữ hành
						tourmanagement. Không được sử dụng các logo, các nhãn hiệu&nbsp;Lữ
						hành Lữ hành tourmanagement dưới mọi hình thức nếu chưa có sự đồng
						ý của&nbsp;Lữ hành&nbsp;tourmanagement bằng văn bản.</p>

					<p>
						<strong>Về thông tin khách hàng</strong>
					</p>

					<p>Khi đăng ký thanh toán qua mạng, quý khách sẽ được yêu cầu
						cung cấp một số thông tin cá nhân và thông tin tài khoản.</p>

					<p>Đối với thông tin cá nhân: Những thông tin này chỉ để phục
						vụ cho nhu cầu xác nhận sự mua dịch vụ của quý khách và sẽ hiển
						thị những nội dung cần thiết trên vé điện tử. Lữ hành
						tourmanagement cũng sẽ sử dụng những thông tin liên lạc này để gửi
						đến quý khách những sự kiện, những tin tức khuyến mãi và những ưu
						đãi đặc biệt nếu quý khách đồng ý. Những thông tin này của quý
						khách sẽ được Lữ hành tourmanagement bảo mật và không tiết lộ cho
						bên thứ ba biết ngoại trừ sự đồng ý của quý khách hoặc là phải
						tiết lộ theo sự tuân thủ luật pháp quy định.</p>

					<p>Đối với thông tin tài khoản: Những thông tin này sẽ được Lữ
						hành tourmanagement và bên thứ ba áp dụng những biện pháp bảo mật
						cao nhất do các hệ thống thanh toán nổi tiếng trên thế giới như
						Visa và MasterCard cung cấp nhằm đảm bảo sự an toàn tuyệt đối của
						thông tin tài khoản quý khách.</p>

					<p>
						<strong>Về trang web liên kết</strong>
					</p>

					<p>Các trang web của Lữ hành tourmanagement có chứa những liên
						hệ kết nối với trang web của bên thứ ba. Việc liên kết trang web
						của bên thứ ba này nhằm chỉ cung cấp những sự tiện lợi cho quý
						khách chứ không phải là sự tán thành, chấp nhận những nội dung,
						thông tin sản phẩm của những trang web bên thứ ba. Lữ hành
						tourmanagement sẽ không chiu trách nhiệm về bất cứ trách nhiệm
						pháp lý nào liên quan đến những thông tin gì trong các trang web
						bên thứ ba.</p>

					<p>
						<strong>Về hủy tour</strong>
					</p>

					<p>Trong trường hợp hủy tour, quý khách vui lòng gửi email
						thông báo hủy tour đến Lữ hành tourmanagement. Lữ hành
						tourmanagement sẽ trao đổi và xác nhận lại tất cả các thông tin
						của quý khách. Khi hoàn tất việc xác nhận thông tin, Lữ hành
						tourmanagement sẽ hoàn tiền vào đúng tài khoản quý khách đã thanh
						toán sau khi trừ các khoản lệ phí hủy tour. Lệ phí hủy tour sẽ tùy
						thuộc vào từng tour tuyến quý khách đăng ký.</p>

					<p>
						<strong>Trách nhiệm của Lữ hành tourmanagement</strong>
					</p>

					<p>Lữ hành tourmanagement có nhiệm vụ bảo mật và lưu trữ an
						toàn các thông tin của quý khách với sự nghiêm túc cao nhất.</p>

					<p>Giải quyết những thắc mắc, sai sót, vi phạm mà quý khách gặp
						phải trong quá trình thanh toán nếu do lỗi của Lữ hành
						tourmanagement.</p>

					<p>Đảm bảo thực hiện đầy đủ mọi dịch vụ theo đúng chương trình
						mà quý khách đăng ký. Tuy nhiên chúng tôi có toàn quyền thay đổi
						lộ trình hoặc hủy bỏ chuyến đi du lịch bất cứ lúc nào mà chúng tôi
						thấy cần thiết vì sự an toàn cho quý khách.</p>

					<p>Mọi thay đổi nếu có sẽ được thông báo nhanh chóng cho quý
						khách ngay trước ngày khởi hành hoặc ngay sau khi phát hiện những
						phát sinh.</p>

					<p>
						<strong>Trường hợp miễm trách nhiệm đối với Lữ hành
							tourmanagement</strong>
					</p>

					<p>Lữ hành tourmanagement không chịu trách nhiệm về tất cả
						những thông tin mà quý khách cung cấp bởi chúng tôi không dễ dàng
						xác nhận chính xác quý khách nào đăng ký thông tin.</p>

					<p>Lữ hành tourmanagement không chịu trách nhiệm về việc thông
						tin của quý khách bị lấy cắp nếu như việc lấy cắp được thực hiện
						từ máy của quý khách do bị nhiễm virus máy tính hay do nguyên nhân
						nào khác.</p>

					<p>Lữ hành tourmanagement không chịu trách nhiệm đối với quý
						khách nếu xảy ra việc hệ thống máy tính của quý khách bị hư hại
						trong khi đang thanh toán hoặc bị can thiệp liên quan tới việc sử
						dụng một trang bên ngoài.</p>

					<p>Lữ hành tourmanagement không chịu trách nhiệm về việc mất dữ
						liệu thông tin của quý khách do sự cố khách quan như: thiên tai,
						hạn hán, hỏa hoạn, chiến tranh,…</p>

					<p>
						<strong>Trách nhiệm của khách hàng</strong>
					</p>

					<p>Quý khách cam kết hoàn toàn chịu trách nhiệm về các thông
						tin cá nhân, thông tin thẻ tín dụng đã được khai báo là trung
						thực, chính xác. Nếu có sai sót, giả mạo hay tranh chấp phát sinh
						thì Lữ hành tourmanagement có quyền hủy tour đã mua của quý khách.</p>

					<p>Quý khách có nhiệm vụ kiểm tra thông tin tài khoản để kịp
						thời để báo cho Lữ hành tourmanagement nếu có những sự cố. Thời
						hạn trong vòng 30 ngày tính từ ngày thanh toán, Lữ hành
						tourmanagement sẽ không nhận giải quyết bất cứ kiếu nại nào từ
						việc thanh toán.</p>

					<p>Quý khách không sử dụng các nội dung của trang web do Lữ
						hành tourmanagement quản lý cho mục đích thương mại nếu như chưa
						có sự đồng ý.</p>

					<p>Quý khách cần tự áp dụng cài đặt các biện pháp phòng ngừa để
						bảo đảm rằng bất cứ lựa chọn nào của quý khách khi sử dụng các
						trang web của Lữ hành tourmanagement không bị virus hoặc bất cứ
						mối đe dọa nào khác từ ngoài có thể can thiệp hoặc gây hư hại cho
						hệ thống máy tính của quý khách.</p>
				</div>
				<br>

				<div style="margin-bottom: 50px;">
					<div class="row">
						<div class="col" style="float: left;">
							<a href="trang-chu"><button class="button">TRỞ VỀ</button></a>
						</div>
						<div class="col" style="text-align: right;">
							<input type="submit" class="button" value="TIẾP TỤC">
						</div>
					</div>
				</div>
			</div>


		</div>
	</form>


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