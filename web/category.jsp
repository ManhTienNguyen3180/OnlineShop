<%-- 
    Document   : category
    Created on : May 29, 2023, 11:24:59 AM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Danh mục sản phẩm - EduBook</title>
        <script src="js/jquery-3.3.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Paytone+One&display=swap" rel="stylesheet">
<!--        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="css/category.css">-->
        <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    </head>
    <body>
        <%@include file="header.jsp" %>
        <!-- category 1: Sách trong nước-->
        <section id ='category1' class="product__love">
            <div class="container">
                <div class="row bg-white">
                    <div class="col-lg-12 col-md-12 col-sm-12 product__love-title">
                        <h2 class="product__love-heading upper">
                            Sách tìm thấy
                        </h2>
                    </div>
                </div>
                <div class="row bg-white">
                    <c:forEach items="${search}" var="c"> 
                        
                    
                    <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">
                        <div class="product__panel-img-wrap">
                            <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}"><img src="${c.product_img}" alt="" class="product__panel-img" style="width: 70%"></a>
                        </div>
                        <h3 class="product__panel-heading">
                            <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}"  class="product__panel-link">${c.product_name}</a>
                        </h3>
                        

                        <div class="product__panel-price">
                            <span class="product__panel-price-old product__panel-price-old-hide">
                                <fmt:formatNumber value="${c.price}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>
                            </span>
                            <span class="product__panel-price-current">
                                <fmt:formatNumber value="${c.priceSale}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>
                            </span>
                        </div>  
                    </div>
                    </c:forEach>        
     
                </div>
            </div>
        </section>

        <hr>
        <%@include file="footer.jsp" %>
        <button onclick="topFunction()" id="myBtn-scroll" title="Go to top"><i class="fas fa-chevron-up"></i></i></button>
    <!--  -->

    <script src="js/jq.js"></script>
    <script src="js/category.js"></script>
</body>
</html>
