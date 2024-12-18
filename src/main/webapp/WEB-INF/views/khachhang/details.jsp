<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<!--import JSTL-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- import SPRING-FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${product.title }</title>
    <link rel="stylesheet"
          href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
          crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="${base}/css/details.css">
    <jsp:include page="/WEB-INF/views/khachhang/layouts/css.jsp"></jsp:include>
<%--    <link rel="stylesheet" type="text/css" href="${base}/css/details.css">--%>
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

            <li><a href="#">${product.categories.name }</a></li>

            <li>/</li>

            <li>${product.title }</li>
        </ul>
    </div>
    <div class="content">

        <div class="content-cart">
            <div class="thongtin">
                <div class="tt-title">
                    <h1>${product.title }</h1>
                </div>
                <div class="tt-price">
                    <fmt:setLocale value="vi_VN"/>
                    <fmt:formatNumber value="${product.price}" type="currency"/>
                </div>
    <!--           <div class="tt-size">
                    <ul>
                        <li>
                            <button type="button" id="size">M</button>
                        </li>
                        <li>
                            <button type="button" id="size">L</button>
                        </li>
                        <li>
                            <button type="button" id="size">XL</button>
                        </li>
                    </ul>
                </div>  -->

                <div class="tt-cart">
<%--                    <div class="number-product">--%>
<%--                        <button type="button" onclick="UpdateQuanlityCart('${base }',${ci.productId })" class="cong">+--%>
<%--                        </button>--%>

<%--                        <strong><span--%>
<%--                                id="quanlity_${ci.productId }">${ci.quanlity }</span></strong>--%>
<%--                        <button type="button" class="tru">-</button>--%>
<%--                    </div>--%>

                    <div class="add">
                        <button type="button" class="add-cart"
                                onclick="javascript:AddToCart('${base }', ${product.id}, 1);">THÊM
                            VÀO GIỎ HÀNG
                        </button>
                    </div>
                </div>
                <div class="tt-mota">
                    <h3>Mô tả</h3>
                    <p>${product.details}</p>
                </div>
            </div>
            <div class="sanpham">
                <img src="${base }/upload/${product.avatar}" width="100%">
            </div>
        </div>

        <div class="content-products">
            <div class="products-name">
                <a href="#"> SẢN PHẨM LIÊN QUAN </a>
            </div>
            <div class="list-product">

                <div class="item">

                    <div class="item-images">
                        <a href="#"> <img src="${base }/img/nuoc-cam-teppy.jpg" width="100%">
                        </a>
                    </div>
                    <div class="item-content">
                        <a href="#"> Nước Cam Teppy </a>
                        <div class="price">
                            <h4 class="new-price">22,000đ</h4>
                            <h5 class="old-price">25,000đ</h5>
                        </div>
                    </div>
                </div>

                <div class="item">

                    <div class="item-images">
                        <a href="#"> <img src="${base }/img/nuoc-cam-ep-splash.jpg"
                                          width="100%">
                        </a>
                    </div>
                    <div class="item-content">
                        <a href="#"> Nước Cam Ép Splash </a>
                        <div class="price">
                            <h4 class="new-price">12,000đ</h4>
                            <h5 class="old-price">15,000đ</h5>
                        </div>
                    </div>
                </div>

                <div class="item">

                    <div class="item-images">
                        <a href="#"> <img src="${base }/img/nuoc-lavie.jpg"
                                          width="100%">
                        </a>
                    </div>
                    <div class="item-content">
                        <a href="#"> Nước Suối Lavie </a>
                        <div class="price">
                            <h4 class="new-price">10,000đ</h4>
                            <h5 class="old-price">12,000đ</h5>
                        </div>
                    </div>
                </div>

                <div class="item">

                    <div class="item-images">
                        <a href="#"> <img src="${base }/img/nuoc-ngot-sprite-huong-chanh.jpg"
                                          width="100%">
                        </a>
                    </div>
                    <div class="item-content">
                        <a href="#"> Nước Ngọt Sprite Hương Chanh </a>
                        <div class="price">
                            <h4 class="new-price">11,000đ</h4>
                            <h5 class="old-price">14,000đ</h5>
                        </div>
                    </div>
                </div>

                <div class="item">

                    <div class="item-images">
                        <a href="#"> <img
                                src="${base }/img/nuoc-tinh-khiet-aquafina.jpg" width="100%">
                        </a>
                    </div>
                    <div class="item-content">
                        <a href="#"> Nước Tinh Khiết Aquafina </a>
                        <div class="price">
                            <h4 class="new-price">5,000đ</h4>
                            <h5 class="old-price">8,000đ</h5>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--close content-->

    <!--open footer -->
    <jsp:include page="/WEB-INF/views/khachhang/layouts/footer.jsp"></jsp:include>
    <!--close footer-->
    <div class="copyright">
        <i class="far fa-copyright"></i> <a href="#">LapTrinhWeb-2024</a>
    </div>
</main>
</body>

<jsp:include page="/WEB-INF/views/khachhang/layouts/js.jsp"></jsp:include>
</html>