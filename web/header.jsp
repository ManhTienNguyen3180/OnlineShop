<%-- 
    Document   : header
    Created on : May 29, 2023, 10:30:57 AM
    Author     : Nguyen Manh Tien
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Trang chủ - EduBook</title>
        <script src="js/jquery-3.3.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Paytone+One&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/home.css">
    </head>
    <body>
        <div class="app">
            <header id="header">
                <!-- header top -->
                <div class="header__top">
                    <div class="container">
                        <section class="row flex">
                            <div class="col-lg-5 col-md-0 col-sm-0 heade__top-left">
                                <span>EduBook - Cội nguồn của tri thức</span>
                            </div>

                            <nav class="col-lg-7 col-md-0 col-sm-0 header__top-right">
                                <ul class="header__top-list">
                                    <c:if test="${sessionScope.account == null}">
                                        <li class="header__top-item">
                                            <a href="signup.jsp" class="header__top-link">Đăng ký</a>
                                        </li>
                                        <li class="header__top-item">
                                            <a href="login.jsp" class="header__top-link">Đăng nhập</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${sessionScope.account != null}">
                                        <li class="header__top-item">
                                            <a href="profile.jsp" class="header__top-link">Hello ${sessionScope.account.user_name}</a>
                                        </li>
                                        <li class="header__top-item">
                                            <a href="logout" class="header__top-link">Logout</a>
                                        </li>
                                    </c:if>    
                                </ul>
                            </nav>
                        </section>
                    </div>
                </div>
                <!--end header top -->

                <!-- header bottom -->
                <div class="header__bottom">
                    <div class="container">
                        <section class="row">
                            <div class="col-lg-3 col-md-4 col-sm-12 header__logo">
                                <h1 class="header__heading">
                                    <a href="#" class="header__logo-link" >
                                        <img src="images1/logo1.png" alt="Logo" class="header__logo-img">
                                    </a>
                                </h1>
                            </div>

                            <div class="col-lg-6 col-md-7 col-sm-0 header__search">
                                
                                <form action="search" class="header__search-input" style="padding: 0; margin-left: 30px">
                                    <input value="${textp}" name="text" type="text" class="header__search-input" placeholder="Tìm kiếm tại đây...">
                                    <button type="submit" class="header__search-btn">
                                        <div class="header__search-icon-wrap">
                                            <i class="fas fa-search header__search-icon"></i>
                                        </div>
                                    </button>

                                </form>
                            </div>

                            <div class="col-lg-2 col-md-0 col-sm-0 header__call">
                                <div class="header__call-icon-wrap">
                                    <i class="fas fa-phone-alt header__call-icon"></i>  
                                </div>
                                <div class="header__call-info">
                                    <div class="header__call-text">
                                        Gọi điện tư vấn
                                    </div>
                                    <div class="header__call-number">
                                        032.686.8890
                                    </div>
                                </div>
                            </div>
                              
                            <a href="show" class="col-lg-1 col-md-1 col-sm-0 header__cart">
                                <div class="header__cart-icon-wrap">
                                    <span class="header__notice">${requestScope.size}</span>     
                                    <i class="fas fa-shopping-cart header__nav-cart-icon"></i>
                                </div>
                            </a>
                        </section>
                    </div>   
                </div>
                <!--end header bottom -->

                <!-- header nav -->
                <div class="header__nav">
                    <div class="container">
                        <section class="row">
                            <div class="header__nav-menu-wrap col-lg-3 col-md-0 col-sm-0">
                                <i class="fas fa-bars header__nav-menu-icon"></i>
                                <div class="header__nav-menu-title">Danh mục sản phẩm</div>
                            </div>

                            <div class="header__nav col-lg-9 col-md-0 col-sm-0">
                                <ul class="header__nav-list">
                                    <li class="header__nav-item">
                                        <a href="home" class="header__nav-link">Trang chủ</a>
                                    </li>
                                    <li class="header__nav-item">
                                        <a href="category" class="header__nav-link">Danh mục sản phẩm</a>
                                    </li>
                                    <li class="header__nav-item">
                                        <a href="history" class="header__nav-link">Lịch sử mua hàng</a>
                                    </li>
                                    <li class="header__nav-item">
                                        <a href="post" class="header__nav-link">Bài viết</a>
                                    </li>

                                    <li class="header__nav-item">
                                        <a href="contact.jsp" class="header__nav-link">Liên hệ</a>
                                    </li>
                                </ul>
                            </div>
                        </section>
                    </div>
                </div>
            </header>
        </div>
        <!--        <script src="js/jq.js"></script>
                <script src="js/index.js"></script>-->
    </body>
</html>
