<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cửa hàng tiện lợi Tune Vibe</title>

    <jsp:include page="/WEB-INF/views/khachhang/layouts/css.jsp"></jsp:include>
</head>
<body>
<main class="container">
    <div class="free">Miễn phí vận chuyển với đơn hàng trên 300k</div>

    <jsp:include page="/WEB-INF/views/khachhang/layouts/header.jsp"></jsp:include>

    <%--open content --%>
    <div class="content">
        <img src="${base }/img/bannertsun.png" width="100%">
        <!--open new item-->

        <div class="products">
            <div class="products-name">
                <a href="#"> SẢN PHẨM </a>
            </div>

            <div class="list-product" style="flex-wrap: wrap;">

                <c:forEach items="${productsWithPaging.data }" var="product">
                    <div class="item">

                        <div class="item-images">
                            <a href="${base }/product/details/${product.seo}"> <img
                                    src="${base }/upload/${product.avatar}"
                                    width="100%">
                            </a>
                        </div>
                        <div class="item-content">
                            <a href="${base }/product/details/${product.seo}">
                                    ${product.title } </a>
                            <div class="price">
                                <fmt:setLocale value="vi_VN"/>
                                <fmt:formatNumber value="${product.price}" type="currency"/>

                            </div>

                        </div>
                    </div>

                    <!-- Paging -->

                </c:forEach>
            </div>

            <!--open product-->

            <div class="logo-item">
                <div class="logo-item-list">
                    <a href="${base }/collection"> <img
                            src="${base }/img/fresh.png" width="100%">
                    </a>
                    <h3 class="logo-name">Đồ tươi sống</h3>
                    <div class="add">
                        <a href="${base }/collection">MUA NGAY</a>
                    </div>
                </div>
                <div class="logo-item-list">
                    <a href="${base }/collection"> <img
                            src="${base }/img/collection.png" width="100%">
                    </a>
                    <h3 class="logo-name-collection">Tất cả sản phẩm</h3>
                    <div class="add-collection">
                        <a href="${base }/collection">XEM THÊM</a>
                    </div>
                </div>
                <div class="logo-item-list">
                    <a href="${base }/collection"> <img
                            src="${base }/img/drink.png" width="100%">
                    </a>
                    <h3 class="logo-name">Đồ uống</h3>
                    <div class="add">
                        <a href="${base }/collection">MUA NGAY</a>
                    </div>
                </div>
            </div>
        </div>
        <!--close products-->

        <!--open about us -->
        <div class="about">
            <div class="about-us">
                <a href="${base }/introduction"> <img
                        src="${base }/img/aboutus.png" width="80%">
                </a>
                <h3 class="about-title">ABOUT US</h3>
                <div class="about-button">
                    <a href="${base }/introduction"> XEM NGAY </a>
                </div>
            </div>
            <div class="about-us">

                <p>Tune Vibe là cửa hàng tiện lợi hiện đại, mang đến trải nghiệm mua sắm nhanh chóng với
                đa dạng các sản phẩm thiết yếu hàng ngày.</p>

                <p>Tại Tune Vibe, chúng tôi cung cấp mọi thứ bạn cần, từ đồ ăn nhẹ, thức uống, sản phẩm chăm sóc cá nhân
                 đến các mặt hàng gia dụng, đảm bảo chất lượng và giá cả hợp lý.</p>


                <p>Hãy để Tune Vibe trở thành lựa chọn tin cậy cho mọi nhu cầu hàng ngày của bạn!</p>

                <p>Instagram: TuneVibe.VN</p>

                <p>Facebook: TuneVibe.VN</p>
            </div>
        </div>
        <!--close about us-->

    </div>
    <!--close content-->

    <%--close content --%>
    <jsp:include page="/WEB-INF/views/khachhang/layouts/footer.jsp"></jsp:include>
    <div class="copyright">
        Copyright <i class="far fa-copyright"></i> <a href="#">msic.</a> <a
            href="#">Powered by Haravan</a>
    </div>
</main>

</body>
<jsp:include page="/WEB-INF/views/khachhang/layouts/js.jsp"></jsp:include>
</html>