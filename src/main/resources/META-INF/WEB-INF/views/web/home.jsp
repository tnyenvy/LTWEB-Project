<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta content="Codescandy" name="author" />
<title>Cửa hàng tiện lợi Tune Vibe</title>
</head>

<body>
	<!-- navbar -->
	<div class="border-bottom">

		<div class="py-5">
			<div class="container">
				<div class="row w-100 align-items-center gx-lg-2 gx-0">

					<!-- LOGO -->
					<div class="col-xxl-2 col-lg-3 col-md-6 col-5">
						<a class="navbar-brand d-none d-lg-block" href="./index.html">
							<img src="./assets/images/logo/convenience-store-svgrepo-com.svg" />
						</a>
						<div class="d-flex justify-content-between w-100 d-lg-none">
							<a class="navbar-brand" href="./index.html"> <img
								src="./assets/images/logo/convenience-store-svgrepo-com.svg" />
							</a>
						</div>
					</div>


					<div class="col-xxl-5 col-lg-5 d-none d-lg-block">
						<form onsubmit="searchProduct();return false;">
							<div class="input-group">
								<input id="search-input" class="form-control rounded" type="search"
									placeholder="Tìm kiếm sản phẩm" /> <span
									class="input-group-append">
									<button
										class="btn bg-white border border-start-0 ms-n10 rounded-0 rounded-end"
										type="button" onclick="searchProduct()">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-search">
                                    <circle cx="11" cy="11" r="8"></circle>
                                    <line x1="21" y1="21" x2="16.65"
												y2="16.65"></line>
                                 </svg>
									</button>
								</span>
							</div>
						</form>
					</div>
					<div class="col-md-2 col-xxl-3 d-none d-lg-block">
						<!-- Button trigger modal -->
						<button id="btnStore" type="button"
							class="btn btn-outline-gray-400 text-muted"
							data-bs-toggle="modal" data-bs-target="#locationModal">
							<i class="feather-icon icon-map-pin me-2"></i> Chọn cửa hàng gần
							bạn
						</button>
					</div>
					<div class="col-lg-2 col-xxl-2 text-end col-md-6 col-7">
						<div class="list-inline">
							<div class="list-inline-item me-5"></div>
							<div class="list-inline-item me-5">
								<div class="text-muted" onclick="isSignin()">
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" class="feather feather-user">
                                 <path
											d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                 <circle cx="12" cy="7" r="4"></circle>
                              </svg>
								</div>
							</div>
							<div class="list-inline-item me-5 me-lg-0">
								<a class="text-muted position-relative"
									data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
									href="#offcanvasExample" role="button"
									aria-controls="offcanvasRight" onclick="showAddress()"> <svg
										xmlns="http://www.w3.org/2000/svg" width="20" height="20"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" class="feather feather-shopping-bag">
                                 <path
											d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                                 <line x1="3" y1="6" x2="21" y2="6"></line>
                                 <path d="M16 10a4 4 0 0 1-8 0"></path>
                              </svg>

								</a>
							</div>
							<div class="list-inline-item d-inline-block d-lg-none">
								<!-- Button -->
								<button class="navbar-toggler collapsed" type="button"
									data-bs-toggle="offcanvas" data-bs-target="#navbar-default"
									aria-controls="navbar-default" aria-label="Toggle navigation">
									<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
										fill="currentColor"
										class="bi bi-text-indent-left text-primary"
										viewBox="0 0 16 16">
                                 <path
											d="M2 3.5a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm.646 2.146a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1 0 .708l-2 2a.5.5 0 0 1-.708-.708L4.293 8 2.646 6.354a.5.5 0 0 1 0-.708zM7 6.5a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5zm0 3a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5zm-5 3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z" />
                              </svg>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<nav
			class="navbar navbar-expand-lg navbar-light navbar-default py-0 pb-lg-4"
			aria-label="Offcanvas navbar large">
			<div class="container">
				<div class="offcanvas offcanvas-start" tabindex="-1"
					id="navbar-default" aria-labelledby="navbar-defaultLabel">
					<div class="offcanvas-header pb-1">
						<a href="./index.html"><img
							src="./assets/images/logo/freshcart-logo.svg"
							alt="eCommerce HTML Template" /></a>
						<button type="button" class="btn-close"
							data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div class="offcanvas-body">
						<div class="d-block d-lg-none mb-4">
							<form action="#">
								<div class="input-group">
									<input class="form-control rounded" type="search"
										placeholder="Search for products" /> <span
										class="input-group-append">
										<button
											class="btn bg-white border border-start-0 ms-n10 rounded-0 rounded-end"
											type="button">
											<svg xmlns="http://www.w3.org/2000/svg" width="16"
												height="16" viewBox="0 0 24 24" fill="none"
												stroke="currentColor" stroke-width="2"
												stroke-linecap="round" stroke-linejoin="round"
												class="feather feather-search">
                                       <circle cx="11" cy="11" r="8"></circle>
                                       <line x1="21" y1="21" x2="16.65"
													y2="16.65"></line>
                                    </svg>
										</button>
									</span>
								</div>
							</form>
							<div class="mt-2">
								<button type="button"
									class="btn btn-outline-gray-400 text-muted w-100"
									data-bs-toggle="modal" data-bs-target="#locationModal">
									<i class="feather-icon icon-map-pin me-2"></i> Pick Location
								</button>
							</div>
						</div>
						<div class="d-block d-lg-none mb-4">
							<a
								class="btn btn-primary w-100 d-flex justify-content-center align-items-center"
								data-bs-toggle="collapse" href="#collapseExample" role="button"
								aria-expanded="false" aria-controls="collapseExample"> <span
								class="me-2"> <svg xmlns="http://www.w3.org/2000/svg"
										width="16" height="16" viewBox="0 0 24 24" fill="none"
										stroke="currentColor" stroke-width="1.5"
										stroke-linecap="round" stroke-linejoin="round"
										class="feather feather-grid">
                                 <rect x="3" y="3" width="7" height="7"></rect>
                                 <rect x="14" y="3" width="7" height="7"></rect>
                                 <rect x="14" y="14" width="7"
											height="7"></rect>
                                 <rect x="3" y="14" width="7" height="7"></rect>
                              </svg>
							</span> All Departments
							</a>
							<div class="collapse mt-2" id="collapseExample">
								<div class="card card-body">
									<ul class="mb-0 list-unstyled">
										<li><a class="dropdown-item"
											href="./pages/shop-grid.html">Dairy, Bread & Eggs</a></li>
										<li><a class="dropdown-item"
											href="./pages/shop-grid.html">Snacks & Munchies</a></li>
										<li><a class="dropdown-item"
											href="./pages/shop-grid.html">Fruits & Vegetables</a></li>
										<li><a class="dropdown-item"
											href="./pages/shop-grid.html">Cold Drinks & Juices</a></li>
										<li><a class="dropdown-item"
											href="./pages/shop-grid.html">Breakfast & Instant Food</a></li>
										<li><a class="dropdown-item"
											href="./pages/shop-grid.html">Bakery & Biscuits</a></li>
										<li><a class="dropdown-item"
											href="./pages/shop-grid.html">Chicken, Meat & Fish</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!-- Modal Đky/Đnhập tài khoản-->
	<div class="modal fade" id="userModal" tabindex="-1"
		aria-labelledby="userModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content p-4">
				<div class="modal-header border-0">
					<h5 class="modal-title fs-3 fw-bold" id="userModalLabel">Đăng
						ký tài khoản</h5>

					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form class="needs-validation" novalidate>
						<div class="mb-3">
							<label for="fullName" class="form-label">Tên đăng nhập</label> <input
								type="text" class="form-control" id="fullName"
								placeholder="Enter Your Name" required />
							<div class="invalid-feedback">Vui lòng nhập tên của bạn</div>
						</div>
						<div class="mb-3">
							<label for="email" class="form-label">Địa chỉ Email</label> <input
								type="email" class="form-control" id="email"
								placeholder="Enter Email address" required />
							<div class="invalid-feedback">Vui lòng nhập địa chỉ Emai</div>
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">Mật khẩu</label> <input
								type="password" class="form-control" id="password"
								placeholder="Enter Password" required />
							<div class="invalid-feedback">Vui lòng nhập mật khẩu</div>
							<small class="form-text"> Bằng cách tiếp tục, bạn đồng ý
								với <a href="#!">Điều Khoản Sử Dụng</a> và <a href="#!">Điều
									Khoản Bảo Mật</a> của chúng tôi.
							</small>
						</div>

						<button type="submit" class="btn btn-primary" type="submit">Đăng
							ký</button>
					</form>
				</div>
				<div class="modal-footer border-0 justify-content-center">
					Bạn đã có tài khoản? <a href="./pages/signin.html">Đăng nhập</a>
					<!-- <a href="#">Sign in</a> -->
				</div>
			</div>
		</div>
	</div>

	<!-- Shop Cart -->

	<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight"
		aria-labelledby="offcanvasRightLabel">
		<div class="offcanvas-header border-bottom">
			<div class="text-start">
				<h5 id="offcanvasRightLabel" class="mb-0 fs-4">Giỏ hàng</h5>
				<small id="address-text">Giao tới: </small>
			</div>
			<button type="button" class="btn-close text-reset"
				data-bs-dismiss="offcanvas" aria-label="Close"></button>
		</div>
		<div class="offcanvas-body">
			<div>
				<!-- alert -->

				<ul class="list-group list-group-flush" id="cart-list">

				</ul>
				<!-- btn -->
				<div class="d-flex justify-content-between mt-4">
					<!-- Sửa nút Thanh toán -->
					<a href="userorder.html" class="btn btn-primary">Thanh toán</a>

					<!-- Nút Xóa giỏ hàng -->
					<div class="btn btn-dark" onclick="deleteAllCart()">Xóa giỏ
						hàng</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal Chọn địa chỉ mua hàng-->
	<div class="modal fade" id="locationModal" tabindex="-1"
		aria-labelledby="locationModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-body p-6">
					<div class="d-flex justify-content-between align-items-start">
						<div>
							<h5 class="mb-0" id="locationModalLabel">Cửa hàng</h5>
							<p class="mb-0 small">Vui lòng chọn cửa hàng gần bạn</p>
						</div>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div>
						<div>
							<div data-simplebar style="height: 300px">
								<div class="list-group list-group-flush" id="storeContainer">
									<!-- Sẽ được cập nhật bởi Servlet -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="./assets/js/vendors/validation.js"></script>

	<main>
		<section class="mt-8">
			<div class="container">
				<div class="hero-slider">
					<div
						style="background: url(./assets/images/banner/grocery-banner-2.jpg) no-repeat; background-size: cover; border-radius: 0.5rem; background-position: center">
						<div
							class="ps-lg-12 py-lg-16 col-xxl-5 col-md-7 py-14 px-8 text-xs-center">
							<h2 class="text-dark display-5 fw-bold mt-4">Chào mừng đến
								với Tune Vibe</h2>
							<p class="lead">Mua sắm thực phẩm trực tuyến và giao hàng tận
								nhà thuận tiện.</p>
							<div href="#!" class="btn btn-dark mt-3"
								onclick="scrollCategory('category')">
								Mua sắm ngay <i class="feather-icon icon-arrow-right ms-1"></i>
							</div>
						</div>
					</div>
					<div
						style="background: url(./assets/images/banner/grocery-banner.png) no-repeat; background-size: cover; border-radius: 0.5rem; background-position: center">
						<div
							class="ps-lg-12 py-lg-16 col-xxl-5 col-md-7 py-14 px-8 text-xs-center">
							<span class="badge text-bg-warning">Mua hàng tiện lơi</span>
							<h2 class="text-dark display-5 fw-bold mt-4">
								Giao hàng miễn phí <br /> với hóa đơn trên <span
									class="text-primary">100k</span>
							</h2>
							<p class="lead">Chúng tôi hân hạnh phục vụ bạn</p>
							<div class="btn btn-dark mt-3"
								onclick="scrollCategory('category')">
								Mua sắm ngay <i class="feather-icon icon-arrow-right ms-1"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Category Section Start-->
		<section class="mb-lg-10 mt-lg-14 my-8" id="category">
			<div class="container">
				<div class="row">
					<div class="col-12 mb-6">
						<h3 class="mb-0">Danh mục sản phẩm</h3>
					</div>
				</div>
				<div class="category-slider">
					<a href="#!" class="item" onclick="scrollCategory('raw-food')">
						<div class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-raw-food.png"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
									<div class="text-truncate">Thực phẩm tươi sống</div>
								</div>
							</div>
						</div>
					</a>
					<div class="item" onclick="scrollCategory('processed-food')">
						<div class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-processed-food.png"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
									<div class="text-truncate">Thực phẩm chế biến sẵn</div>
								</div>
							</div>
						</div>
					</div>
					<a href="#!" class="item" onclick="scrollCategory('drink')">
						<div class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-drink.png"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
									<div class="text-truncate">Đồ uống</div>
								</div>
							</div>
						</div>
					</a>
					<a href="#!" class="item" onclick="scrollCategory('alcohol')">
						<div class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-alcohol.png"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
									<div class="text-truncate">Đồ uống có cồn</div>
								</div>
							</div>
						</div>
					</a>
					<a href="#!" class="item" onclick="scrollCategory('snack')">
						<div class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-snack.png"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
									<div class="text-truncate">Đồ ăn nhẹ và đồ ngọt</div>
								</div>
							</div>
						</div>
					</a>
					<a href="#!" class="item" onclick="scrollCategory('cosmetics')">
						<div class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-cosmetics.png"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
									<div class="text-truncate">Hóa mỹ phẩm</div>
								</div>
							</div>
						</div>
					</a>
					<a href="#!" class="item" onclick="scrollCategory('home-item')">
						<div class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-home-item.png"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
									<div class="text-truncate">Đồ dùng gia đình</div>
								</div>
							</div>
						</div>
					</a>
					<a href="#!" class="item" onclick="scrollCategory('stationery')">
						<div class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-stationery.png"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
									<div class="text-truncate">Văn phòng phẩm</div>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</section>
		<!-- Category Section End-->

		<!-- Thực phẩm tươi sống Start-->
		<div id="raw-food">
			<section class="my-lg-14 my-8">
				<div class="container" id="Container0">
					<div class="row">
						<div class="col-12 mb-6">
							<h3 class="mb-0">Thực phẩm tươi sống</h3>
						</div>
					</div>
					<div class="row g-4 row-cols-lg-5 row-cols-2 row-cols-md-3"
						id="productContainer0"></div>

				</div>
			</section>
		</div>
		<!-- Thực phẩm chế biến sẵn-->
		<div id="processed-food">
			<section class="my-lg-14 my-8">
				<div class="container" id="Container1">
					<div class="row">
						<div class="col-12 mb-6">
							<h3 class="mb-0">Thực phẩm chế biến sẵn</h3>
						</div>
					</div>
					<div class="row g-4 row-cols-lg-5 row-cols-2 row-cols-md-3"
						id="productContainer1"></div>

				</div>
			</section>
		</div>
		<!-- Đồ uống -->
		<div id="drink">
			<section class="my-lg-14 my-8">
				<div class="container" id="Container2">
					<div class="row">
						<div class="col-12 mb-6">
							<h3 class="mb-0">Đồ uống</h3>
						</div>
					</div>
					<div class="row g-4 row-cols-lg-5 row-cols-2 row-cols-md-3"
						id="productContainer2"></div>
				</div>
			</section>
		</div>
		<!-- Đồ uống có cồn -->
		<div id="alcohol">
			<section class="my-lg-14 my-8">
				<div class="container" id="Container3">
					<div class="row">
						<div class="col-12 mb-6">
							<h3 class="mb-0">Đồ uống có cồn</h3>
						</div>
					</div>
					<div class="row g-4 row-cols-lg-5 row-cols-2 row-cols-md-3"
						id="productContainer3"></div>
				</div>
			</section>
		</div>
		<!-- Đồ ăn nhẹ và đồ ngọt -->
		<div id="snack">
			<section class="my-lg-14 my-8">
				<div class="container" id="Container4">
					<div class="row">
						<div class="col-12 mb-6">
							<h3 class="mb-0">Đồ ăn nhẹ và đồ ngọt</h3>
						</div>
					</div>
					<div class="row g-4 row-cols-lg-5 row-cols-2 row-cols-md-3"
						id="productContainer4"></div>
				</div>
			</section>
		</div>
		<!-- Hóa mỹ phẩm -->
		<div id="cosmetics">
			<section class="my-lg-14 my-8">
				<div class="container" id="Container5">
					<div class="row">
						<div class="col-12 mb-6">
							<h3 class="mb-0">Hóa mỹ phẩm</h3>
						</div>
					</div>
					<div class="row g-4 row-cols-lg-5 row-cols-2 row-cols-md-3"
						id="productContainer5"></div>
				</div>
			</section>
		</div>
		<!-- Đồ dùng gia đình -->
		<div id="home-item">
			<section class="my-lg-14 my-8">
				<div class="container" id="Container6">
					<div class="row">
						<div class="col-12 mb-6">
							<h3 class="mb-0">Đồ dùng gia đình</h3>
						</div>
					</div>
					<div class="row g-4 row-cols-lg-5 row-cols-2 row-cols-md-3"
						id="productContainer6"></div>
				</div>
			</section>
		</div>
		<!-- Văn phòng phẩm -->
		<div id="stationery">
			<section class="my-lg-14 my-8">
				<div class="container" id="Container7">
					<div class="row">
						<div class="col-12 mb-6">
							<h3 class="mb-0">Văn phòng phẩm</h3>
						</div>
					</div>
					<div class="row g-4 row-cols-lg-5 row-cols-2 row-cols-md-3"
						id="productContainer7"></div>
				</div>
			</section>
		</div>
		<section class="my-lg-14 my-8">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-3">
						<div class="mb-8 mb-xl-0">
							<div class="mb-6">
								<img src="assets/images/icons/clock.svg" alt="" />
							</div>
							<h3 class="h5 mb-3">Giao hàng tiết kiệm trong 15 phút</h3>
							<p>Nhận hàng nhanh chóng tại nhà từ các cửa hàng Tune Vibe
								gần bạn.</p>
						</div>
					</div>
					<div class="col-md-6 col-lg-3">
						<div class="mb-8 mb-xl-0">
							<div class="mb-6">
								<img src="assets/images/icons/gift.svg" alt="" />
							</div>
							<h3 class="h5 mb-3">Giá tốt cùng nhiều Ưu đãi hấp dẫn</h3>
							<p>Mua sắm tiết kiệm cùng các ưu đãi hoàn tiền hấp dẫn với
								Tune Vibe</p>
						</div>
					</div>
					<div class="col-md-6 col-lg-3">
						<div class="mb-8 mb-xl-0">
							<div class="mb-6">
								<img src="assets/images/icons/package.svg" alt="" />
							</div>
							<h3 class="h5 mb-3">Đa dạng, phong phú</h3>
							<p>Mua sắm thả ga với đa dạng sản phẩm bao gồm thực phẩm,
								chăm sóc cá nhân, gia đình, bánh ngọt và hơn thế nữa.</p>
						</div>
					</div>
					<div class="col-md-6 col-lg-3">
						<div class="mb-8 mb-xl-0">
							<div class="mb-6">
								<img src="assets/images/icons/refresh-cw.svg" alt="" />
							</div>
							<h3 class="h5 mb-3">Đổi trả nhanh chóng</h3>
							<p>
								Không hài lòng với sản phẩm? Hoàn trả hàng ngay tại nhà và nhận
								hoàn tiền trong vài giờ. Nhấn để xem <a href="#!">Điều khoản
									Sử dụng</a> .
							</p>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<div class="toast-container position-fixed top-0 end-0 p-3" style="z-index: 1055;">
    <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="toast-header">
            <strong class="me-auto">Thông báo</strong>
            <small>Vừa xong</small>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div id="toast-text" class="toast-body">
            Đây là một thông báo.
        </div>
    </div>
