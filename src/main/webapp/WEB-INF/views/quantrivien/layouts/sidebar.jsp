<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<!-- sidebar menu area start -->
<div class="sidebar-menu">
    <div class="sidebar-header">
        <div class="logo">
            <a href="${base }/admin" style="color: white; font-size: 35px;">Tune Vibe</a>
        </div>
    </div>
    <div class="main-menu">
        <div class="menu-inner">
            <nav>
                <ul class="metismenu" id="menu">

                    <li>
                        <a href="${base }/admin/user"> <span>
								Thông tin tài khoản </span>
                        </a>
                    </li>

                    <li>
                        <a href="javascript:void(0)" aria-expanded="true">
                            <span>Liên hệ / Đơn hàng</span>
                        </a>
                        <ul class="collapse">
                            <li>
                                <a href="${base }/admin/order">
                                    <span>Đơn hàng</span>
                                </a>
                            </li>

                            <li>
                                <a href="${base }/admin/order-product">
                                    <span>Chi tiết Đơn hàng</span>
                                </a>
                            </li>

                            <li>
                                <a href="${base }/admin/contact">
                                    <span>Liên hệ</span>
                                </a>
                            </li>

                            <li>
                                <a href="${base }/admin/subscribe">
                                    <span>Đăng ký thành viên</span>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="${base }/admin/product">
                            <span>Sản phẩm / Danh mục </span>
                        </a>
                    </li>

                    <li>
                        <a href="javascript:void(0)" aria-expanded="true">
                            <span>Quản lý</span>
                        </a>

                        <ul class="collapse">
                            <li>
                                 <a href="${base }/">
                                    <span>Trang chủ</span>
                                 </a>
                            </li>

                            <li>
                                <a href="#">
                                    <span>Thống kê doanh thu</span>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <span>Đối tác</span>
                                </a>
                            </li>

                        </ul>
                    </li>

                </ul>
            </nav>
        </div>
    </div>
</div>