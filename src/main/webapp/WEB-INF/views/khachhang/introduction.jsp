<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!--import JSTL-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- import SPRING-FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Giới thiệu - Tune Vibe</title>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<jsp:include page="/WEB-INF/views/khachhang/layouts/css.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="${base}/css/introduction.css">

</head>
<body>
	<main class="container">

		<div class="free">Miễn phí vận chuyển với đơn hàng trên 300k</div>
		<!--open header-->
		<jsp:include page="/WEB-INF/views/khachhang/layouts/header.jsp"></jsp:include>
		<!--close header-->

		<div class="navigation">
			<ul>
				<li><a href="${base }/home">Trang chủ </a></li>

				<li>/</li>

				<li>Giới thiệu</li>


			</ul>
		</div>
		<!-- open content -->
		<div class="content">
			<div class="content-title">
				<h4>Danh mục trang</h4>
				<div class="layer">
					<ul>
						<li><a href="#">Tìm kiếm</a></li>
						<li><a href="${base }/introduction">Giới thiệu</a></li>
						<li><a href="#">Chính sách đổi trả</a></li>
						<li><a href="#">Chính sách bảo mật</a></li>
						<li><a href="#">Điều khoản dịch vụ</a></li>
					</ul>
				</div>
			</div>
			<div class="content-intro">
				<h3>Lời giới thiệu</h3>
				<div class="about-us">
					<p>Tune Vibe là cửa hàng tiện lợi hiện đại, mang đến trải nghiệm mua sắm nhanh chóng vvới
                                       đa dạng các sản phẩm thiết yếu hàng ngày.</p>

					<p>Tại Tune Vibe, chúng tôi cung cấp mọi thứ bạn cần, từ đồ ăn nhẹ, thức uống, sản phẩm chăm sóc
					cá nhân đến các mặt hàng gia dụng, đảm bảo chất lượng và giá cả hợp lý.</p>

					<p>Hãy để Tune Vibe trở thành lựa chọn tin cậy cho mọi nhu cầu hàng ngày của bạn!</p>

					<p>Instagram: TuneVibe.VN</p>

					<p>Facebook: TuneVibe.VN</p>
				</div>
			</div>
		</div>
		<!--close content-->

		<!--open footer -->
		<jsp:include page="/WEB-INF/views/khachhang/layouts/footer.jsp"></jsp:include>
		<!--close footer-->
		<div class="copyright">
			Copyright <i class="far fa-copyright"></i> <a href="#">msic.</a> <a
				href="#">Powered by Haravan</a>
		</div>
	</main>
</body>

<jsp:include page="/WEB-INF/views/khachhang/layouts/js.jsp"></jsp:include>
<script type="text/javascript">
	
</script>
</html>