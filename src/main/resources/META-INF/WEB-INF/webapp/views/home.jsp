<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta content="Codescandy" name="author" />
<title>Cửa hàng tiện lợi Tune Vibe</title>

<!-- Link dynamic CSS files using JSP expressions -->
<link
	href="<%=request.getContextPath()%>/assets/libs/slick-carousel/slick/slick.css"
	rel="stylesheet" />
<link
	href="<%=request.getContextPath()%>/assets/libs/slick-carousel/slick/slick-theme.css"
	rel="stylesheet" />
<link
	href="<%=request.getContextPath()%>/assets/libs/tiny-slider/dist/tiny-slider.css"
	rel="stylesheet" />

<!-- Favicon icon -->
<link rel="shortcut icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/assets/images/favicon/favicon.ico" />

<!-- Libs CSS -->
<link
	href="<%=request.getContextPath()%>/assets/libs/bootstrap-icons/font/bootstrap-icons.min.css"
	rel="stylesheet" />
<link
	href="<%=request.getContextPath()%>/assets/libs/feather-webfont/dist/feather-icons.css"
	rel="stylesheet" />
<link
	href="<%=request.getContextPath()%>/assets/libs/simplebar/dist/simplebar.min.css"
	rel="stylesheet" />

<!-- Theme CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/theme.min.css" />

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
</head>


<body>
	<!-- navbar -->
	<div class="border-bottom">
		<div class="py-5">
			<div class="container">
				<div class="row w-100 align-items-center gx-lg-2 gx-0">

					<!-- LOGO -->
					<div class="col-xxl-2 col-lg-3 col-md-6 col-5">
						<a class="navbar-brand d-none d-lg-block"
							href="<%=request.getContextPath()%>/index.jsp"> <img
							src="<%=request.getContextPath()%>/assets/images/logo/convenience-store-svgrepo-com.svg" />
						</a>
						<div class="d-flex justify-content-between w-100 d-lg-none">
							<a class="navbar-brand"
								href="<%=request.getContextPath()%>/index.jsp"> <img
								src="<%=request.getContextPath()%>/assets/images/logo/convenience-store-svgrepo-com.svg" />
							</a>
						</div>
					</div>
					<!-- Thanh tìm kiếm -->
					<div class="col-xxl-5 col-lg-5 d-none d-lg-block">
						<form action="<%=request.getContextPath()%>/search.jsp"
							method="get">
							<div class="input-group">
								<input class="form-control rounded" type="search" name="query"
									placeholder="Tìm kiếm sản phẩm" /> <span
									class="input-group-append">
									<button
										class="btn bg-white border border-start-0 ms-n10 rounded-0 rounded-end"
										type="submit">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-search">
                 		 					<circle cx="11" cy="11" r="8">		</circle>
                  							<line x1="21" y1="21" x2="16.65" y2="16.65"></line>
              						   </svg>
									</button>
								</span>
							</div>
						</form>
					</div>

					<div class="col-md-2 col-xxl-3 d-none d-lg-block">
   <!-- Button trigger modal -->
   <button type="button" class="btn btn-outline-gray-400 text-muted"
      data-bs-toggle="modal" data-bs-target="#locationModal">
      <i class="feather-icon icon-map-pin me-2"></i> Chọn địa chỉ gần bạn
   </button>
