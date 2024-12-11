<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      
      <title>Đăng nhập Thành viên - Tune Vibe</title>
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
      <!-- navigation -->
      <div class="border-bottom shadow-sm">
         <nav class="navbar navbar-light py-2">
            <div class="container justify-content-center justify-content-lg-between">
               <a class="navbar-brand" href="index-customer.jsp">
                  <img src="./assets/images/logo/convenience-store-svgrepo-com.svg" alt="" class="d-inline-block align-text-top" />
               </a>
               <div class="modal-footer border-0 justify-content-center">
                  Chào mừng đến với Tune Vibe  
               </div>
            </div>
         </nav>
      </div>

      <main>
         <!-- section -->
         <section class="my-lg-14 my-8">
            <div class="container">
               <!-- row -->
               <div class="row justify-content-center align-items-center">
                  <div class="col-12 col-md-6 col-lg-4 order-lg-1 order-2">
                     <!-- img -->
                     <img src="./assets/images/svg-graphics/signin-g.svg" alt="" class="img-fluid" />
                  </div>
                  <!-- col -->
                  <div class="col-12 col-md-6 offset-lg-1 col-lg-4 order-lg-2 order-1">
                     <div class="mb-lg-9 mb-5">
                        <h1 class="mb-1 h2 fw-bold">Đăng nhập tài khoản</h1>
                        <p>Vui lòng nhập email để tiếp tục.</p>
                     </div>

                     <form name="signin-form" onsubmit="login();return false;">
                        <div class="row g-3">
                           <!-- row -->

                           <div class="col-12">
                              <!-- input -->
                              <label for="formSigninEmail" class="form-label visually-hidden">Địa chỉ Email</label>
                              <input type="email" name="email" class="form-control" id="formSigninEmail" placeholder="Email">
                              <div id="signin-invalid-email" class="text-danger" hidden>Vui lòng nhập đúng Email đã đăng ký</div>
                           </div>
                           <div class="col-12">
                              <!-- input -->
                              <div class="password-field position-relative">
                                 <label for="formSigninPassword" class="form-label visually-hidden">Mật khẩu</label>
                                 <div class="password-field position-relative">
                                    <input name="password" type="password" class="form-control fakePassword" id="formSigninPassword" placeholder="*****">
                                    <span><i class="bi bi-eye-slash passwordToggler"></i></span>
                                    <div id="signin-invalid-password" class="text-danger" hidden>Vui lòng nhập mật khẩu.</div>
                                 </div>
                              </div>
                           </div>
                           <div class="d-flex justify-content-between">
                              <!-- form check -->
                              <div class="form-check">
                                 <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
                                 <!-- label -->
                                 <label class="form-check-label" for="flexCheckDefault">Ghi nhớ mật khẩu</label>
                              </div>
                              <div>
                                 Quên mật khẩu?
                                 <a href="./forgot-password.jsp">Lấy lại mật khẩu.</a>
                              </div>
                           </div>
                           <!-- btn -->
                           <div class="col-12 d-grid">
                           <button type="submit" class="btn btn-primary">Đăng nhập</button></div>
                           </div>
                           <!-- link -->
                           <div>
                              Bạn chưa có tài khoản Tune Vibe?
                              <a href="./signup.jsp">Đăng ký</a> thành viên
                           </div>
                        </div>
                     </form>
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
      <script src="./assets/js/Login.js"></script>
      <!-- Libs JS -->
      <!-- <script src="./assets/libs/jquery/dist/jquery.min.js"></script> -->
      <script src="./assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
      <script src="./assets/libs/simplebar/dist/simplebar.min.js"></script>

      <!-- Theme JS -->
      <script src="./assets/js/theme.min.js"></script>

      <script src="./assets/js/vendors/password.js"></script>
      <!--<script src="./assets/js/vendors/validation.js"></script>-->
   </body>
</html>