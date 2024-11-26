<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <!-- Meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta content="Codescandy" name="author" />
    <title>${pageTitle}</title>
    
    <!-- CSS and JS Links -->
    <link rel="stylesheet" href="./assets/css/theme.min.css" />
    <link rel="stylesheet" href="./assets/libs/bootstrap-icons/font/bootstrap-icons.min.css" />
    <script src="./assets/js/theme.min.js" defer></script>
</head>
<body>
    <!-- Navbar -->
    <div class="border-bottom">
        <div class="py-5">
            <div class="container">
                <div class="row w-100 align-items-center gx-lg-2 gx-0">
                    <!-- Logo -->
                    <div class="col-xxl-2 col-lg-3 col-md-6 col-5">
                        <a class="navbar-brand" href="./index.jsp">
                            <img src="./assets/images/logo/convenience-store-svgrepo-com.svg" alt="Logo" />
                        </a>
                    </div>
                    
                    <!-- Search Form -->
                    <div class="col-xxl-5 col-lg-5 d-none d-lg-block">
                        <form action="#">
                            <div class="input-group">
                                <input class="form-control rounded" type="search" placeholder="Tìm kiếm sản phẩm" />
                                <button class="btn bg-white border ms-n10 rounded-0 rounded-end" type="button">
                                    <i class="bi bi-search"></i>
                                </button>
                            </div>
                        </form>
                    </div>

                    <!-- Location and User Options -->
                    <div class="col-md-2 col-xxl-3 d-none d-lg-block text-end">
                        <button id="btnStore" class="btn btn-outline-gray-400 text-muted" data-bs-toggle="modal" data-bs-target="#locationModal">
                            <i class="bi bi-geo-alt me-2"></i> Chọn cửa hàng gần bạn
                        </button>
                        <a href="#!" class="text-muted ms-3" onclick="isSignin()">
                            <i class="bi bi-person"></i>
                        </a>
                        <a href="#!" class="text-muted ms-3" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight">
                            <i class="bi bi-bag"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Navbar -->