</div>
	
	 <!-- Modal tìm kiếm-->
	<div class="modal fade" id="SearchModal" tabindex="-1" aria-labelledby="SearchModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content">
            <!-- Header -->
            <div class="modal-header">
                <h5 class="modal-title">Kết quả tìm kiếm cho: 
                    <span class="text-success" id="SearchModalLabel">null</span>
                </h5>
                <button type="button" class="btn-close btn-sm" data-bs-dismiss="modal" aria-label="Đóng" title="Đóng"></button>
            </div>
            <!-- Body -->
            <div class="modal-body p-6">
                <section class="my-lg-3 my-3 mx-lg-3 mx-3">
                    <div id="SearchContainer">
                        <div class="row">
                        </div>
                        <div class="row g-4 row-cols-lg-4 row-cols-2 row-cols-md-3" id="productSearchContainer">
                            <!-- Thông báo mặc định -->
                            <p id="noResultsMessage" class="text-center w-100 text-muted d-none">Không tìm thấy sản phẩm nào.</p>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>
	<!-- Modal -->
	<div class="modal fade" id="quickViewModal" tabindex="-1" aria-hidden="true">
		<div class="modal-dialog modal-xl modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-body p-8">
					<div class="position-absolute top-0 end-0 me-3 mt-3">
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="row">
						<div class="col-lg-6">
							<!-- img slide -->
							<div class="product productModal" id="productModal">
								<div class="zoom" onmousemove="zooming(event)"
									onmouseout="resetZoom()"
									style="background-image: url(./assets/images/products/product-single-img-1.jpg)">
									<!-- img -->
									<img id="img-zoom"
										src="./assets/images/products/product-single-img-1.jpg" alt=""
										style="background-color: white;" />
								</div>
							</div>
						</div>
						<div id="is-sold-out" class="position-absolute top-4 start-4"
							hidden>
							<h3>
								<span class="badge bg-danger">Hết hàng</span>
							</h3>
						</div>
						<div id="is-free" class="position-absolute top-4 start-4" hidden>
							<h3>
								<span class="badge bg-success">Miễn phí</span>
							</h3>
						</div>
						<div class="col-lg-6">
							<div class="ps-lg-8 mt-6 mt-lg-0">
								<small id="item-tag" class="mb-1 d-block">Error</small>
								<h2 id="item-name" class="mb-1 h2">Error</h2>
								<div class="fs-4">
									<span id="item-price" class="fw-bold text-dark">Error
										VNĐ</span>
								</div>
								<hr class="my-2" />
								<div>
									<!-- input -->
									<!-- input -->
									<div class="input-group input-spinner">
										<input type="button" value="-" class="button-minus btn btn-sm"
											data-field="quantity" /> <input type="number" step="1"
											max="10" value="1" name="quantity" id="modal-quantity"
											class="quantity-field form-control-sm form-input" /> <input
											type="button" value="+" class="button-plus btn btn-sm"
											data-field="quantity" />
									</div>
								</div>
								<div
									class="mt-3 row justify-content-start g-2 align-items-center">
									<div class="col-lg-15 col-md-5 col-6 d-grid"
										onclick="addCart2()" data-bs-dismiss="modal">
										<!-- button -->
										<!-- btn -->
										<button id="item-btn" type="button" class="btn btn-primary">
											<i class="feather-icon icon-shopping-bag me-2"></i> Thêm vào
											giỏ hàng
										</button>
									</div>
								</div>
								<hr class="my-6" />
								<div>
									<table class="table table-borderless">
										<tbody>
											<tr>
												<td>Mã sản phẩm:</td>
												<td id="item-id">Error</td>
											</tr>
											<tr>
												<td>Số lượng:</td>
												<td id="item-quantity">Error</td>
											</tr>
											<tr>
												<td>Đơn vị tính:</td>
												<td id="item-type">Error</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<footer class="footer">
		<div class="container">
			<div class="row g-4 py-4">
				<div class="col-12 col-md-12 col-lg-4">
					<h6 class="mb-4">Danh sách các sản phẩm</h6>
					<div class="row">
						<div class="col-6">
							<!-- list -->
							<ul class="nav flex-column">
								<li class="nav-item mb-2"><a href="#!" class="nav-link">Thực
										phẩm các loại</a></li>
								<li class="nav-item mb-2"><a href="#!" class="nav-link">Đồ
										uống</a></li>
								<li class="nav-item mb-2"><a href="#!" class="nav-link">Đồ
										ăn nhẹ và đồ ngọt</a></li>
								<li class="nav-item mb-2"><a href="#!" class="nav-link">Sản
										phẩm cá nhân và gia đình</a></li>
								<li class="nav-item mb-2"><a href="#!" class="nav-link">Văn
										phòng phẩm và đồ dùng học tập</a></li>
							</ul>
						</div>

					</div>
				</div>


				<div class="border-top py-4">
					<div class="row align-items-center">
						<div class="col-md-6">
							<span class="small text-muted"> © 2022 <span
								id="copyright"> - <script>
                              document.getElementById("copyright").appendChild(document.createTextNode(new Date().getFullYear()));
                           </script>
							</span> DACNTT
							</span>
						</div>
						<div class="col-md-6">
							<ul class="list-inline text-md-end mb-0 small mt-3 mt-md-0">
								<li class="list-inline-item text-muted">Theo dõi chúng tôi
									tại</li>
								<li class="list-inline-item me-1"><a href="#!"
									class="btn btn-xs btn-social btn-icon"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-facebook"
											viewBox="0 0 16 16">
                                 <path
												d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                              </svg>
								</a></li>
								<li class="list-inline-item me-1"><a href="#!"
									class="btn btn-xs btn-social btn-icon"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                                 <path
												d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
                              </svg>
								</a></li>
								<li class="list-inline-item"><a href="#!"
									class="btn btn-xs btn-social btn-icon"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-instagram"
											viewBox="0 0 16 16">
                                 <path
												d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                              </svg>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
	</footer>
	
</body>
</html>