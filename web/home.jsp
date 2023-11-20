<%-- 
    Document   : home
    Created on : May 29, 2023, 10:38:23 AM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <div  class="app">
            <%@include file="header.jsp" %>
            <!-- slide - menu list -->
            <section class="menu-slide">
                <div class="container">
                    <div class="row">
                        <nav class="menu__nav col-lg-3 col-md-12 col-sm-0">
                            <ul class="menu__list">
                                <c:forEach items="${category}" var="c">
                                    <li class="menu__item">
                                        <a href="category?cid=${c.cid}" class="menu__link">${c.cname}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </nav>

                        <div class="slider col-lg-9 col-md-12 col-sm-0">
                            <div class="row">

                                <div class="slide__left col-lg-8 col-md-0 col-sm-0">
                                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000">
                                        <ol class="carousel-indicators">
                                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                        </ol> 
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <img src="images1/banner/363488_final1511.jpg" class="d-block w-100" alt="...">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="images1/banner/Gold_DongA_600X350.jpg" class="d-block w-100" alt="...">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="images1/banner/megabook-glod600X350.png" class="d-block w-100" alt="...">
                                            </div>
                                        </div>
                                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                    <div class="slide__left-bottom">
                                        <div class="slide__left-botom-one">
                                            <img src="images1/banner/363107_05.jpg" class="slide__left-bottom-one-img">
                                        </div>
                                        <div class="slide__left-bottom-two">
                                            <img src="images1/banner/363104_06.jpg" class="slide__left-bottom-tow-img">
                                        </div>
                                    </div>
                                </div>

                                <div class="slide__right col-lg-4 col-md-0 col-sm-0">
                                    <img src="images1/banner/slider-right.png" class="slide__right-img" >
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- end slide menu list -->
            <!-- score-top-->

            <button onclick="topFunction()" id="myBtn-scroll" title="Go to top"><i class="fas fa-chevron-up"></i></i></button>
            <!-- bestselling product -->
            <section class="bestselling">
                <div class="container">
                    <div class="row">
                        <div class="bestselling__heading-wrap">
                            <img src="images/bestselling.png" 
                                 class="bestselling__heading-img">
                            <div class="bestselling__heading">Top giảm giá</div>
                        </div>
                    </div>

                    <section class="row">
                        <c:forEach items="${productbySale}" var="c" begin="0" end="5" step="1">                       
                            <div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
                                <div class="bestselling__product-img-box">
                                    <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}"><img src="${c.product_img}" alt="Biểu tượng thất truyền" class="bestselling__product-img " style="width: 70%; height: "></a>
                                </div>
                                <div class="bestselling__product-text">
                                    <h3 class="bestselling__product-title">
                                        <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}" class="bestselling__product-link">${c.product_name}</a>
                                    </h3>

                                    <span class="bestselling__product-price">
                                        <fmt:formatNumber value="${c.priceSale}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ
                                        </span>
                                    <span class="product__panel-price-old" style="font-size: 13px; font-style: italic">
                                        <fmt:formatNumber value="${c.price}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ

                                    </span>   
                                        <div class="product__panel-price-sale-off">
                                        <c:set var="a" value="${c.priceSale}"/>
                                        <c:set var="b" value="${c.price}"/>
                                        <c:set var="d" value="${(a/b)*100}"/>
                                        -<fmt:formatNumber value="${Math.ceil(100-d)}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>%

                                        </div>
                                        <div class="bestselling__product-btn-wrap">
                                            <button class="bestselling__product-btn">Xem hàng</button>
                                        </div>
                                    </div>
                                </div>
                        </c:forEach>
                    </section>

                    <div class="row bestselling__banner">

                        <div class="bestselling__banner-left col-lg-6">
                            <img src="images1/banner/920x420_phienchodocu.png" alt="Banner quảng cáo"
                                 class="bestselling__banner-left-img">
                        </div>
                        <div class="bestselling__banner-right col-lg-6">
                            <img src="images1/banner/muonkiepnhansinh_resize_920x420.jpg" alt="Banner quảng cáo"
                                 class="bestselling__banner-right-img">
                        </div>
                    </div>
                </div>
            </section>

            <!-- end bestselling product -->

            <!-- product -->
            <section class="product">
                <div class="container">
                    <div class="row">
                        
                        <article class="product__content col-lg-15 col-md-12 col-sm-12" ">
                            <nav class="row">
                                <ul class="product__list hide-on-mobile">
                                    <c:forEach items="${category}" var="c">
                                        <li class="product__item product__item--active">
                                            <a href="product?cid=${c.cid}" class="product__link" >${c.cname}</a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </nav>

                            
                            <div class="row product__panel">
                                <c:forEach items="${productbyall}" var="o">
                                    <div class="product__panel-item col-lg-2 col-md-4 col-sm-6">
                                        <div class="product__panel-item-wrap">
                                            <div class="product__panel-img-wrap">
                                                <a href="productdetail?id=${o.product_id}&cid=${o.ct.cid}"><img src="${o.product_img}" alt="" class="product__panel-img" style="width: 70%; margin-left: 20px"></a>
                                            </div>
                                            <h3 class="product__panel-heading">
                                                <a href="productdetail?id=${o.product_id}&cid=${o.ct.cid}" class="product__panel-link">${o.product_name}</a>
                                            </h3>
                                            <div class="product__panel-price">
                                                <span class="product__panel-price-old" style="font-size: 13px; font-style: italic">
                                                    <fmt:formatNumber value="${o.price}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ
                                                    </span>
                                                    <span class="product__panel-price-current" style="font-size: 17px">
                                                    <fmt:formatNumber value="${o.priceSale}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ
                                                    </span>
                                            </div>
                                            <div class="product__panel-price-sale-off">
                                                <c:set var="a" value="${o.priceSale}"/>
                                                <c:set var="b" value="${o.price}"/>
                                                <c:set var="c" value="${(a/b)*100}"/>
                                                -<fmt:formatNumber value="${Math.ceil(100-c)}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>%

                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </article>
                    </div>
                </div>
            </section>
            <!--end product 

            <!-- product love -->
            <section class="product__love">
                <div class="container">
                    <div class="row bg-white">
                        <div class="col-lg-12 col-md-12 col-sm-12 product__love-title">
                            <h2 class="product__love-heading" style="text-align: center; font-size: 24px">
                                <img src="images1/item/new.jpg" style="width: 40px">Sách mới cập nhật
                            </h2>
                        </div>
                    </div>
                    
                    <div class="row bg-white">
                        <c:forEach items="${productbyDate}" var="c" >
                        <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">
                            <div class="product__panel-img-wrap">
                                <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}"><img src="${c.product_img}" alt="" class="product__panel-img" style="width: 70%; margin-left: 20px"></a>
                            </div>
                            <h3 class="product__panel-heading">
                                <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}" class="product__panel-link">${c.product_name}</a>
                            </h3>


                            <div class="product__panel-price">
                                <span class="product__panel-price-current">
                                    <fmt:formatNumber value="${c.priceSale}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ
                                </span>
                                <span style="font-size: 10px;font-style: italic">
                                    ${c.created_at}
                                </span>
                                
                            </div>  
                        </div>
                        </c:forEach>     
                    </div>
                       
                </div>
            </section>
            <section class="product__love">
                <div class="container">
                    <div class="row bg-white">
                        <div class="col-lg-12 col-md-12 col-sm-12 product__love-title">
                            <h2 class="product__love-heading" style="text-align: center; font-size: 24px">
                                <img src="images1/item/hot-item-label_1495141.jpg" style="width: 40px"/>Sách Hot
                            </h2>
                            
                        </div>
                    </div>
                    
                    <div class="row bg-white">
                        <c:forEach items="${productbyHot}" var="c" >
                        <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">
                            <div class="product__panel-img-wrap">
                                <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}"><img src="${c.product_img}" alt="" class="product__panel-img" style="width: 70%; margin-left: 20px"></a>
                            </div>
                            <h3 class="product__panel-heading">
                                <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}" class="product__panel-link">${c.product_name}</a>
                            </h3>


                            <div class="product__panel-price">
                                <span class="product__panel-price-old product__panel-price-old-hide">
                                    <fmt:formatNumber value="${c.price}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ
                                </span>
                                <span class="product__panel-price-current">
                                    <fmt:formatNumber value="${c.priceSale}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ
                                </span>
                            </div>  
                        </div>
                        </c:forEach>     
                    </div>
                       
                </div>
            </section>
            <!--end product love -->
            <section class="product__love">
                <div class="container">
                    <div class="row bg-white">
                        <div class="col-lg-12 col-md-12 col-sm-12 product__love-title">
                            <h2 class="product__love-heading" style="text-align: center; font-size: 24px">
                                <img src="images/bestselling.png" style="width: 40px"/>Sách Bán chạy
                            </h2>
                            
                        </div>
                    </div>
                    
                    <div class="row bg-white">
                        <c:forEach items="${productbySell}" var="c" >
                        <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">
                            <div class="product__panel-img-wrap">
                                <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}"><img src="${c.product_img}" alt="" class="product__panel-img" style="width: 70%; margin-left: 20px"></a>
                            </div>
                            <h3 class="product__panel-heading">
                                <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}" class="product__panel-link">${c.product_name}</a>
                            </h3>


                            <div class="product__panel-price">
                                
                                <span class="product__panel-price-current">
                                    <fmt:formatNumber value="${c.priceSale}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ
                                </span>
                                <span style="font-size: 10px;font-style: italic;margin-right: 15px">
                                     Đã bán: ${c.price}                             
                                </span>
                            </div>  
                        </div>
                        </c:forEach>     
                    </div>
                       
                </div>
            </section>
            <!-- post -->
            <section class="posts">
                <div class="container">
                    <header class="row posts__title">
                        <div class="posts__title-wrap col-lg-12 col-md-12 col-sm-12">
                            <h2 class="posts__heading">
                                Tin tức - Bài viết
                            </h2>
                        </div>
                    </header>
                    <article class="row posts__list">
                        <c:forEach items="${listPost}" var="i" begin="5" end="8" step="1">
                            <div class="posts__item col-lg-3 col-md-6 col-sm-6">
                                <div class="posts__item-img" >
                                    <img src="${i.post_img}" width="80%">
                                </div>
                                <h3 class="posts__item-heading">
                                    <a href="postdt?postid=${i.post_id}" class="posts__item-title">
                                        ${i.post_name}
                                    </a>
                                </h3>
                                <div class="posts__item-date">
                                    ${i.post_date}
                                </div>
                                <div class="posts__item-cate-wrap">
                                    <div class="posts__item-cate-ad">
                                        <i class="fa fa-user posts__item-cate-ad-icon"></i>
                                        <div class="posts__item-cate-ad-name">
                                            ${i.post_author}
                                        </div>   
                                    </div>
                                </div>
                                <div class="posts__item-description">
                                    ${i.post_stext}
                                </div>
                            </div>
                        </c:forEach>
                    </article>
                    <article class="row posts__view">
                        <a href="post" class="posts__view-btn">Xem thêm</a>
                    </article>
                </div>
            </section>
            <!-- end post -->

        </div>
        <br>
        <%@include file="footer.jsp" %>    
    </body>
</html>
