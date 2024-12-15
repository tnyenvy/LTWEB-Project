<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!--import JSTL-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!--open footer -->
<div class="footer">
	<form action="${base }/home" method="post" modelAttribute="subcribe">
		<div class="contact">
			<div class="register">
				<div class="register-icon">
					<i class="far fa-envelope"></i>
				</div>
				<div class="register-title">Đăng ký ngay để nhanh chóng cập nhật thông báo</div>
			</div>
			<div class="search search-email">
				<input type="email" class="searchTerm"
					placeholder="Nhập email của bạn" id="email" name="email">
				<button type="button" onclick="home('${base}');" class="save-email">Đăng
					ký</button>

			</div>
			<div class="call">
				<div class="call-icon">
					<i class="fas fa-phone-square-alt"></i>
				</div>
				<div class="call-title">
					Liên hệ với chúng tôi: <span class="call-phone">01122334455</span>
				</div>
			</div>
		</div>

		<div id="TB_AJAX"
			style="text-align: center; margin-top: 15px; color: #766b6b; margin-bottom: -16px;">

		</div>
	</form>

	<div class="introduc">
		<div class="introduc-content">
			<div class="introduc-title">
				<h3>GIỚI THIỆU</h3>
			</div>
			<div class="introduc-logo">
				<div>Tune Vibe - Nơi bạn tìm thấy mọi thứ mình cần, nhanh chóng và tiện lợi!</div>
				</a>
			</div>
		</div>
		<div class="introduc-link">
			<div class="introduc-title">
				<h3>LIÊN KẾT</h3>
			</div>
			<div class="introduc-list">
				<ul>
					<li><a href="#">Tìm kiếm</a></li>
					<li><a href="${base }/introduction">Giới thiệu</a></li>
					<li><a href="#">Chính sách đổi trả</a></li>
					<li><a href="#">Chính sách bảo mật</a></li>
					<li><a href="#">Điều khoản dịch vụ</a></li>
				</ul>
			</div>
		</div>
		<div class="introduc-contact">
			<div class="introduc-title">
				<h3>THÔNG TIN LIÊN HỆ</h3>
			</div>
			<div class="introduc-list">
				<ul>
					<li><i class="fas fa-map-marker-alt"></i> Số 1 Đ. Võ Văn Ngân, Linh Chiểu, Thủ Đức, Hồ Chí Minh, Việt Nam</li>
					<li><i class="fas fa-phone-volume"></i> 01122334455</li>
					<li><i class="fas fa-paper-plane"></i> tunevibe.2024@gmail.com
					</li>
				</ul>
			</div>
		</div>
		<div class="introduc-fanpage">
			<div class="introduc-title">
				<h3>FANPAGE</h3>
			</div>
			<div class="introduc-list"></div>
		</div>
	</div>

</div>
<!--close footer-->
