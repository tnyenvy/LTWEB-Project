<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User</title>
<link href="./assets/libs/slick-carousel/slick/slick.css"
	rel="stylesheet" />
<link href="./assets/libs/tiny-slider/dist/tiny-slider.css"
	rel="stylesheet" />

<!-- Favicon icon-->
<link rel="shortcut icon" type="image/x-icon"
	href="./assets/images/favicon/favicon.ico" />

<!-- Libs CSS -->
<link href="./assets/libs/bootstrap-icons/font/bootstrap-icons.min.css"
	rel="stylesheet" />
<link href="./assets/libs/feather-webfont/dist/feather-icons.css"
	rel="stylesheet" />
<link href="./assets/libs/simplebar/dist/simplebar.min.css"
	rel="stylesheet" />

<!-- Theme CSS -->
<link rel="stylesheet" href="./assets/css/theme.min.css" />
<script async
	src="https://www.googletagmanager.com/gtag/js?id=G-M8S4MT3EYG"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag("js", new Date());

	gtag("config", "G-M8S4MT3EYG");
</script>
<script type="text/javascript">
	(function(c, l, a, r, i, t, y) {
		c[a] = c[a] || function() {
			(c[a].q = c[a].q || []).push(arguments);
		};
		t = l.createElement(r);
		t.async = 1;
		t.src = "https://www.clarity.ms/tag/" + i;
		y = l.getElementsByTagName(r)[0];
		y.parentNode.insertBefore(t, y);
	})(window, document, "clarity", "script", "kuc8w5o9nt");
</script>
<style>
/* Thêm viền cho modal */
.modal-content {
	border: 5px solid #90EE90; /* Viền màu xanh Bootstrap */
	border-radius: 10px; /* Bo tròn góc viền */
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Thêm hiệu ứng đổ bóng */
}
</style>
</head>
<body>

	<!-- HEADER -->
	<%@ include file="/commons/admin/header.jsp"%>

	<!-- BODY -->
	<sitemesh:write property="body" />

	<!-- FOOTER -->
	<%@ include file="/commons/admin/footer.jsp"%>

	<!-- Javascript-->
	<script src="./assets/js/Stores.js"></script>
	<script src="./assets/js/Home.js"></script>
	<script src="./assets/js/Cart.js"></script>
	<!-- Libs JS -->
	<!-- <script src="./assets/libs/jquery/dist/jquery.min.js"></script> -->
	<script src="./assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="./assets/libs/simplebar/dist/simplebar.min.js"></script>
	<script>
		loadAllStore();
	</script>
	<script>
		loadAllProduct();
	</script>
	<!--<script>getCartbefore();</script>-->
	<script>
		getUser();
	</script>
	<script>
		checkSpecial();
	</script>
	<!-- Theme JS -->
	<script src="./assets/js/theme.min.js"></script>

	<script src="./assets/js/vendors/jquery.min.js"></script>
	<script src="./assets/js/vendors/countdown.js"></script>
	<script src="./assets/libs/slick-carousel/slick/slick.min.js"></script>
	<script src="./assets/js/vendors/slick-slider.js"></script>
	<script src="./assets/libs/tiny-slider/dist/min/tiny-slider.js"></script>
	<script src="./assets/js/vendors/tns-slider.js"></script>
	<script src="./assets/js/vendors/zoom.js"></script>

</body>
</html>