</div>
<div class="col-lg-2 col-xxl-2 text-end col-md-6 col-7">
   <div class="list-inline">
      <div class="list-inline-item me-5"></div>
      <div class="list-inline-item me-5">
         <a href="#!" class="text-muted" data-bs-toggle="modal"
            data-bs-target="#userModal"> 
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
               viewBox="0 0 24 24" fill="none" stroke="currentColor"
               stroke-width="2" stroke-linecap="round"
               stroke-linejoin="round" class="feather feather-user">
               <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
               <circle cx="12" cy="7" r="4"></circle>
            </svg>
         </a>
      </div>
      <div class="list-inline-item me-5 me-lg-0">
         <a class="text-muted position-relative"
            data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
            href="#offcanvasExample" role="button"
            aria-controls="offcanvasRight"> 
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
               viewBox="0 0 24 24" fill="none" stroke="currentColor"
               stroke-width="2" stroke-linecap="round"
               stroke-linejoin="round" class="feather feather-shopping-bag">
               <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
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

		<nav class="navbar navbar-expand-lg navbar-light navbar-default py-0 pb-lg-4" aria-label="Offcanvas navbar large">
    <div class="container">
        <div class="offcanvas offcanvas-start" tabindex="-1" id="navbar-default" aria-labelledby="navbar-defaultLabel">
            <div class="offcanvas-header pb-1">
                <a href="./index.jsp"><img src="./assets/images/logo/freshcart-logo.svg" alt="eCommerce HTML Template" /></a>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div class="d-block d-lg-none mb-4">
                    <form action="#">
                        <div class="input-group">
                            <input class="form-control rounded" type="search" placeholder="Search for products" />
                            <span class="input-group-append">
                                <button class="btn bg-white border border-start-0 ms-n10 rounded-0 rounded-end" type="button">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search">
                                        <circle cx="11" cy="11" r="8"></circle>
                                        <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                                    </svg>
                                </button>
                            </span>
                        </div>
                    </form>
                    <div class="mt-2">
                        <button type="button" class="btn btn-outline-gray-400 text-muted w-100" data-bs-toggle="modal" data-bs-target="#locationModal">
                            <i class="feather-icon icon-map-pin me-2"></i> Pick Location
                        </button>
                    </div>
                </div>
                <div class="d-block d-lg-none mb-4">
                    <a class="btn btn-primary w-100 d-flex justify-content-center align-items-center" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                        <span class="me-2">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-grid">
                                <rect x="3" y="3" width="7" height="7"></rect>
                                <rect x="14" y="3" width="7" height="7"></rect>
                                <rect x="14" y="14" width="7" height="7"></rect>
                                <rect x="3" y="14" width="7" height="7"></rect>
                            </svg>
                        </span> All Departments
                    </a>
                    <div class="collapse mt-2" id="collapseExample">
                        <div class="card card-body">
                            <ul class="mb-0 list-unstyled">
                                <li><a class="dropdown-item" href="./pages/shop-grid.jsp">Dairy, Bread & Eggs</a></li>
                                <li><a class="dropdown-item" href="./pages/shop-grid.jsp">Snacks & Munchies</a></li>
                                <li><a class="dropdown-item" href="./pages/shop-grid.jsp">Fruits & Vegetables</a></li>
                                <li><a class="dropdown-item" href="./pages/shop-grid.jsp">Cold Drinks & Juices</a></li>
                                <li><a class="dropdown-item" href="./pages/shop-grid.jsp">Breakfast & Instant Food</a></li>
                                <li><a class="dropdown-item" href="./pages/shop-grid.jsp">Bakery & Biscuits</a></li>
                                <li><a class="dropdown-item" href="./pages/shop-grid.jsp">Chicken, Meat & Fish</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="dropdown me-3 d-none d-lg-block">
                    <button class="btn btn-primary px-6" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                        <span class="me-1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-grid">
                                <rect x="3" y="3" width="7" height="7"></rect>
                                <rect x="14" y="3" width="7" height="7"></rect>
                                <rect x="14" y="14" width="7" height="7"></rect>
                                <rect x="3" y="14" width="7" height="7"></rect>
                            </svg>
                        </span> All Departments
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="./pages/shop-grid.jsp">Dairy, Bread & Eggs</a></li>
                        <li><a class="dropdown-item" href="./pages/shop-grid.jsp">Snacks & Munchies</a></li>
                        <li><a class="dropdown-item" href="./pages/shop-grid.jsp">Fruits & Vegetables</a></li>
                        <li><a class="dropdown-item" href="./pages/shop-grid.jsp">Cold Drinks & Juices</a></li>
                        <li><a class="dropdown-item" href="./pages/shop-grid.jsp">Breakfast & Instant Food</a></li>
                        <li><a class="dropdown-item" href="./pages/shop-grid.jsp">Bakery & Biscuits</a></li>
                        <li><a class="dropdown-item" href="./pages/shop-grid.jsp">Chicken, Meat & Fish</a></li>
                    </ul>
                </div>
                <div>
                    <ul class="navbar-nav align-items-center">
                        <li class="nav-item dropdown w-100 w-lg-auto dropdown-fullwidth">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Mega menu</a>
                            <div class="dropdown-menu pb-0">
                                <div class="row p-2 p-lg-4">
                                    <div class="col-lg-3 col-12 mb-4 mb-lg-0">
                                        <h6 class="text-primary ps-3">Dairy, Bread & Eggs</h6>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Butter</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Milk Drinks</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Curd & Yogurt</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Eggs</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Buns & Bakery</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Cheese</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Condensed Milk</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Dairy Products</a>
                                    </div>
                                    <div class="col-lg-3 col-12 mb-4 mb-lg-0">
                                        <h6 class="text-primary ps-3">Breakfast & Instant Food</h6>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Breakfast Cereal</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Noodles, Pasta & Soup</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Frozen Veg Snacks</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Frozen Non-Veg Snacks</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Vermicelli</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Instant Mixes</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Batter</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Fruit and Juices</a>
                                    </div>
                                    <div class="col-lg-3 col-12 mb-4 mb-lg-0">
                                        <h6 class="text-primary ps-3">Cold Drinks & Juices</h6>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Soft Drinks</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Fruit Juices</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Coldpress</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Water & Ice Cubes</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Soda & Mixers</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Health Drinks</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Herbal Drinks</a>
                                        <a class="dropdown-item" href="./pages/shop-grid.jsp">Milk Drinks</a>
                                    </div>
                                    <div class="col-lg-3 col-12 mb-4 mb-lg-0">
                                        <div class="card border-0">
                                            <img src="./assets/images/banner/menu-banner.jpg" alt="eCommerce HTML Template" class="img-fluid" />
                                            <div class="position-absolute ps-6 mt-8">
                                                <h5 class="mb-0">Dont miss this <br /> offer today.</h5>
                                                <a href="#" class="btn btn-primary btn-sm mt-3">Shop Now</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown w-100 w-lg-auto">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Account</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="./pages/signin.jsp">Sign in</a></li>
                                <li><a class="dropdown-item" href="./pages/signup.jsp">Signup</a></li>
                                <li><a class="dropdown-item" href="./pages/forgot-password.jsp">Forgot Password</a></li>
                                <li class="dropdown-submenu dropend">
                                    <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">My Account</a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="./pages/account-orders.jsp">Orders</a></li>
                                        <li><a class="dropdown-item" href="./pages/account-settings.jsp">Settings</a></li>
                                        <li><a class="dropdown-item" href="./pages/account-address.jsp">Address</a></li>
                                        <li><a class="dropdown-item" href="./pages/account-payment-method.jsp">Payment Method</a></li>
                                        <li><a class="dropdown-item" href="./pages/account-notification.jsp">Notification</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>

	</div>
	<!-- Modal Đky/Đnhập tài khoản -->
