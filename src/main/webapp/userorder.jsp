<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <meta content="Codescandy" name="author" />
      <title>Giỏ hàng - Tune Vibe</title>
      <!-- Favicon icon-->
      <link rel="shortcut icon" type="image/x-icon" href="./assets/images/favicon/favicon.ico" />

      <!-- Libs CSS -->
      <link href="./assets/libs/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet" />
      <link href="./assets/libs/feather-webfont/dist/feather-icons.css" rel="stylesheet" />
      <link href="./assets/libs/simplebar/dist/simplebar.min.css" rel="stylesheet" />

      <!-- Theme CSS -->
      <link rel="stylesheet" href="./assets/css/theme.min.css" />
      <script async src="https://www.googletagmanager.com/gtag/js?id=G-M8S4MT3EYG"></script>
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
      <!-- navbar -->
      <div class="border-bottom">
         
         <div class="py-5">
            <div class="container">
               <div class="row w-100 align-items-center gx-lg-2 gx-0">
                  <div class="col-xxl-2 col-lg-3 col-md-6 col-5">
                     <a class="navbar-brand d-none d-lg-block" href="index-customer.jsp">
                        <img src="./assets/images/logo/convenience-store-svgrepo-com.svg" alt="eCommerce HTML Template" />
                     </a>
                     <div class="d-flex justify-content-between w-100 d-lg-none">
                        <a class="navbar-brand" href="index-customer.jsp">
                           <img src="./assets/images/logo/convenience-store-svgrepo-com.svg" alt="eCommerce HTML Template" />
                        </a>
                     </div>
                  </div>
                  <div class="col-xxl-5 col-lg-5 d-none d-lg-block">
                     <form action="#">
                        <div class="input-group">
                           <input class="form-control rounded" type="search" placeholder="Bạn muốn mua gì?" />
                           <span class="input-group-append">
                              <button class="btn bg-white border border-start-0 ms-n10 rounded-0 rounded-end" type="button">
                                 <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="16"
                                    height="16"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    stroke-width="2"
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    class="feather feather-search">
                                    <circle cx="11" cy="11" r="8"></circle>
                                    <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                                 </svg>
                              </button>
                           </span>
                        </div>
                     </form>
                  </div>
                   <div class="col-md-2 col-xxl-3 d-none d-lg-block">
                     <!-- Button trigger modal -->
                     <button id="btnStore" type="button" class="btn btn-outline-gray-400 text-muted" data-bs-toggle="modal" data-bs-target="#locationModal">
                        <i class="feather-icon icon-map-pin me-2"></i>
                        Chọn địa chỉ gần bạn
                     </button>
                  </div>                  
               </div>
            </div>
         </div>

         
      </div>
      <!-- Modal Đăng ký tài khoản-->
      <div class="modal fade" id="userModal" tabindex="-1" aria-labelledby="userModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content p-4">
               <div class="modal-header border-0">
                  <h5 class="modal-title fs-3 fw-bold" id="userModalLabel">Đăng ký thành viên</h5>

                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
               </div>
               <div class="modal-body">
                  <form class="needs-validation" novalidate>
                     <div class="mb-3">
                        <label for="fullName" class="form-label">Tên đăng nhập</label>
                        <input type="text" class="form-control" id="fullName" placeholder="Vui lòng nhập tên của bạn" required />
                        <div class="invalid-feedback">Vui lòng nhập tên của bạn</div>
                     </div>
                     <div class="mb-3">
                        <label for="email" class="form-label">Địa chỉ Email</label>
                        <input type="email" class="form-control" id="email" placeholder="Vui lòng nhập Email của bạn" required />
                        <div class="invalid-feedback">Vui lòng nhập địa chỉ Emai</div>
                     </div>
                     <div class="mb-3">
                        <label for="password" class="form-label">Mật khẩu</label>
                        <input type="password" class="form-control" id="password" placeholder="Mật khẩu" required />
                        <div class="invalid-feedback">Vui lòng nhập mật khẩu</div>
                        <small class="form-text">
                           Bằng cách tiếp tục, bạn đồng ý với
                           <a href="#!">Điều Khoản Sử Dụng</a>
                           và
                           <a href="#!">Điều Khoản Bảo Mật</a> của chúng tôi.
                        </small>
                     </div>

                     <button type="submit" class="btn btn-primary" type="submit">Đăng ký</button>
                  </form>
               </div>
               <div class="modal-footer border-0 justify-content-center">
                  Bạn đã có tài khoản?
                 <a href="signin.jsp">Đăng nhập</a>
              <!-- <a href="#">Sign in</a> -->    
               </div>
            </div>
         </div>
      </div>

      <!-- Shop Cart -->

      <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
         <div class="offcanvas-header border-bottom">
            <div class="text-start">
               <h5 id="offcanvasRightLabel" class="mb-0 fs-4">Giỏ hàng</h5>
               <small>Location in 382480</small>
            </div>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
         </div>
         <div class="offcanvas-body">
            <div>
               <!-- alert -->

               <ul class="list-group list-group-flush">
                  <!-- list group -->
                  <li class="list-group-item py-3 ps-0 border-top">
                     <!-- row -->
                     <div class="row align-items-center">
                        <div class="col-6 col-md-6 col-lg-7">
                           <div class="d-flex">
                              <img src="./assets/images/products/product-img-1.jpg" alt="Ecommerce" class="icon-shape icon-xxl" />
                              <div class="ms-3">
                                 <!-- title -->
                                 <a href="./pages/shop-single.html" class="text-inherit">
                                    <h6 class="mb-0">Haldiram's Sev Bhujia</h6>
                                 </a>
                                
                                 <!-- text -->
                                 <div class="mt-2 small lh-1">
                                    <a href="#!" class="text-decoration-none text-inherit">
                                       <span class="me-1 align-text-bottom">
                                          <svg
                                             xmlns="http://www.w3.org/2000/svg"
                                             width="14"
                                             height="14"
                                             viewBox="0 0 24 24"
                                             fill="none"
                                             stroke="currentColor"
                                             stroke-width="2"
                                             stroke-linecap="round"
                                             stroke-linejoin="round"
                                             class="feather feather-trash-2 text-success">
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
                        <!-- input group -->
                        <div class="col-4 col-md-3 col-lg-3">
                           <!-- input -->
                           <!-- input -->
                           <div class="input-group input-spinner">
                              <input type="button" value="-" class="button-minus btn btn-sm" data-field="quantity" />
                              <input type="number" step="1" max="10" value="1" name="quantity" class="quantity-field form-control-sm form-input" />
                              <input type="button" value="+" class="button-plus btn btn-sm" data-field="quantity" />
                           </div>
                        </div>
                        <!-- price -->
                        <div class="col-2 text-lg-end text-start text-md-end col-md-2">
                           <span class="fw-bold">$5.00</span>
                        </div>
                     </div>
                  </li>
                  <!-- list group -->
                  <li class="list-group-item py-3 ps-0">
                     <!-- row -->
                     <div class="row align-items-center">
                        <div class="col-6 col-md-6 col-lg-7">
                           <div class="d-flex">
                              <img src="./assets/images/products/product-img-2.jpg" alt="Ecommerce" class="icon-shape icon-xxl" />
                              <div class="ms-3">
                                 <a href="./pages/shop-single.html" class="text-inherit">
                                    <h6 class="mb-0">NutriChoice Digestive</h6>
                                 </a>
                               
                                 <!-- text -->
                                 <div class="mt-2 small lh-1">
                                    <a href="#!" class="text-decoration-none text-inherit">
                                       <span class="me-1 align-text-bottom">
                                          <svg
                                             xmlns="http://www.w3.org/2000/svg"
                                             width="14"
                                             height="14"
                                             viewBox="0 0 24 24"
                                             fill="none"
                                             stroke="currentColor"
                                             stroke-width="2"
                                             stroke-linecap="round"
                                             stroke-linejoin="round"
                                             class="feather feather-trash-2 text-success">
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

                        <!-- input group -->
                        <div class="col-4 col-md-3 col-lg-3">
                           <!-- input -->
                           <!-- input -->
                           <div class="input-group input-spinner">
                              <input type="button" value="-" class="button-minus btn btn-sm" data-field="quantity" />
                              <input type="number" step="1" max="10" value="1" name="quantity" class="quantity-field form-control-sm form-input" />
                              <input type="button" value="+" class="button-plus btn btn-sm" data-field="quantity" />
                           </div>
                        </div>
                        <!-- price -->
                        <div class="col-2 text-lg-end text-start text-md-end col-md-2">
                           <span class="fw-bold text-danger">$20.00</span>
                           <div class="text-decoration-line-through text-muted small">$26.00</div>
                        </div>
                     </div>
                  </li>
                  <!-- list group -->
                  <li class="list-group-item py-3 ps-0">
                     <!-- row -->
                     <div class="row align-items-center">
                        <div class="col-6 col-md-6 col-lg-7">
                           <div class="d-flex">
                              <img src="./assets/images/products/product-img-3.jpg" alt="Ecommerce" class="icon-shape icon-xxl" />
                              <div class="ms-3">
                                 <!-- title -->
                                 <a href="./pages/shop-single.html" class="text-inherit">
                                    <h6 class="mb-0">Cadbury 5 Star Chocolate</h6>
                                 </a>
                                 
                                 <!-- text -->
                                 <div class="mt-2 small lh-1">
                                    <a href="#!" class="text-decoration-none text-inherit">
                                       <span class="me-1 align-text-bottom">
                                          <svg
                                             xmlns="http://www.w3.org/2000/svg"
                                             width="14"
                                             height="14"
                                             viewBox="0 0 24 24"
                                             fill="none"
                                             stroke="currentColor"
                                             stroke-width="2"
                                             stroke-linecap="round"
                                             stroke-linejoin="round"
                                             class="feather feather-trash-2 text-success">
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

                        <!-- input group -->
                        <div class="col-4 col-md-3 col-lg-3">
                           <!-- input -->
                           <!-- input -->
                           <div class="input-group input-spinner">
                              <input type="button" value="-" class="button-minus btn btn-sm" data-field="quantity" />
                              <input type="number" step="1" max="10" value="1" name="quantity" class="quantity-field form-control-sm form-input" />
                              <input type="button" value="+" class="button-plus btn btn-sm" data-field="quantity" />
                           </div>
                        </div>
                        <!-- price -->
                        <div class="col-2 text-lg-end text-start text-md-end col-md-2">
                           <span class="fw-bold">$15.00</span>
                           <div class="text-decoration-line-through text-muted small">$20.00</div>
                        </div>
                     </div>
                  </li>
                  <!-- list group -->
                  <li class="list-group-item py-3 ps-0">
                     <!-- row -->
                     <div class="row align-items-center">
                        <div class="col-6 col-md-6 col-lg-7">
                           <div class="d-flex">
                              <img src="./assets/images/products/product-img-4.jpg" alt="Ecommerce" class="icon-shape icon-xxl" />
                              <div class="ms-3">
                                 <!-- title -->
                                 <!-- title -->
                                 <a href="./pages/shop-single.html" class="text-inherit">
                                    <h6 class="mb-0">Onion Flavour Potato</h6>
                                 </a>
                               
                                 <!-- text -->
                                 <div class="mt-2 small lh-1">
                                    <a href="#!" class="text-decoration-none text-inherit">
                                       <span class="me-1 align-text-bottom">
                                          <svg
                                             xmlns="http://www.w3.org/2000/svg"
                                             width="14"
                                             height="14"
                                             viewBox="0 0 24 24"
                                             fill="none"
                                             stroke="currentColor"
                                             stroke-width="2"
                                             stroke-linecap="round"
                                             stroke-linejoin="round"
                                             class="feather feather-trash-2 text-success">
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

                        <!-- input group -->
                        <div class="col-4 col-md-3 col-lg-3">
                           <!-- input -->
                           <!-- input -->
                           <div class="input-group input-spinner">
                              <input type="button" value="-" class="button-minus btn btn-sm" data-field="quantity" />
                              <input type="number" step="1" max="10" value="1" name="quantity" class="quantity-field form-control-sm form-input" />
                              <input type="button" value="+" class="button-plus btn btn-sm" data-field="quantity" />
                           </div>
                        </div>
                        <!-- price -->
                        <div class="col-2 text-lg-end text-start text-md-end col-md-2">
                           <span class="fw-bold">$15.00</span>
                           <div class="text-decoration-line-through text-muted small">$20.00</div>
                        </div>
                     </div>
                  </li>
                  <!-- list group -->
                  <li class="list-group-item py-3 ps-0 border-bottom">
                     <!-- row -->
                     <div class="row align-items-center">
                        <div class="col-6 col-md-6 col-lg-7">
                           <div class="d-flex">
                              <img src="./assets/images/products/product-img-5.jpg" alt="Ecommerce" class="icon-shape icon-xxl" />
                              <div class="ms-3">
                                 <!-- title -->
                                 <a href="./pages/shop-single.html" class="text-inherit">
                                    <h6 class="mb-0">Salted Instant Popcorn</h6>
                                 </a>
                                
                                 <!-- text -->
                                 <div class="mt-2 small lh-1">
                                    <a href="#!" class="text-decoration-none text-inherit">
                                       <span class="me-1 align-text-bottom">
                                          <svg
                                             xmlns="http://www.w3.org/2000/svg"
                                             width="14"
                                             height="14"
                                             viewBox="0 0 24 24"
                                             fill="none"
                                             stroke="currentColor"
                                             stroke-width="2"
                                             stroke-linecap="round"
                                             stroke-linejoin="round"
                                             class="feather feather-trash-2 text-success">
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

                        <!-- input group -->
                        <div class="col-4 col-md-3 col-lg-3">
                           <!-- input -->
                           <!-- input -->
                           <div class="input-group input-spinner">
                              <input type="button" value="-" class="button-minus btn btn-sm" data-field="quantity" />
                              <input type="number" step="1" max="10" value="1" name="quantity" class="quantity-field form-control-sm form-input" />
                              <input type="button" value="+" class="button-plus btn btn-sm" data-field="quantity" />
                           </div>
                        </div>
                        <!-- price -->
                        <div class="col-2 text-lg-end text-start text-md-end col-md-2">
                           <span class="fw-bold">$15.00</span>
                           <div class="text-decoration-line-through text-muted small">$25.00</div>
                        </div>
                     </div>
                  </li>
               </ul>
               <!-- btn -->
               <div class="d-flex justify-content-between mt-4">
                  <a href="#!" class="btn btn-primary">Tiếp tục mua sắm</a>
                  <a href="#!" class="btn btn-dark">Cập nhật giỏ hàng</a>
               </div>
            </div>
         </div>
      </div>

      <!-- Modal Chọn địa chỉ mua hàng-->
      <div class="modal fade" id="locationModal" tabindex="-1" aria-labelledby="locationModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-sm modal-dialog-centered">
            <div class="modal-content">
               <div class="modal-body p-6">
                  <div class="d-flex justify-content-between align-items-start">
                     <div>
                        <h5 class="mb-0" id="locationModalLabel">Cửa hàng</h5>
                        <p class="mb-0 small">Vui lòng chọn cửa hàng gần bạn</p>
                     </div>
                     <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
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
   <!-- section -->
   <section>
      <div class="container">
         <!-- row -->
         <div class="row">
            <!-- col -->
            <div class="col-12">
               <div class="d-flex justify-content-between align-items-center d-md-none py-4">
                  <!-- heading -->
                  <h3 class="fs-5 mb-0">Thông tin tài khoản khách hàng</h3>
                  <!-- button -->
                  <button
                     class="btn btn-outline-gray-400 text-muted d-md-none btn-icon btn-sm ms-3"
                     type="button"
                     data-bs-toggle="offcanvas"
                     data-bs-target="#offcanvasAccount"
                     aria-controls="offcanvasAccount">
                     <i class="bi bi-text-indent-left fs-3"></i>
                  </button>
               </div>
            </div>
            <!-- col -->
            <div class="col-lg-3 col-md-4 col-12 border-end d-none d-md-block">
               <div class="pt-10 pe-lg-10">
                  <!-- nav -->
                  <ul class="nav flex-column nav-pills nav-pills-dark">
                     <!-- nav item -->
                     <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="userorder.jsp">
                           <i class="feather-icon icon-shopping-bag me-2"></i>
                           Giỏ hàng
                        </a>
                     </li>
                     <!-- nav item -->
                     <li class="nav-item">
                        <a class="nav-link" href="userinfo.jsp">
                           <i class="feather-icon icon-settings me-2"></i>
                           Thông tin tài khoản
                        </a>
                     </li>
                     <!-- nav item -->
                     <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="checkout.jsp">
                           <i class="feather-icon icon-check me-2"></i>
                           Đơn hàng
                        </a>
                     </li>
                     <!-- nav item -->
                     <li class="nav-item">
                        <a class="nav-link" href="account-payment-method.html">
                           <i class="feather-icon icon-credit-card me-2"></i>
                           Phương thức thanh toán
                        </a>
                     </li>
                     <!-- nav item -->
                     <li class="nav-item">
                        <hr />
                     </li>
                     <!-- nav item -->
                  <li class="nav-item">
                     <a class="nav-link" href="index-customer.jsp">
                        <i class="feather-icon icon-log-out me-2"></i>
                        Đăng xuất
                     </a>
                  </li>
                  </ul>
               </div>
            </div>
            <div class="col-lg-9 col-md-8 col-12">
               <div class="py-6 p-md-6 p-lg-10">
                  <!-- heading -->
                  <h2 class="mb-6">Giỏ hàng</h2>
                  
                  <!-- Customer Info -->
                  <div class="mb-4 p-3 border rounded">
                     <h5>Thông tin khách hàng</h5>
                     <p class="mb-1"><strong>Tên khách hàng:</strong> <span id="customer-name">Đang tải...</span></p>
                     <p class="mb-1"><strong>Địa chỉ:</strong> <span id="customer-address">Đang tải...</span></p>
                     <p class="mb-1"><strong>Số điện thoại:</strong> <span id="customer-phone">Đang tải...</span></p>
                  </div>

                  <div class="table-responsive-xxl border-0">
                     <!-- Table -->
                     <table class="table mb-0 text-nowrap table-centered">
                        <!-- Table Head -->
                        <thead class="bg-light">
                           <tr>
                              <th>&nbsp;</th>
                              <th>Sản phẩm</th>
                              <th>Mã hàng hóa</th>
                              <th>Số lượng</th>
                              <th>Đơn vị</th>
                              <th>Giá tiền</th>
                           </tr>
                        </thead>
                        <tbody id="table-cart">
                           <!-- Table body -->
                           <tr id="total-value">
                              <td class="align-middle border-top-0 w-0"></td>
                              <td class="align-middle border-top-0"></td>
                              <td id="total-quantity" class="align-middle border-top-0">null</td>
                              <td class="align-middle border-top-0">Tổng số lượng: </td>
                              <td class="align-middle border-top-0">Tổng cộng: </td>
                              <td id="total-price" class="align-middle border-top-0">null VNĐ</td>                                    
                           </tr>
                        </tbody>
                     </table>
                  </div>

                  <!-- Checkout Button -->
                  <div class="text-end mt-4">
                     <a href="checkout.jsp" class="btn btn-primary">Thanh toán</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
