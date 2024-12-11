<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta content="Codescandy" name="author">
<title>Quản lý - Tune Vibe</title>
<!-- Favicon icon-->
<link rel="shortcut icon" type="image/x-icon"
	href="../assets/images/favicon/favicon.ico">


<!-- Libs CSS -->
<link href="../assets/libs/bootstrap-icons/font/bootstrap-icons.min.css"
	rel="stylesheet">
<link href="../assets/libs/feather-webfont/dist/feather-icons.css"
	rel="stylesheet">
<link href="../assets/libs/simplebar/dist/simplebar.min.css"
	rel="stylesheet">


<!-- Theme CSS -->
<link rel="stylesheet" href="../assets/css/theme.min.css">
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
   (function (c, l, a, r, i, t, y) {
      c[a] =
         c[a] ||
         function () {
            (c[a].q = c[a].q || []).push(arguments);
         };
      t = l.createElement(r);
      t.async = 1;
      t.src = "https://www.clarity.ms/tag/" + i;
      y = l.getElementsByTagName(r)[0];
      y.parentNode.insertBefore(t, y);
   })(window, document, "clarity", "script", "kuc8w5o9nt");
</script>

</head>

<body>
	<!-- main -->
	<div>
		<!-- navbar -->
		<nav class="navbar navbar-expand-lg navbar-glass">
			<div class="container-fluid">
				<div class="d-flex justify-content-between align-items-center w-100">
					<div class="d-flex align-items-center">
						<a class="text-inherit d-block d-xl-none me-4"
							data-bs-toggle="offcanvas" href="#offcanvasExample" role="button"
							aria-controls="offcanvasExample"> <svg
								xmlns="http://www.w3.org/2000/svg" width="32" height="32"
								fill="currentColor" class="bi bi-text-indent-right"
								viewBox="0 0 16 16">
						<path
									d="M2 3.5a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm10.646 2.146a.5.5 0 0 1 .708.708L11.707 8l1.647 1.646a.5.5 0 0 1-.708.708l-2-2a.5.5 0 0 1 0-.708l2-2zM2 6.5a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5zm0 3a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5zm0 3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z" />
					</svg>
						</a>

						<form role="search">
							<label for="search" class="form-label visually-hidden">Tìm kiếm</label>
							<input class="form-control" type="search" placeholder="Tìm kiếm"
								aria-label="Search" id="search" />
						</form>
					</div>
					<div>
						<ul
							class="list-unstyled d-flex align-items-center mb-0 ms-5 ms-lg-0">
							<li class="dropdown-center"><a
								class="position-relative btn-icon btn-ghost-secondary btn rounded-circle"
								role="button" data-bs-toggle="dropdown"
								aria-expanded="false"> <i class="bi bi-bell fs-5"></i> <span
									class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger mt-2 ms-n2">
										2 <span class="visually-hidden">unread messages</span>
								</span>
							</a>
								<div
									class="dropdown-menu dropdown-menu-end dropdown-menu-lg p-0 border-0">
									<div
										class="border-bottom p-5 d-flex justify-content-between align-items-center">
										<div>
											<h5 class="mb-1">Notifications</h5>
											<p class="mb-0 small">You have 2 unread messages</p>
										</div>
										<a href="#!" class="text-muted"> <a href="#"
											class="btn btn-ghost-secondary btn-icon rounded-circle"
											data-bs-toggle="tooltip" data-bs-placement="bottom"
											data-bs-title="Mark all as read"> <svg
													xmlns="http://www.w3.org/2000/svg" width="14" height="14"
													fill="currentColor" class="bi bi-check2-all text-success"
													viewBox="0 0 16 16">
											<path
														d="M12.354 4.354a.5.5 0 0 0-.708-.708L5 10.293 1.854 7.146a.5.5 0 1 0-.708.708l3.5 3.5a.5.5 0 0 0 .708 0l7-7zm-4.208 7-.896-.897.707-.707.543.543 6.646-6.647a.5.5 0 0 1 .708.708l-7 7a.5.5 0 0 1-.708 0z" />
											<path
														d="m5.354 7.146.896.897-.707.707-.897-.896a.5.5 0 1 1 .708-.708z" />
										</svg>
										</a>
										</a>
									</div>
									<div data-simplebar style="height: 250px">
										<!-- List group -->
										<ul
											class="list-group list-group-flush notification-list-scroll fs-6">
											<!-- List group item -->
											<li
												class="list-group-item px-5 py-4 list-group-item-action active">
												<a href="#!" class="text-muted">
													<div class="d-flex">
														<img src="../assets/images/avatar/avatar-1.jpg" alt=""
															class="avatar avatar-md rounded-circle" />
														<div class="ms-4">
															<p class="mb-1">
																<span class="text-dark">Your order is placed</span>
																waiting for shipping
															</p>
															<span> <svg xmlns="http://www.w3.org/2000/svg"
																	width="12" height="12" fill="currentColor"
																	class="bi bi-clock text-muted" viewBox="0 0 16 16">
															<path
																		d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z" />
															<path
																		d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z" />
														</svg> <small class="ms-2">1 minute ago</small>
															</span>
														</div>
													</div>
											</a>
											</li>
											<li class="list-group-item px-5 py-4 list-group-item-action">
												<a href="#!" class="text-muted">
													<div class="d-flex">
														<img src="../assets/images/avatar/avatar-5.jpg" alt=""
															class="avatar avatar-md rounded-circle" />
														<div class="ms-4">
															<p class="mb-1">
																<span class="text-dark">Jitu Chauhan</span> answered to
																your pending order list with notes
															</p>
															<span> <svg xmlns="http://www.w3.org/2000/svg"
																	width="12" height="12" fill="currentColor"
																	class="bi bi-clock text-muted" viewBox="0 0 16 16">
															<path
																		d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z" />
															<path
																		d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z" />
														</svg> <small class="ms-2">2 days ago</small>
															</span>
														</div>
													</div>
											</a>
											</li>
											<li class="list-group-item px-5 py-4 list-group-item-action">
												<a href="#!" class="text-muted">
													<div class="d-flex">
														<img src="../assets/images/avatar/avatar-2.jpg" alt=""
															class="avatar avatar-md rounded-circle" />
														<div class="ms-4">
															<p class="mb-1">
																<span class="text-dark">You have new messages</span> 2
																unread messages
															</p>
															<span> <svg xmlns="http://www.w3.org/2000/svg"
																	width="12" height="12" fill="currentColor"
																	class="bi bi-clock text-muted" viewBox="0 0 16 16">
															<path
																		d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z" />
															<path
																		d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z" />
														</svg> <small class="ms-2">3 days ago</small>
															</span>
														</div>
													</div>
											</a>
											</li>
										</ul>
									</div>
									<div class="border-top px-5 py-4 text-center">
										<a href="#!">Xem toàn bộ</a>
									</div>
								</div></li>
							<li class="dropdown ms-4"><a role="button"
								data-bs-toggle="dropdown" aria-expanded="false"> <img
									src="../assets/images/avatar/avatar-1.jpg" alt=""
									class="avatar avatar-md rounded-circle" />
							</a>

								<div class="dropdown-menu dropdown-menu-end p-0">
									<div class="lh-1 px-5 py-4 border-bottom">
										<h5 class="mb-1 h6">
											<%= request.getAttribute("adminName") != null ? request.getAttribute("adminName") : "Unknown Admin" %>
										</h5>
										<small> <%= request.getAttribute("adminEmail") != null ? request.getAttribute("adminEmail") : "No Email" %>
										</small>
									</div>

									<ul class="list-unstyled px-2 py-3">
										<li><a class="dropdown-item" href="/">Trang chủ</a></li>
										<li><a class="dropdown-item" href="./admininfo">Thông tin cá nhân</a></li>
									</ul>
									<div class="border-top px-5 py-3">
										<a href="/signin">Đăng xuất</a>
									</div>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>


		<div class="main-wrapper">
			<!-- navbar vertical -->
			<!-- navbar -->
			<nav class="navbar-vertical-nav d-none d-xl-block">
				<div class="navbar-vertical">
					<div class="px-4 py-5">
						<a href="./index-admin" class="navbar-brand"> <img
							src="../assets/images/logo/convenience-store-svgrepo-com.svg"
							alt="" />
						</a>
					</div>
					<div class="navbar-vertical-content flex-grow-1" data-simplebar="">
						<ul class="navbar-nav flex-column" id="sideNavbar">
							<li class="nav-item"><a class="nav-link  active "
								href="./index-admin">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-house"></i></span>
										<span class="nav-link-text">Quản lý</span>
									</div>
							</a></li>
							<li class="nav-item mt-6 mb-3"><span class="nav-label">Quản lý cửa hàng</span></li>
							<li class="nav-item"><a class="nav-link "
								href="./products">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-cart"></i></span>
										<span class="nav-link-text">Sản phẩm</span>
									</div>
							</a></li>
							<!-- <li class="nav-item"><a class="nav-link "
								href="./categories">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-list-task"></i></span>
										<span class="nav-link-text">Danh mục</span>
									</div>
							</a></li> -->
							<li class="nav-item"><a class="nav-link  collapsed "
								data-bs-toggle="collapse"
								data-bs-target="#navCategoriesOrders" aria-expanded="false"
								aria-controls="navCategoriesOrders">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-bag"></i></span> <span
											class="nav-link-text">Đơn hàng</span>
									</div>
							</a>
								<div id="navCategoriesOrders" class="collapse "
									data-bs-parent="#sideNavbar">
									<ul class="nav flex-column">
										<li class="nav-item"><a class="nav-link "
											href="./orders">Các đơn hàng</a></li>
											
										<!-- Link chuyển hướng để xem chi tiết từng đơn hàng -->
										<li class="nav-item"><a class="nav-link "
											href="./orderdetail">Chi tiết đơn hàng</a></li>
											
									</ul>
								</div></li>

							<li class="nav-item"><a class="nav-link "
								href="./vendors">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-shop"></i></span>
										<span class="nav-link-text">Nhà cung cấp</span>
									</div>
							</a></li>
							<li class="nav-item"><a class="nav-link "
								href="./customers">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-people"></i></span>
										<span class="nav-link-text">Khách hàng</span>
									</div>
							</a></li>
						<!--	<li class="nav-item"><a class="nav-link  collapsed "
								href="../dashboard/customer.jsp" data-bs-toggle="collapse" data-bs-target="#navCustomer"
								aria-expanded="false" aria-controls="navCustomer">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-people"></i></span>
										<span class="nav-link-text">Khách hàng</span>
									</div>
							</a>
							 	<div id="navCustomer" class="collapse "
									data-bs-parent="#sideNavbar">
									<ul class="nav flex-column">
										<li class="nav-item"><a class="nav-link "
											href="../dashboard/customers.html">Thông tin khách hàng</a></li>
										
										<li class="nav-item"><a class="nav-link "
											href="../dashboard/create-customers.html">Create
												Customers</a></li>
										<!-- Nav item 
										<li class="nav-item"><a class="nav-link "
											href="../dashboard/customers-edits.html">Edit Customers</a></li>   
									</ul>
								</div> -->
								

							<li class="nav-item"><a class="nav-link "
								href="./reviews">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-star"></i></span>
										<span class="nav-link-text">Đánh giá</span>
									</div>
							</a></li>

						</ul>
					</div>
				</div>
			</nav>

			<nav
				class="navbar-vertical-nav offcanvas offcanvas-start navbar-offcanvac"
				tabindex="-1" id="offcanvasExample">
				<div class="navbar-vertical">
					<div
						class="px-4 py-5 d-flex justify-content-between align-items-center">
						<a href="../dashboard/index.jsp" class="navbar-brand"> <img
							src="../assets/images/logo/convenience-store-svgrepo-com.svg"
							alt="" />
						</a>
						<button type="button" class="btn-close"
							data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div class="navbar-vertical-content flex-grow-1" data-simplebar="">
						<ul class="navbar-nav flex-column">
							<li class="nav-item"><a class="nav-link  active "
								href="../dashboard/index.jsp">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-house"></i></span>
										<span>Quản lý</span>
									</div>
							</a></li>
							<li class="nav-item mt-6 mb-3"><span class="nav-label">Quản lý cửa hàng</span></li>
							<li class="nav-item"><a class="nav-link "
								href="../dashboard/products.html">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-cart"></i></span>
										<span class="nav-link-text">Sản phẩm</span>
									</div>
							</a></li>
							<!-- <li class="nav-item"><a class="nav-link "
								href="../dashboard/categories.html">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-list-task"></i></span>
										<span class="nav-link-text">Danh mục</span>
									</div>
							</a></li> -->
							<li class="nav-item"><a class="nav-link  collapsed "
								href="#" data-bs-toggle="collapse"
								data-bs-target="#navCategoriesOrders" aria-expanded="false"
								aria-controls="navCategoriesOrders">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-bag"></i></span> <span
											class="nav-link-text">Đơn hàng</span>
									</div>
							</a>
								<div id="navCategoriesOrders" class="collapse "
									data-bs-parent="#sideNavbar">
									<ul class="nav flex-column">
										<li class="nav-item"><a class="nav-link "
											href="../dashboard/orders.jsp">Các đơn hàng</a></li>
											
										<!-- Link chuyển hướng để xem chi tiết từng đơn hàng -->
										<li class="nav-item"><a class="nav-link "
											href="./orderdetail">Chi tiết đơn hàng</a></li>
											
									</ul>
								</div></li>
							<li class="nav-item"><a class="nav-link "
								href="../dashboard/vendor-grid.html">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-shop"></i></span>
										<span class="nav-link-text">Nhà cung cấp</span>
									</div>
							</a></li>
							<li class="nav-item"><a class="nav-link "
								href="../dashboard/customers.html">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-people"></i></span>
										<span class="nav-link-text">Khách hàng</span>
									</div>
							</a></li>
							<li class="nav-item"><a class="nav-link "
								href="../dashboard/reviews.html">
									<div class="d-flex align-items-center">
										<span class="nav-link-icon"><i class="bi bi-star"></i></span>
										<span class="nav-link-text">Đánh giá</span>
									</div>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>

			<!-- main wrapper -->
			<main class="main-content-wrapper">
				<section class="container">
					<!-- row -->
					<div class="row mb-8">
						<div class="col-md-12">
							<!-- card -->
							<div class="card bg-light border-0 rounded-4"
								style="background-image: url(../assets/images/slider/slider-image-1.jpg); background-repeat: no-repeat; background-size: cover; background-position: right">
								<div class="card-body p-lg-12">
									<h1>Chào mừng trở lại!</h1>
									<p></p>
									<a href="./products" class="btn btn-primary">Thêm sản phẩm</a>
								</div>
							</div>
						</div>
					</div>
					<!-- table -->
					<div class="table-responsive-xl mb-6 mb-lg-0">
						<div class="row flex-nowrap pb-3 pb-lg-0">
							<div class="col-lg-4 col-12 mb-6">
								<!-- card -->
								<div class="card h-100 card-lg">
									<!-- card body -->
									<div class="card-body p-6">
										<!-- heading -->
										<div
											class="d-flex justify-content-between align-items-center mb-6">
											<div>
												<h4 class="mb-0 fs-5">Tổng thu nhập</h4>
											</div>
											<div
												class="icon-shape icon-md bg-light-danger text-dark-danger rounded-circle">
												<i class="bi bi-currency-dollar fs-5"></i>
											</div>
										</div>
										<!-- project number -->
										<div class="lh-1">
											<h1 class="mb-2 fw-bold fs-2">$93,438.78</h1>
											<span>Doanh thu hàng tháng</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-12 mb-6">
								<!-- card -->
								<div class="card h-100 card-lg">
									<!-- card body -->
									<div class="card-body p-6">
										<!-- heading -->
										<div
											class="d-flex justify-content-between align-items-center mb-6">
											<div>
												<h4 class="mb-0 fs-5">Đơn hàng</h4>
											</div>
											<div
												class="icon-shape icon-md bg-light-warning text-dark-warning rounded-circle">
												<i class="bi bi-cart fs-5"></i>
											</div>
										</div>
										<!-- project number -->
										<div class="lh-1">
											<h1 class="mb-2 fw-bold fs-2">42,339</h1>
											<span> <span class="text-dark me-1">35+</span> Đơn hàng mới
										
											</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-12 mb-6">
								<!-- card -->
								<div class="card h-100 card-lg">
									<!-- card body -->
									<div class="card-body p-6">
										<!-- heading -->
										<div
											class="d-flex justify-content-between align-items-center mb-6">
											<div>
												<h4 class="mb-0 fs-5">Khách hàng</h4>
											</div>
											<div
												class="icon-shape icon-md bg-light-info text-dark-info rounded-circle">
												<i class="bi bi-people fs-5"></i>
											</div>
										</div>
										<!-- project number -->
										<div class="lh-1">
											<h1 class="mb-2 fw-bold fs-2">39,354</h1>
											<span> <span class="text-dark me-1">30+</span> Khách hàng mới
												
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- row -->
					<div class="row">
						<div class="col-xl-8 col-lg-6 col-md-12 col-12 mb-6">
							<!-- card -->
							<div class="card h-100 card-lg">
								<div class="card-body p-6">
									<!-- heading -->
									<div class="d-flex justify-content-between">
										<div>
											<h3 class="mb-1 fs-5">Revenue</h3>
											<small>(+63%) than last year)</small>
										</div>
										<div>
											<!-- select option -->
											<select class="form-select">
												<option selected>2019</option>
												<option value="2023">2020</option>
												<option value="2024">2021</option>
												<option value="2025">2022</option>
												<option value="2025">2023</option>
											</select>
										</div>
									</div>
									<!-- chart -->
									<div id="revenueChart" class="mt-6"></div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-6 col-12 mb-6">
							<!-- card -->
							<div class="card h-100 card-lg">
								<!-- card body -->
								<div class="card-body p-6">
									<!-- heading -->
									<h3 class="mb-0 fs-5">Total Sales</h3>
									<div id="totalSale" class="mt-6 d-flex justify-content-center"></div>
									<div class="mt-4">
										<!-- list -->
										<ul class="list-unstyled mb-0">
											<li class="mb-2"><svg xmlns="http://www.w3.org/2000/svg"
													width="8" height="8" fill="currentColor"
													class="bi bi-circle-fill text-primary" viewBox="0 0 16 16">
                                          <circle cx="8" cy="8" r="8" />
                                       </svg> <span class="ms-1"> <span
													class="text-dark">Shippings $32.98</span> (2%)
											</span></li>
											<li class="mb-2"><svg xmlns="http://www.w3.org/2000/svg"
													width="8" height="8" fill="currentColor"
													class="bi bi-circle-fill text-warning" viewBox="0 0 16 16">
                                          <circle cx="8" cy="8" r="8" />
                                       </svg> <span class="ms-1"> <span
													class="text-dark">Refunds $11</span> (11%)
											</span></li>
											<li class="mb-2"><svg xmlns="http://www.w3.org/2000/svg"
													width="8" height="8" fill="currentColor"
													class="bi bi-circle-fill text-danger" viewBox="0 0 16 16">
                                          <circle cx="8" cy="8" r="8" />
                                       </svg> <span class="ms-1"> <span
													class="text-dark">Order $14.87</span> (1%)
											</span></li>
											<li><svg xmlns="http://www.w3.org/2000/svg" width="8"
													height="8" fill="currentColor"
													class="bi bi-circle-fill text-info" viewBox="0 0 16 16">
                                          <circle cx="8" cy="8" r="8" />
                                       </svg> <span class="ms-1"> <span
													class="text-dark">Income 3,271</span> (86%)
											</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- row -->
					<div class="row">
						<div class="col-xl-6 col-lg-6 col-md-12 col-12 mb-6">
							<!-- card -->
							<div class="card h-100 card-lg">
								<!-- card body -->
								<div class="card-body p-6">
									<h3 class="mb-0 fs-5">Sales Overview</h3>
									<div class="mt-6">
										<!-- text -->
										<div class="mb-5">
											<div
												class="d-flex align-items-center justify-content-between">
												<h5 class="fs-6">Total Profit</h5>
												<span> <span class="me-1 text-dark">$1,619</span>
													(8.6%)
												</span>
											</div>
											<!-- main wrapper -->
											<div>
												<!-- progressbar -->
												<div class="progress bg-light-primary" style="height: 6px">
													<div class="progress-bar bg-primary" role="progressbar"
														aria-label="Example 1px high" style="width: 25%"
														aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</div>
										</div>
										<div class="mb-5">
											<!-- text -->
											<div
												class="d-flex align-items-center justify-content-between">
												<h5 class="fs-6">Total Income</h5>
												<span> <span class="me-1 text-dark">$3,571</span>
													(86.4%)
												</span>
											</div>
											<div>
												<!-- progressbar -->
												<div class="progress bg-info-soft" style="height: 6px">
													<div class="progress-bar bg-info" role="progressbar"
														aria-label="Example 1px high" style="width: 88%"
														aria-valuenow="88" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</div>
										</div>
										<div>
											<!-- text -->
											<div
												class="d-flex align-items-center justify-content-between">
												<h5 class="fs-6">Total Expenses</h5>
												<span> <span class="me-1 text-dark">$3,430</span>
													(74.5%)
												</span>
											</div>
											<div>
												<!-- progressbar -->
												<div class="progress bg-light-danger" style="height: 6px">
													<div class="progress-bar bg-danger" role="progressbar"
														aria-label="Example 1px high" style="width: 45%"
														aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-6 col-lg-6 col-md-12 col-12 mb-6">
							<div class="position-relative h-100">
								<!-- card -->
								<div class="card card-lg mb-6">
									<!-- card body -->
									<div class="card-body px-6 py-8">
										<div class="d-flex align-items-center">
											<div>
												<!-- svg -->
												<svg xmlns="http://www.w3.org/2000/svg" width="32"
													height="32" fill="currentColor"
													class="bi bi-bell text-warning" viewBox="0 0 16 16">
                                          <path
														d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z" />
                                       </svg>
											</div>
											<!-- text -->
											<div class="ms-4">
												<h5 class="mb-1">Start your day with New Notification.</h5>
												<p class="mb-0">
													You have <a class="link-info" href="#!">2 new
														notification</a>
												</p>
											</div>
										</div>
									</div>
								</div>
								<!-- card -->
								<div class="card card-lg">
									<!-- card body -->
									<div class="card-body px-6 py-8">
										<div class="d-flex align-items-center">
											<!-- svg -->
											<div>
												<svg xmlns="http://www.w3.org/2000/svg" width="32"
													height="32" fill="currentColor"
													class="bi bi-lightbulb text-success" viewBox="0 0 16 16">
                                          <path
														d="M2 6a6 6 0 1 1 10.174 4.31c-.203.196-.359.4-.453.619l-.762 1.769A.5.5 0 0 1 10.5 13a.5.5 0 0 1 0 1 .5.5 0 0 1 0 1l-.224.447a1 1 0 0 1-.894.553H6.618a1 1 0 0 1-.894-.553L5.5 15a.5.5 0 0 1 0-1 .5.5 0 0 1 0-1 .5.5 0 0 1-.46-.302l-.761-1.77a1.964 1.964 0 0 0-.453-.618A5.984 5.984 0 0 1 2 6zm6-5a5 5 0 0 0-3.479 8.592c.263.254.514.564.676.941L5.83 12h4.342l.632-1.467c.162-.377.413-.687.676-.941A5 5 0 0 0 8 1z" />
                                       </svg>
											</div>
											<!-- text -->
											<div class="ms-4">
												<h5 class="mb-1">Monitor your Sales and Profitability</h5>
												<p class="mb-0">
													<a class="link-info" href="#!">View Performance</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- row -->
					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-12 col-12 mb-6">
							<div class="card h-100 card-lg">
								<!-- heading -->
								<div class="p-6">
									<h3 class="mb-0 fs-5">Các đơn hàng</h3>
								</div>
								<div class="card-body p-0">
									<!-- table -->
									<div class="table-responsive">
										<table
											class="table table-centered table-borderless text-nowrap table-hover">
											<thead class="bg-light">
												<tr>
													<th scope="col">Mã đơn</th>
													<th scope="col">Tên sản phẩm</th>
													<th scope="col">Hạn sử dụng</th>
													<th scope="col">Giá tiền</th>
													<th scope="col">Trạng thái</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>#FC0005</td>
													<td>Haldiram's Sev Bhujia</td>
													<td>28 March 2023</td>
													<td>$18.00</td>
													<td><span
														class="badge bg-light-primary text-dark-primary">Shipped</span>
													</td>
												</tr>
												<tr>
													<td>#FC0004</td>
													<td>NutriChoice Digestive</td>
													<td>24 March 2023</td>
													<td>$24.00</td>
													<td><span
														class="badge bg-light-warning text-dark-warning">Pending</span>
													</td>
												</tr>
												<tr>
													<td>#FC0003</td>
													<td>Onion Flavour Potato</td>
													<td>8 Feb 2023</td>
													<td>$9.00</td>
													<td><span
														class="badge bg-light-danger text-dark-danger">Cancel</span>
													</td>
												</tr>
												<tr>
													<td>#FC0002</td>
													<td>Blueberry Greek Yogurt</td>
													<td>20 Jan 2023</td>
													<td>$12.00</td>
													<td><span
														class="badge bg-light-warning text-dark-warning">Pending</span>
													</td>
												</tr>
												<tr>
													<td>#FC0001</td>
													<td>Slurrp Millet Chocolate</td>
													<td>14 Jan 2023</td>
													<td>$8.00</td>
													<td><span class="badge bg-light-info text-dark-info">Processing</span>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</main>
		</div>
	</div>

	<!-- Libs JS -->
	<!-- <script src="../assets/libs/jquery/dist/jquery.min.js"></script> -->
	<script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="../assets/libs/simplebar/dist/simplebar.min.js"></script>

	<!-- Theme JS -->
	<script src="../assets/js/theme.min.js"></script>

	<script src="../assets/libs/apexcharts/dist/apexcharts.min.js"></script>
	<script src="../assets/js/vendors/chart.js"></script>
</body>
</html>