<div class="modal fade" id="userModal" tabindex="-1" aria-labelledby="userModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content p-4">
            <div class="modal-header border-0">
                <h5 class="modal-title fs-3 fw-bold" id="userModalLabel">Đăng ký tài khoản</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="needs-validation" novalidate method="POST" action="./path-to-your-registration-handler.jsp">
                    <div class="mb-3">
                        <label for="fullName" class="form-label">Tên đăng nhập</label>
                        <input type="text" class="form-control" id="fullName" name="fullName" placeholder="Enter Your Name" required />
                        <div class="invalid-feedback">Vui lòng nhập tên của bạn</div>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Địa chỉ Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email address" required />
                        <div class="invalid-feedback">Vui lòng nhập địa chỉ Email</div>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Mật khẩu</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required />
                        <div class="invalid-feedback">Vui lòng nhập mật khẩu</div>
                        <small class="form-text"> Bằng cách tiếp tục, bạn đồng ý với <a href="#!">Điều Khoản Sử Dụng</a> và <a href="#!">Điều Khoản Bảo Mật</a> của chúng tôi.</small>
                    </div>
                    <button type="submit" class="btn btn-primary">Đăng ký</button>
                </form>
            </div>
            <div class="modal-footer border-0 justify-content-center">
                Bạn đã có tài khoản? <a href="./pages/signin.jsp">Đăng nhập</a>
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
            <small>Location in 382480</small>
        </div>
        <button type="button" class="btn-close text-reset"
                data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <div>
            <!-- alert -->

            <ul class="list-group list-group-flush">
                <c:forEach var="item" items="${cartItems}">
                    <li class="list-group-item py-3 ps-0">
                        <div class="row align-items-center">
                            <div class="col-6 col-md-6 col-lg-7">
                                <div class="d-flex">
                                    <img src="${item.imageUrl}" alt="${item.name}" class="icon-shape icon-xxl" />
                                    <div class="ms-3">
                                        <a href="./pages/shop-single.html?id=${item.id}" class="text-inherit">
                                            <h6 class="mb-0">${item.name}</h6>
                                        </a>

                                        <div class="mt-2 small lh-1">
                                            <a href="removeFromCart?id=${item.id}" class="text-decoration-none text-inherit">
                                                <span class="me-1 align-text-bottom">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2 text-success">
                                                        <polyline points="3 6 5 6 21 6"></polyline>
                                                        <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                                                        <line x1="10" y1="11" x2="10" y2="17"></line>
                                                        <line x1="14" y1="11" x2="14" y2="17"></line>
                                                    </svg>
                                                </span>
                                                <span class="text-muted">Xóa</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-4 col-md-3 col-lg-3">
                                <div class="input-group input-spinner">
                                    <input type="button" value="-" class="button-minus btn btn-sm" data-field="quantity" />
                                    <input type="number" step="1" max="10" value="${item.quantity}" name="quantity" class="quantity-field form-control-sm form-input" />
                                    <input type="button" value="+" class="button-plus btn btn-sm" data-field="quantity" />
                                </div>
                            </div>

                            <div class="col-2 text-lg-end text-start text-md-end col-md-2">
                                <span class="fw-bold">${item.price}</span>
                                <div class="text-decoration-line-through text-muted small">${item.originalPrice}</div>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
            <div class="d-flex justify-content-between mt-4">
                <a href="#!" class="btn btn-primary">Tiếp tục mua sắm</a>
                <a href="updateCart" class="btn btn-dark">Cập nhật giỏ hàng</a>
            </div>
        </div>
    </div>
</div>

	<!-- Modal Chọn địa chỉ mua hàng -->