</main>


      <!-- Footer -->
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
                           <li class="nav-item mb-2"><a href="#!" class="nav-link">Thực phẩm các loại</a></li>
                           <li class="nav-item mb-2"><a href="#!" class="nav-link">Đồ uống</a></li>
                           <li class="nav-item mb-2"><a href="#!" class="nav-link">Đồ ăn nhẹ và đồ ngọt</a></li>
                           <li class="nav-item mb-2"><a href="#!" class="nav-link">Sản phẩm cá nhân và gia đình</a></li>
                           <li class="nav-item mb-2"><a href="#!" class="nav-link">Văn phòng phẩm và đồ dùng học tập</a></li>
                        </ul>
                     </div>

                  </div>
               </div>
              
            
            <div class="border-top py-4">
               <div class="row align-items-center">
                  <div class="col-md-6">
                     <span class="small text-muted">
                        © 2022
                        <span id="copyright">
                           -
                           <script>
                              document.getElementById("copyright").appendChild(document.createTextNode(new Date().getFullYear()));
                           </script>
                        </span>
                        DACNTT 
                     </span>
                  </div>
                  <div class="col-md-6">
                     <ul class="list-inline text-md-end mb-0 small mt-3 mt-md-0">
                        <li class="list-inline-item text-muted">Theo dõi chúng tôi tại</li>
                        <li class="list-inline-item me-1">
                           <a href="#!" class="btn btn-xs btn-social btn-icon">
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                 <path
                                    d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                              </svg>
                           </a>
                        </li>
                        <li class="list-inline-item me-1">
                           <a href="#!" class="btn btn-xs btn-social btn-icon">
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                                 <path
                                    d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
                              </svg>
                           </a>
                        </li>
                        <li class="list-inline-item">
                           <a href="#!" class="btn btn-xs btn-social btn-icon">
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                                 <path
                                    d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                              </svg>
                           </a>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- Javascript-->
      <script src="./assets/js/UserSetting.js"></script>
      <script src="./assets/js/Stores.js"></script>
      <script src="./assets/js/Home.js"></script>	
      <script src="./assets/js/Cart.js"></script>      
      <!-- Libs JS -->
      <!-- <script src="../assets/libs/jquery/dist/jquery.min.js"></script> -->
      <script src="./assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
      <script src="./assets/libs/simplebar/dist/simplebar.min.js"></script>
      <script>
   document.addEventListener('DOMContentLoaded', function() {
      fetchCustomerInfo();
   });

   function fetchCustomerInfo() {
      fetch('/api/customer-info') // Đường dẫn API để lấy thông tin khách hàng
         .then(response => response.json())
         .then(data => {
            document.getElementById('customer-name').innerText = data.name || 'Không có thông tin';
            document.getElementById('customer-address').innerText = data.address || 'Không có thông tin';
            document.getElementById('customer-phone').innerText = data.phone || 'Không có thông tin';
         })
         .catch(error => {
            console.error('Error fetching customer info:', error);
            document.getElementById('customer-name').innerText = 'Lỗi tải dữ liệu';
            document.getElementById('customer-address').innerText = 'Lỗi tải dữ liệu';
            document.getElementById('customer-phone').innerText = 'Lỗi tải dữ liệu';
         });
   }

   function handleCheckout() {
      alert('Chuyển đến trang thanh toán');
      // Thêm logic xử lý thanh toán ở đây
   }
</script>
      
		<script>loadAllStore();</script>
		<script>getData();</script>
		<script>showUserSettingCart();</script>
      <!-- Theme JS -->
      <script src="./assets/js/theme.min.js"></script>
   </body>
</html>