<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="border-bottom">
    <div class="py-5">
        <div class="container">
            <div class="row w-100 align-items-center gx-lg-2 gx-0">
                <!-- Logo -->
                <div class="col-xxl-2 col-lg-3 col-md-6 col-5">
                    <a class="navbar-brand d-none d-lg-block" href="./index.jsp">
                        <img src="./assets/images/logo/convenience-store-svgrepo-com.svg" alt="Logo">
                    </a>
                    <div class="d-flex justify-content-between w-100 d-lg-none">
                        <a class="navbar-brand" href="./index.jsp">
                            <img src="./assets/images/logo/convenience-store-svgrepo-com.svg" alt="Logo">
                        </a>
                    </div>
                </div>

                <!-- Search Form -->
                <div class="col-xxl-5 col-lg-5 d-none d-lg-block">
                    <form action="search.jsp" method="get">
                        <div class="input-group">
                            <input class="form-control rounded" type="search" name="query" placeholder="Tìm kiếm sản phẩm">
                            <button class="btn bg-white border border-start-0 ms-n10 rounded-0 rounded-end" type="submit">
                                <i class="bi bi-search"></i>
                            </button>
                        </div>
                    </form>
                </div>

                <!-- Location and User Options -->
                <div class="col-md-2 col-xxl-3 d-none d-lg-block">
                    <button id="btnStore" type="button" class="btn btn-outline-gray-400 text-muted" data-bs-toggle="modal" data-bs-target="#locationModal">
                        <i class="bi bi-geo-alt me-2"></i> Chọn cửa hàng gần bạn
                    </button>
                </div>

                <!-- Icons -->
                <div class="col-lg-2 col-xxl-2 text-end col-md-6 col-7">
                    <div class="list-inline">
                        <!-- User Icon -->
                        <div class="list-inline-item me-5">
                            <div class="text-muted" onclick="isSignin()">
                                <i class="bi bi-person"></i>
                            </div>
                        </div>
                        <!-- Cart Icon -->
                        <div class="list-inline-item me-5">
                            <a class="text-muted position-relative" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" href="#offcanvasExample" role="button" aria-controls="offcanvasRight" onclick="showAddress()">
                                <i class="bi bi-bag"></i>
                            </a>
                        </div>
                        <!-- Mobile Menu -->
                        <div class="list-inline-item d-inline-block d-lg-none">
                            <button class="navbar-toggler collapsed" type="button" data-bs-toggle="offcanvas" data-bs-target="#navbar-default" aria-controls="navbar-default" aria-label="Toggle navigation">
                                <i class="bi bi-text-indent-left"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Navbar Links -->
    <nav class="navbar navbar-expand-lg navbar-light navbar-default py-0 pb-lg-4" aria-label="Offcanvas navbar large">
        <div class="container">
            <div class="offcanvas offcanvas-start" tabindex="-1" id="navbar-default" aria-labelledby="navbar-defaultLabel">
                <div class="offcanvas-header pb-1">
                    <a href="./index.jsp">
                        <img src="./assets/images/logo/freshcart-logo.svg" alt="eCommerce HTML Template">
                    </a>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <div class="d-block d-lg-none mb-4">
                        <!-- Search on Mobile -->
                        <form action="search.jsp" method="get">
                            <div class="input-group">
                                <input class="form-control rounded" type="search" name="query" placeholder="Tìm kiếm sản phẩm">
                                <button class="btn bg-white border ms-n10 rounded-0 rounded-end" type="submit">
                                    <i class="bi bi-search"></i>
                                </button>
                            </div>
                        </form>
                        <!-- Location on Mobile -->
                        <div class="mt-2">
                            <button type="button" class="btn btn-outline-gray-400 text-muted w-100" data-bs-toggle="modal" data-bs-target="#locationModal">
                                <i class="bi bi-geo-alt me-2"></i> Chọn cửa hàng gần bạn
                            </button>
                        </div>
                    </div>

                    <!-- Navbar Links -->
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="shop.jsp">Cửa hàng</a></li>
                        <li class="nav-item"><a class="nav-link" href="about.jsp">Giới thiệu</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact.jsp">Liên hệ</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</div>