<div class="modal fade" id="locationModal" tabindex="-1" aria-labelledby="locationModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body p-6">
                <div class="d-flex justify-content-between align-items-start">
                    <div>
                        <h5 class="mb-1" id="locationModalLabel">Giao đến...</h5>
                        <p class="mb-0 small">Vui lòng nhập địa chỉ giao hàng mà bạn muốn</p>
                    </div>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="my-5">
                    <input type="search" class="form-control" placeholder="Bạn muốn giao đến đâu?" />
                </div>
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <h6 class="mb-0">Chọn địa chỉ của bạn</h6>
                    <a href="#" class="btn btn-outline-gray-400 text-muted btn-sm">Xóa hết</a>
                </div>
                <div>
                    <div data-simplebar style="height: 300px">
                        <div class="list-group list-group-flush">
                            <c:forEach var="address" items="${addresses}">
                                <a href="#" class="list-group-item d-flex justify-content-between align-items-center px-2 py-3 list-group-item-action <c:if test="${address.active}">active</c:if>">
                                    <span>${address.name}</span> <span>Min: $${address.minPrice}</span>
                                </a>
                            </c:forEach>
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
						style="background: url(./assets/images/slider/slide-1.jpg) no-repeat; background-size: cover; border-radius: 0.5rem; background-position: center">
						<div
							class="ps-lg-12 py-lg-16 col-xxl-5 col-md-7 py-14 px-8 text-xs-center">
							<span class="badge text-bg-warning">Opening Sale Discount
								50%</span>

							<h2 class="text-dark display-5 fw-bold mt-4">SuperMarket For
								Fresh Grocery</h2>
							<p class="lead">Introduced a new model for online grocery
								shopping and convenient home delivery.</p>
							<a href="#!" class="btn btn-dark mt-3"> Mua sắm ngay <i
								class="feather-icon icon-arrow-right ms-1"></i>
							</a>
						</div>
					</div>
					<div
						style="background: url(./assets/images/slider/slider-2.jpg) no-repeat; background-size: cover; border-radius: 0.5rem; background-position: center">
						<div
							class="ps-lg-12 py-lg-16 col-xxl-5 col-md-7 py-14 px-8 text-xs-center">
							<span class="badge text-bg-warning">Free Shipping - orders
								over $100</span>
							<h2 class="text-dark display-5 fw-bold mt-4">
								Free Shipping on <br /> orders over <span class="text-primary">$100</span>
							</h2>
							<p class="lead">Free Shipping to First-Time Customers Only,
								After promotions and discounts are applied.</p>
							<a href="#!" class="btn btn-dark mt-3"> Mua sắm ngay <i
								class="feather-icon icon-arrow-right ms-1"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Category Section Start-->
		<section class="mb-lg-10 mt-lg-14 my-8">
			<div class="container">
				<div class="row">
					<div class="col-12 mb-6">
						<h3 class="mb-0">Danh mục sản phẩm</h3>
					</div>
				</div>
				<div class="category-slider">
					<div class="item">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-dairy-bread-eggs.jpg"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
									<div class="text-truncate">Thực phẩm các loại</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-snack-munchies.jpg"
										alt="Grocery Ecommerce Template" class="mb-3" />
									<div class="text-truncate">Đồ ăn nhẹ và đồ ngọt</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-bakery-biscuits.jpg"
										alt="Grocery Ecommerce Template" class="mb-3" />
									<div class="text-truncate">Sản phẩm cá nhân và gia đình</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-instant-food.jpg"
										alt="Grocery Ecommerce Template" class="mb-3" />
									<div class="text-truncate">Văn phòng phẩm và đồ dùng học
										tập</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img
										src="assets/images/category/category-tea-coffee-drinks.jpg"
										alt="Grocery Ecommerce Template" class="mb-3" />
									<div class="text-truncate">Tea, Coffee & Drinks</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-atta-rice-dal.jpg"
										alt="Grocery Ecommerce Template" class="mb-3" />
									<div class="text-truncate">Atta, Rice & Dal</div>
								</div>
							</div>
						</a>
					</div>

					<div class="item">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-baby-care.jpg"
										alt="Grocery Ecommerce Template" class="mb-3" />
									<div class="text-truncate">Baby Care</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img
										src="assets/images/category/category-chicken-meat-fish.jpg"
										alt="Grocery Ecommerce Template" class="mb-3" />
									<div class="text-truncate">Chicken, Meat & Fish</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img
										src="assets/images/category/category-cleaning-essentials.jpg"
										alt="Grocery Ecommerce Template" class="mb-3" />
									<div class="text-truncate">Cleaning Essentials</div>
								</div>
							</div>
						</a>
					</div>
					<div class="item">
						<a href="../pages/shop-grid.html"
							class="text-decoration-none text-inherit">
							<div class="card card-product mb-lg-4">
								<div class="card-body text-center py-8">
									<img src="assets/images/category/category-pet-care.jpg"
										alt="Grocery Ecommerce Template" class="mb-3" />
									<div class="text-truncate">Pet Care</div>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</section>
		<!-- Category Section End-->

		<!-- Popular Products Start-->
		<section class="my-lg-14 my-8">
			<div class="container">
				<div class="row">
					<div class="col-12 mb-6">
						<h3 class="mb-0">Sản phẩm bán chạy</h3>
					</div>
				</div>

				<div class="row g-4 row-cols-lg-5 row-cols-2 row-cols-md-3">
					<div class="col">
						<div class="card card-product">
							<div class="card-body">
								<div class="text-center position-relative">
									<div class="position-absolute top-0 start-0">
										<span class="badge bg-danger">Giảm giá</span>
									</div>
									<a href="#!"><img
										src="assets/images/products/product-img-1.jpg"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" /></a>

									<div class="card-product-action">
										<a href="#!" class="btn-action" data-bs-toggle="modal"
											data-bs-target="#quickViewModal"> <i class="bi bi-eye"
											data-bs-toggle="tooltip" data-bs-html="true"
											title="Quick View"></i>
										</a> <a href="#!" class="btn-action" data-bs-toggle="tooltip"
											data-bs-html="true" title="Wishlist"><i
											class="bi bi-heart"></i></a> <a href="#!" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i
											class="bi bi-arrow-left-right"></i></a>
									</div>
								</div>
								<div class="text-small mb-1">
									<a href="#!" class="text-decoration-none text-muted"><small>Snack
											& Munchies</small></a>
								</div>
								<h2 class="fs-6">
									<a href="./pages/shop-single.html"
										class="text-inherit text-decoration-none">Haldiram's Sev
										Bhujia</a>
								</h2>
								<div>
									<small class="text-warning"> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-half"></i>
									</small> <span class="text-muted small">4.5(149)</span>
								</div>
								<div
									class="d-flex justify-content-between align-items-center mt-3">
									<div>
										<span class="text-dark">$18</span> <span
											class="text-decoration-line-through text-muted">$24</span>
									</div>
									<div>
										<a href="#!" class="btn btn-primary btn-sm"> <svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round"
												stroke-linejoin="round" class="feather feather-plus">
                                       <line x1="12" y1="5" x2="12"
													y2="19"></line>
                                       <line x1="5" y1="12" x2="19"
													y2="12"></line>
                                    </svg> Thêm
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card card-product">
							<div class="card-body">
								<div class="text-center position-relative">
									<div class="position-absolute top-0 start-0">
										<span class="badge bg-success">14%</span>
									</div>
									<a href="./pages/shop-single.html"><img
										src="assets/images/products/product-img-2.jpg"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" /></a>
									<div class="card-product-action">
										<a href="#!" class="btn-action" data-bs-toggle="modal"
											data-bs-target="#quickViewModal"> <i class="bi bi-eye"
											data-bs-toggle="tooltip" data-bs-html="true"
											title="Quick View"></i>
										</a> <a href="../pages/shop-wishlist.html" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i
											class="bi bi-heart"></i></a> <a href="#!" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i
											class="bi bi-arrow-left-right"></i></a>
									</div>
								</div>
								<div class="text-small mb-1">
									<a href="#!" class="text-decoration-none text-muted"><small>Bakery
											& Biscuits</small></a>
								</div>
								<h2 class="fs-6">
									<a href="./pages/shop-single.html"
										class="text-inherit text-decoration-none">NutriChoice
										Digestive</a>
								</h2>
								<div class="text-warning">
									<small> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-fill"></i> <i class="bi bi-star-half"></i>
									</small> <span class="text-muted small">4.5 (25)</span>
								</div>
								<div
									class="d-flex justify-content-between align-items-center mt-3">
									<div>
										<span class="text-dark">$24</span>
									</div>
									<div>
										<a href="#!" class="btn btn-primary btn-sm"> <svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round"
												stroke-linejoin="round" class="feather feather-plus">
                                       <line x1="12" y1="5" x2="12"
													y2="19"></line>
                                       <line x1="5" y1="12" x2="19"
													y2="12"></line>
                                    </svg> Thêm
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card card-product">
							<div class="card-body">
								<div class="text-center position-relative">
									<a href="./pages/shop-single.html"><img
										src="assets/images/products/product-img-3.jpg"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" /></a>
									<div class="card-product-action">
										<a href="#!" class="btn-action" data-bs-toggle="modal"
											data-bs-target="#quickViewModal"> <i class="bi bi-eye"
											data-bs-toggle="tooltip" data-bs-html="true"
											title="Quick View"></i>
										</a> <a href="../pages/shop-wishlist.html" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i
											class="bi bi-heart"></i></a> <a href="#!" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i
											class="bi bi-arrow-left-right"></i></a>
									</div>
								</div>
								<div class="text-small mb-1">
									<a href="#!" class="text-decoration-none text-muted"><small>Bakery
											& Biscuits</small></a>
								</div>
								<h2 class="fs-6">
									<a href="./pages/shop-single.html"
										class="text-inherit text-decoration-none">Cadbury 5 Star
										Chocolate</a>
								</h2>
								<div class="text-warning">
									<small> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
									</small> <span class="text-muted small">5 (469)</span>
								</div>
								<div
									class="d-flex justify-content-between align-items-center mt-3">
									<div>
										<span class="text-dark">$32</span> <span
											class="text-decoration-line-through text-muted">$35</span>
									</div>
									<div>
										<a href="#!" class="btn btn-primary btn-sm"> <svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round"
												stroke-linejoin="round" class="feather feather-plus">
                                       <line x1="12" y1="5" x2="12"
													y2="19"></line>
                                       <line x1="5" y1="12" x2="19"
													y2="12"></line>
                                    </svg> Thêm
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card card-product">
							<div class="card-body">
								<div class="text-center position-relative">
									<a href="./pages/shop-single.html"><img
										src="assets/images/products/product-img-4.jpg"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" /></a>
									<div class="card-product-action">
										<a href="#!" class="btn-action" data-bs-toggle="modal"
											data-bs-target="#quickViewModal"> <i class="bi bi-eye"
											data-bs-toggle="tooltip" data-bs-html="true"
											title="Quick View"></i>
										</a> <a href="../pages/shop-wishlist.html" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i
											class="bi bi-heart"></i></a> <a href="#!" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i
											class="bi bi-arrow-left-right"></i></a>
									</div>
									<div class="position-absolute top-0 start-0">
										<span class="badge bg-danger">Bán chạy</span>
									</div>
								</div>
								<div class="text-small mb-1">
									<a href="#!" class="text-decoration-none text-muted"><small>Snack
											& Munchies</small></a>
								</div>
								<h2 class="fs-6">
									<a href="./pages/shop-single.html"
										class="text-inherit text-decoration-none">Onion Flavour
										Potato</a>
								</h2>
								<div class="text-warning">
									<small> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-half"></i> <i class="bi bi-star"></i>
									</small> <span class="text-muted small">3.5 (456)</span>
								</div>
								<div
									class="d-flex justify-content-between align-items-center mt-3">
									<div>
										<span class="text-dark">$3</span> <span
											class="text-decoration-line-through text-muted">$5</span>
									</div>
									<div>
										<a href="#!" class="btn btn-primary btn-sm"> <svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round"
												stroke-linejoin="round" class="feather feather-plus">
                                       <line x1="12" y1="5" x2="12"
													y2="19"></line>
                                       <line x1="5" y1="12" x2="19"
													y2="12"></line>
                                    </svg> Thêm
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card card-product">
							<div class="card-body">
								<div class="text-center position-relative">
									<a href="./pages/shop-single.html"><img
										src="assets/images/products/product-img-5.jpg"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" /></a>
									<div class="card-product-action">
										<a href="#!" class="btn-action" data-bs-toggle="modal"
											data-bs-target="#quickViewModal"> <i class="bi bi-eye"
											data-bs-toggle="tooltip" data-bs-html="true"
											title="Quick View"></i>
										</a> <a href="../pages/shop-wishlist.html" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i
											class="bi bi-heart"></i></a> <a href="#!" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i
											class="bi bi-arrow-left-right"></i></a>
									</div>
								</div>
								<div class="text-small mb-1">
									<a href="#!" class="text-decoration-none text-muted"><small>Instant
											Food</small></a>
								</div>
								<h2 class="fs-6">
									<a href="./pages/shop-single.html"
										class="text-inherit text-decoration-none">Salted Instant
										Popcorn</a>
								</h2>
								<div class="text-warning">
									<small> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-fill"></i> <i class="bi bi-star-half"></i>
									</small> <span class="text-muted small">4.5 (39)</span>
								</div>
								<div class="d-flex justify-content-between mt-4">
									<div>
										<span class="text-dark">$13</span> <span
											class="text-decoration-line-through text-muted">$18</span>
									</div>
									<div>
										<a href="#!" class="btn btn-primary btn-sm"> <svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round"
												stroke-linejoin="round" class="feather feather-plus">
                                       <line x1="12" y1="5" x2="12"
													y2="19"></line>
                                       <line x1="5" y1="12" x2="19"
													y2="12"></line>
                                    </svg> Thêm
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card card-product">
							<div class="card-body">
								<div class="text-center position-relative">
									<div class="position-absolute top-0 start-0">
										<span class="badge bg-danger">Sale</span>
									</div>
									<a href="#!"><img
										src="assets/images/products/product-img-6.jpg"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" /></a>
									<div class="card-product-action">
										<a href="#!" class="btn-action" data-bs-toggle="modal"
											data-bs-target="#quickViewModal"> <i class="bi bi-eye"
											data-bs-toggle="tooltip" data-bs-html="true"
											title="Quick View"></i>
										</a> <a href="../pages/shop-wishlist.html" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i
											class="bi bi-heart"></i></a> <a href="#!" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i
											class="bi bi-arrow-left-right"></i></a>
									</div>
								</div>
								<div class="text-small mb-1">
									<a href="#!" class="text-decoration-none text-muted"><small>Dairy,
											Bread & Eggs</small></a>
								</div>
								<h2 class="fs-6">
									<a href="./pages/shop-single.html"
										class="text-inherit text-decoration-none">Blueberry Greek
										Yogurt</a>
								</h2>
								<div>
									<small class="text-warning"> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-half"></i>
									</small> <span class="text-muted small">4.5 (189)</span>
								</div>
								<div
									class="d-flex justify-content-between align-items-center mt-3">
									<div>
										<span class="text-dark">$18</span> <span
											class="text-decoration-line-through text-muted">$24</span>
									</div>
									<div>
										<a href="#!" class="btn btn-primary btn-sm"> <svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round"
												stroke-linejoin="round" class="feather feather-plus">
                                       <line x1="12" y1="5" x2="12"
													y2="19"></line>
                                       <line x1="5" y1="12" x2="19"
													y2="12"></line>
                                    </svg> Thêm
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card card-product">
							<div class="card-body">
								<div class="text-center position-relative">
									<a href="./pages/shop-single.html"><img
										src="assets/images/products/product-img-7.jpg"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" /></a>
									<div class="card-product-action">
										<a href="#!" class="btn-action" data-bs-toggle="modal"
											data-bs-target="#quickViewModal"> <i class="bi bi-eye"
											data-bs-toggle="tooltip" data-bs-html="true"
											title="Quick View"></i>
										</a> <a href="../pages/shop-wishlist.html" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i
											class="bi bi-heart"></i></a> <a href="#!" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i
											class="bi bi-arrow-left-right"></i></a>
									</div>
								</div>
								<div class="text-small mb-1">
									<a href="#!" class="text-decoration-none text-muted"><small>Dairy,
											Bread & Eggs</small></a>
								</div>
								<h2 class="fs-6">
									<a href="./pages/shop-single.html"
										class="text-inherit text-decoration-none">Britannia Cheese
										Slices</a>
								</h2>
								<div class="text-warning">
									<small> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
									</small> <span class="text-muted small">5 (345)</span>
								</div>
								<div
									class="d-flex justify-content-between align-items-center mt-3">
									<div>
										<span class="text-dark">$24</span>
									</div>
									<div>
										<a href="#!" class="btn btn-primary btn-sm"> <svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round"
												stroke-linejoin="round" class="feather feather-plus">
                                       <line x1="12" y1="5" x2="12"
													y2="19"></line>
                                       <line x1="5" y1="12" x2="19"
													y2="12"></line>
                                    </svg> Thêm
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card card-product">
							<div class="card-body">
								<div class="text-center position-relative">
									<a href="./pages/shop-single.html"><img
										src="assets/images/products/product-img-8.jpg"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" /></a>
									<div class="card-product-action">
										<a href="#!" class="btn-action" data-bs-toggle="modal"
											data-bs-target="#quickViewModal"> <i class="bi bi-eye"
											data-bs-toggle="tooltip" data-bs-html="true"
											title="Quick View"></i>
										</a> <a href="../pages/shop-wishlist.html" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i
											class="bi bi-heart"></i></a> <a href="#!" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i
											class="bi bi-arrow-left-right"></i></a>
									</div>
								</div>
								<div class="text-small mb-1">
									<a href="#!" class="text-decoration-none text-muted"><small>Instant
											Food</small></a>
								</div>
								<h2 class="fs-6">
									<a href="./pages/shop-single.html"
										class="text-inherit text-decoration-none">Kellogg's
										Original Cereals</a>
								</h2>
								<div class="text-warning">
									<small> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-fill"></i> <i class="bi bi-star-half"></i>
									</small> <span class="text-muted small">4 (90)</span>
								</div>
								<div
									class="d-flex justify-content-between align-items-center mt-3">
									<div>
										<span class="text-dark">$32</span> <span
											class="text-decoration-line-through text-muted">$35</span>
									</div>
									<div>
										<a href="#!" class="btn btn-primary btn-sm"> <svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round"
												stroke-linejoin="round" class="feather feather-plus">
                                       <line x1="12" y1="5" x2="12"
													y2="19"></line>
                                       <line x1="5" y1="12" x2="19"
													y2="12"></line>
                                    </svg> Thêm
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card card-product">
							<div class="card-body">
								<div class="text-center position-relative">
									<a href="./pages/shop-single.html"><img
										src="assets/images/products/product-img-9.jpg"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" /></a>
									<div class="card-product-action">
										<a href="#!" class="btn-action" data-bs-toggle="modal"
											data-bs-target="#quickViewModal"> <i class="bi bi-eye"
											data-bs-toggle="tooltip" data-bs-html="true"
											title="Quick View"></i>
										</a> <a href="../pages/shop-wishlist.html" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i
											class="bi bi-heart"></i></a> <a href="#!" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i
											class="bi bi-arrow-left-right"></i></a>
									</div>
								</div>
								<div class="text-small mb-1">
									<a href="#!" class="text-decoration-none text-muted"><small>Snack
											& Munchies</small></a>
								</div>
								<h2 class="fs-6">
									<a href="./pages/shop-single.html"
										class="text-inherit text-decoration-none">Slurrp Millet
										Chocolate</a>
								</h2>
								<div class="text-warning">
									<small> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-fill"></i> <i class="bi bi-star-half"></i>
									</small> <span class="text-muted small">4.5 (67)</span>
								</div>
								<div
									class="d-flex justify-content-between align-items-center mt-3">
									<div>
										<span class="text-dark">$3</span> <span
											class="text-decoration-line-through text-muted">$5</span>
									</div>
									<div>
										<a href="#!" class="btn btn-primary btn-sm"> <svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round"
												stroke-linejoin="round" class="feather feather-plus">
                                       <line x1="12" y1="5" x2="12"
													y2="19"></line>
                                       <line x1="5" y1="12" x2="19"
													y2="12"></line>
                                    </svg> Thêm
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card card-product">
							<div class="card-body">
								<div class="text-center position-relative">
									<a href="./pages/shop-single.html"><img
										src="assets/images/products/product-img-10.jpg"
										alt="Grocery Ecommerce Template" class="mb-3 img-fluid" /></a>
									<div class="card-product-action">
										<a href="#!" class="btn-action" data-bs-toggle="modal"
											data-bs-target="#quickViewModal"> <i class="bi bi-eye"
											data-bs-toggle="tooltip" data-bs-html="true"
											title="Quick View"></i>
										</a> <a href="../pages/shop-wishlist.html" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i
											class="bi bi-heart"></i></a> <a href="#!" class="btn-action"
											data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i
											class="bi bi-arrow-left-right"></i></a>
									</div>
								</div>
								<div class="text-small mb-1">
									<a href="#!" class="text-decoration-none text-muted"><small>Dairy,
											Bread & Eggs</small></a>
								</div>
								<h2 class="fs-6">
									<a href="./pages/shop-single.html"
										class="text-inherit text-decoration-none">Amul Butter -
										500 g</a>
								</h2>
								<div class="text-warning">
									<small> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> <i
										class="bi bi-star-half"></i> <i class="bi bi-star"></i>
									</small> <span class="text-muted small">3.5 (89)</span>
								</div>
								<div class="d-flex justify-content-between mt-4">
									<div>
										<span class="text-dark">$13</span> <span
											class="text-decoration-line-through text-muted">$18</span>
									</div>
									<div>
										<a href="#!" class="btn btn-primary btn-sm"> <svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round"
												stroke-linejoin="round" class="feather feather-plus">
                                       <line x1="12" y1="5" x2="12"
													y2="19"></line>
                                       <line x1="5" y1="12" x2="19"
													y2="12"></line>
                                    </svg> Thêm
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Popular Products End-->

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

	<!-- Modal -->
	<div class="modal fade" id="quickViewModal" tabindex="-1"
		aria-hidden="true">
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
								<div class="zoom" onmousemove="zoom(event)"
									style="background-image: url(./assets/images/products/product-single-img-1.jpg)">
									<!-- img -->
									<img src="./assets/images/products/product-single-img-1.jpg"
										alt="" />
								</div>
								<div>
									<div class="zoom" onmousemove="zoom(event)"
										style="background-image: url(./assets/images/products/product-single-img-2.jpg)">
										<!-- img -->
										<img src="./assets/images/products/product-single-img-2.jpg"
											alt="" />
									</div>
								</div>
								<div>
									<div class="zoom" onmousemove="zoom(event)"
										style="background-image: url(./assets/images/products/product-single-img-3.jpg)">
										<!-- img -->
										<img src="./assets/images/products/product-single-img-3.jpg"
											alt="" />
									</div>
								</div>
								<div>
									<div class="zoom" onmousemove="zoom(event)"
										style="background-image: url(./assets/images/products/product-single-img-4.jpg)">
										<!-- img -->
										<img src="./assets/images/products/product-single-img-4.jpg"
											alt="" />
									</div>
								</div>
							</div>
							<!-- product tools -->
							<div class="product-tools">
								<div class="thumbnails row g-3" id="productModalThumbnails">
									<div class="col-3" class="tns-nav-active">
										<div class="thumbnails-img">
											<!-- img -->
											<img src="./assets/images/products/product-single-img-1.jpg"
												alt="" />
										</div>
									</div>
									<div class="col-3">
										<div class="thumbnails-img">
											<!-- img -->
											<img src="./assets/images/products/product-single-img-2.jpg"
												alt="" />
										</div>
									</div>
									<div class="col-3">
										<div class="thumbnails-img">
											<!-- img -->
											<img src="./assets/images/products/product-single-img-3.jpg"
												alt="" />
										</div>
									</div>
									<div class="col-3">
										<div class="thumbnails-img">
											<!-- img -->
											<img src="./assets/images/products/product-single-img-4.jpg"
												alt="" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="ps-lg-8 mt-6 mt-lg-0">
								<a href="#!" class="mb-4 d-block">Bakery Biscuits</a>
								<h2 class="mb-1 h1">Napolitanke Ljesnjak</h2>
								<div class="mb-4">
									<small class="text-warning"> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-half"></i>
									</small> <a href="#" class="ms-2">(30 reviews)</a>
								</div>
								<div class="fs-4">
									<span class="fw-bold text-dark">$32</span> <span
										class="text-decoration-line-through text-muted">$35</span> <span><small
										class="fs-6 ms-2 text-danger">26% Off</small></span>
								</div>
								<hr class="my-6" />
								<div class="mb-4">
									<button type="button" class="btn btn-outline-secondary">250g</button>
									<button type="button" class="btn btn-outline-secondary">500g</button>
									<button type="button" class="btn btn-outline-secondary">1kg</button>
								</div>
								<div>
									<!-- input -->
									<!-- input -->
									<div class="input-group input-spinner">
										<input type="button" value="-" class="button-minus btn btn-sm"
											data-field="quantity" /> <input type="number" step="1"
											max="10" value="1" name="quantity"
											class="quantity-field form-control-sm form-input" /> <input
											type="button" value="+" class="button-plus btn btn-sm"
											data-field="quantity" />
									</div>
								</div>
								<div
									class="mt-3 row justify-content-start g-2 align-items-center">
									<div class="col-lg-4 col-md-5 col-6 d-grid">
										<!-- button -->
										<!-- btn -->
										<button type="button" class="btn btn-primary">
											<i class="feather-icon icon-shopping-bag me-2"></i> Add to
											cart
										</button>
									</div>
									<div class="col-md-4 col-5">
										<!-- btn -->
										<a class="btn btn-light" href="#" data-bs-toggle="tooltip"
											data-bs-html="true" aria-label="Compare"><i
											class="bi bi-arrow-left-right"></i></a> <a class="btn btn-light"
											href="#!" data-bs-toggle="tooltip" data-bs-html="true"
											aria-label="Wishlist"><i class="feather-icon icon-heart"></i></a>
									</div>
								</div>
								<hr class="my-6" />
								<div>
									<table class="table table-borderless">
										<tbody>
											<tr>
												<td>Product Code:</td>
												<td>FBB00255</td>
											</tr>
											<tr>
												<td>Availability:</td>
												<td>In Stock</td>
											</tr>
											<tr>
												<td>Type:</td>
												<td>Fruits</td>
											</tr>
											<tr>
												<td>Shipping:</td>
												<td><small> 01 day shipping. <span
														class="text-muted">( Free pickup today)</span>
												</small></td>
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
									document
											.getElementById("copyright")
											.appendChild(
													document
															.createTextNode(new Date()
																	.getFullYear()));
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

	<!-- Javascript-->

	<!-- Libs JS -->
	<!-- <script src="./assets/libs/jquery/dist/jquery.min.js"></script> -->
	<script src="./assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="./assets/libs/simplebar/dist/simplebar.min.js"></script>

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
