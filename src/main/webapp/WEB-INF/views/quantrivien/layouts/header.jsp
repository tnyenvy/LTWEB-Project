<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<div class="header-area">
	<div class="row align-items-center">
		<!-- nav and search button -->
		<div class="col-md-6 col-sm-8 clearfix">
			<div class="nav-btn pull-left">
				<span></span> <span></span> <span></span>
			</div>
			<div class="search-box pull-left">
				<form action="#">
					<input type="text" name="search" placeholder="Tìm kiếm..." required>
					<i class="fas fa-search"></i>
				</form>
			</div>
		</div>
		<!-- profile info & task notification -->
		<div class="col-md-6 col-sm-4 clearfix">
			<ul class="notification-area pull-right">

				<li id="full-view-exit"><i class="ti-zoom-out"></i></li>
				<li class="dropdown"><i class="fa fa-users"
					data-toggle="dropdown"> <span>2</span>
				</i>
					<div class="dropdown-menu bell-notify-box notify-box">
						<span class="notify-title">Bạn có thông báo mới! <a
							href="#">Xem chi tiết</a></span>
						<div class="nofity-list">
							<a href="#" class="notify-item">
								<div class="notify-thumb">
									<i class="ti-key btn-danger"></i>
								</div>
								<div class="notify-text">
									<p>Bạn vừa đổi mật khẩu</p>
									<span>Mới nhất</span>
								</div>
							</a> <a href="#" class="notify-item">
								<div class="notify-thumb">
									<i class="ti-comments-smiley btn-info"></i>
								</div>
								<div class="notify-text">
									<p>Có đánh giá mới</p>
									<span>30 giây</span>
								</div>
							</a> <a href="#" class="notify-item">
								<div class="notify-thumb">
									<i class="ti-key btn-primary"></i>
								</div>
								<div class="notify-text">
									<p>Vy vừa thích đăng ký</p>
									<span>50 giây</span>
								</div>
							</a> <a href="#" class="notify-item">
								<div class="notify-thumb">
									<i class="ti-comments-smiley btn-info"></i>
								</div>
								<div class="notify-text">
									<p>Có đánh giá mới</p>
									<span>60 Seconds ago</span>
								</div>
							</a> <a href="#" class="notify-item">
								<div class="notify-thumb">
									<i class="ti-key btn-primary"></i>
								</div>
								<div class="notify-text">
									<p>Có đánh giá mới</p>
									<span>5 phút trước</span>
								</div>
							</a> <a href="#" class="notify-item">
								<div class="notify-thumb">
									<i class="ti-key btn-danger"></i>
								</div>
								<div class="notify-text">
									<p>Thay đổi mật khẩu thành công</p>
									<span>30 phút trước</span>
								</div>
						</div>
					</div></li>

			</ul>
		</div>
	</div>
</div>