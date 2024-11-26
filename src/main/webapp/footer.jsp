<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<footer class="footer mt-5">
    <div class="container">
        <div class="row g-4 py-4">
            <!-- Product Categories -->
            <div class="col-12 col-md-6 col-lg-4">
                <h6 class="mb-4">Danh sách các sản phẩm</h6>
                <ul class="nav flex-column">
                    <li class="nav-item mb-2"><a href="#!" class="nav-link">Thực phẩm các loại</a></li>
                    <li class="nav-item mb-2"><a href="#!" class="nav-link">Đồ uống</a></li>
                    <li class="nav-item mb-2"><a href="#!" class="nav-link">Đồ ăn nhẹ và đồ ngọt</a></li>
                    <li class="nav-item mb-2"><a href="#!" class="nav-link">Sản phẩm cá nhân và gia đình</a></li>
                    <li class="nav-item mb-2"><a href="#!" class="nav-link">Văn phòng phẩm và đồ dùng học tập</a></li>
                </ul>
            </div>
        </div>
        <div class="border-top py-4">
            <div class="row align-items-center">
                <!-- Footer Left -->
                <div class="col-md-6">
                    <span class="small text-muted">
                        © ${currentYear} DACNTT
                    </span>
                </div>

                <!-- Footer Right -->
                <div class="col-md-6 text-md-end">
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item text-muted">Theo dõi chúng tôi tại</li>
                        <li class="list-inline-item"><a href="#!" class="btn btn-xs btn-social btn-icon">
                            <i class="bi bi-facebook"></i>
                        </a></li>
                        <li class="list-inline-item"><a href="#!" class="btn btn-xs btn-social btn-icon">
                            <i class="bi bi-twitter"></i>
                        </a></li>
                        <li class="list-inline-item"><a href="#!" class="btn btn-xs btn-social btn-icon">
                            <i class="bi bi-instagram"></i>
                        </a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
