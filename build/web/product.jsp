<%-- 
    Document   : product
    Created on : May 29, 2023, 10:48:24 AM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sản phẩm</title>
        <script src="js/bootstrap.min.js"></script>
<!--        <link rel="stylesheet" href="css/bootstrap.min.css">-->
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/product.css">
        <style>
            .star-rating {
                font-size: 0;
                white-space: nowrap;
                display: inline-block;
                width: 250px;
                height: 50px;
                overflow: hidden;
                position: relative;
                background: url('data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjREREREREIiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=');
                background-size: contain;
            }
            .star-rating i {
                opacity: 0;
                position: absolute;
                left: 0;
                top: 0;
                height: 100%;
                width: 20%;
                z-index: 1;
                background: url('data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjRkZERjg4IiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=');
                background-size: contain;
            }
            .star-rating input {
                -moz-appearance: none;
                -webkit-appearance: none;
                opacity: 0;
                display: inline-block;
                width: 20%;
                height: 100%;
                margin: 0;
                padding: 0;
                z-index: 2;
                position: relative;
            }
            .star-rating input:hover + i,
            .star-rating input:checked + i {
                opacity: 1;
            }
            .star-rating i ~ i {
                width: 40%;
            }
            .star-rating i ~ i ~ i {
                width: 60%;
            }
            .star-rating i ~ i ~ i ~ i {
                width: 80%;
            }
            .star-rating i ~ i ~ i ~ i ~ i {
                width: 100%;
            }
            

        </style>
        
    </head>
    <body>
        <%@include file="header.jsp" %>
        <button onclick="topFunction()" id="myBtn-scroll" title="Go to top"><i class="fas fa-chevron-up"></i></button>
        <div  style="display: none">
            <input id="product_id" value="${product.product_id}">
        </div>
        <section class="product">
            <div class="container">
                <div class="row bg-white pt-4 pb-4 border-bt pc">
                    <nav class="menu__nav col-lg-3 col-md-12 col-sm-0">
                        <ul class="menu__list">
                            <li class="menu__item menu__item--active">
                                <a href="#" class="menu__link">
                                    <img src="images1/item/baby-boy.png" alt=""  class="menu__item-icon" id="Capa_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512">
                                    Sách Tiếng Việt</a>
                            </li>
                            <li class="menu__item">
                                <a href="#" class="menu__link">
                                    <img src="images1/item/translation.png" alt="" class="menu__item-icon" id="Capa_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512">
                                    Sách nước ngoài</a>
                            </li>

                            <li class="menu__item">
                                <a href="#" class="menu__link">
                                    <img src="images1/item/1380754_batman_comic_hero_superhero_icon.png" alt="" class="menu__item-icon"  viewBox="0 0 512 512" width="1012" height="512">

                                    Manga - Comic</a>
                            </li>

                        </ul>
                    </nav>

                    <article class="product__main col-lg-9 col-md-12 col-sm-12">
                        <div class="row">
                            <div class="product__main-img col-lg-4 col-md-4 col-sm-12">
                                <div class="product__main-img-primary">
                                    <img src="${product.product_img}">
                                </div>


                            </div>

                            <div class="product__main-info col-lg-8 col-md-8 col-sm-12">
                                <div class="product__main-info-breadcrumb">
                                    Trang chủ / Sản phẩm
                                </div>

                                <a href="#" class="product__main-info-title">
                                    <h2 class="product__main-info-heading">
                                        ${product.product_name}
                                    </h2>
                                </a>
                                <div style="font-size: 30px;font-style: italic;color: #f24137">
                                    <span>Tác giả: ${product.product_author}</span>
                                </div>
                                <c:if test="${product.quantity > 0}">   
                                    <div style="font-size: 20px">
                                        <span>Số lượng còn: ${product.quantity}</span>
                                    </div>
                                </c:if>
                                <c:if test="${product.quantity == 0}">   
                                    <div style="font-size: 20px">
                                        <span>Số lượng: hết hàng</span>
                                    </div>
                                </c:if>     
                                <div class="product__main-info-price" style="margin: 20px 0;">
                                    <span class="product__main-info-price-current">
                                        <fmt:formatNumber value="${product.priceSale}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber> VNĐ
                                        </span>

                                    </div>


                                    <form name="f" action="buy" method="post">           
                                        <div class="product__main-info-cart">
                                            <div class="product__main-info-cart-quantity">

                                                <input type="number" name="num" value="1" class="product__main-info-cart-quantity-total">

                                            </div>

                                            <div class="product__main-info-cart-btn-wrap">
                                                <button class="product__main-info-cart-btn" type="button" onclick='buy(${product.product_id})'>
                                                Thêm vào giỏ hàng
                                            </button>
                                        </div>
                                    </div>
                                </form>     
                                <div class="product__aside-top-item">
                                    <img src="images/shipper.png">
                                    <div class="product__aside-top-item-text">
                                        <p>
                                            Giao hàng nhanh chóng
                                        </p>
                                        <span>
                                            Chỉ trong vòng 24h
                                        </span>
                                    </div>
                                </div>
                                <div class="product__aside-top-item">
                                    <img src="images/brand.png">
                                    <div class="product__aside-top-item-text">
                                        <p>
                                            Sản phẩm chính hãng
                                        </p>
                                        <span>
                                            Sản phẩm nhập khẩu 100%
                                        </span>
                                    </div>
                                </div>
                                <div class="product__aside-top-item">
                                    <img src="images/less.png">
                                    <div class="product__aside-top-item-text">
                                        <p>
                                            Mua hàng tiết kiệm
                                        </p>
                                        <span>
                                            Rẻ hơn từ 10% đến 30%
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row bg-white">
                            <div class="col-12 product__main-tab" >
                                <a href="#" class="product__main-tab-link product__main-tab-link--active" >
                                    Mô tả
                                </a>

                            </div>

                            <div class="col-12 product__main-content-wrap">
                                <h2 class="product__main-content-heading">
                                    ${product.product_name}
                                </h2>

                                <p>
                                    ${product.product_description}
                                </p>


                                <p>Trân trọng giới thiệu cùng bạn đọc.</p>

                                <h2 class="thongtin">    <span>Thông tin chi tiết</span> 
                                </h2>
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tbody>
                                            <tr>
                                                <th>Công ty phát hành</th>
                                                <td>${product.product_nxb}</td>
                                            </tr>
                                            <tr><th>Kích thước</th><td>${product.product_kichthuoc}</td></tr>
                                            <tr><th>Loại bìa</th><td>${product.product_loaibia}</td></tr>
                                            <tr><th>Số trang</th><td>${product.product_sotrang}</td></tr>                              
                                        </tbody>
                                    </table>
                                </div>


                            </div>

                        </div>
                    </article>

                    <aside class="product__aside col-lg-3 col-md-0 col-sm-0">


                        <div class="product__aside-bottom">
                            <h3 class="product__aside-heading">
                                Có thể bạn thích
                            </h3>
                            <c:forEach items="${productNew}" var="c" begin="4" end="8" step="1">


                                <div class="product__aside-list">
                                    <div class="product__aside-item product__aside-item--border">
                                        <div class="product__aside-img-wrap">
                                            <img src="${c.product_img}" class="product__aside-img">
                                        </div>
                                        <div class="product__aside-title">
                                            <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}" class="product__aside-link">
                                                <h4 class="product__aside-link-heading"> ${c.product_name}</h4>
                                            </a>
                                            <div class="product__aside-price">
                                                <span class="product__aside-price-current">
                                                    <fmt:formatNumber value="${c.priceSale}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ 
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </c:forEach>
                        </div>
                    </aside>

                </div>
                <c:if test="${sessionScope.account==null}">
                    <span style="font-size: 10px">Đăng nhập để bình luận về sản phẩm</span><a href="login.jsp" style="font-size: 15px">Login</a>                           
                </c:if>                        
                <div class="product-comment row pb-4 pb-4  py-4 pb-4 py-4 py-4">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <h3 style="color: #f24137;margin-bottom: 10px">Bình luận sản phẩm</h3>
                        <c:if test="${productReview[0] == null}">
                            <span style="font-size: 12px;font-style: italic">Sản phẩm chưa có bình luận</span>
                        </c:if>
                        <c:if test="${productReview != null}">    

                            <c:forEach items="${productReview}" var="c">  
                                <div class="comment-item comment2">
                                    <ul class = item-reviewer>
                                        <div class="comment-item-user">
                                            <img src="${c.user.user_img}" class="comment-item-user-img">
                                            <li><b>${c.user.user_name}</b></li> 
                                        </div>

                                        <br>
                                        <li style="margin-bottom: 10px;font-style: italic">${c.review_date}</li>
                                        <li>
                                            <h3>${c.review_comment}</h3>
                                        </li>
                                    </ul>
                                </div>
                            </c:forEach>
                        </c:if>       

                    </div>
                </div>
                <c:if test="${sessionScope.account!=null}">                       
                    <div class="customer-reviews row pb-4 pb-4  py-4 pb-4 py-4 py-4">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <form id ="formgroupcomment" >
                                <div class="form-group">
                                    <img src="${sessionScope.account.user_img}" class="comment-item-user-img">
                                    <label>${sessionScope.account.user_name}</label>
                                </div>

                                <div class="form-group">
                                    <label>Nội dung:</label>
                                    <textarea name="comment" required="" rows="6" id ='formcontent' class="form-control"></textarea>     
                                </div>
<!--                                <div style="margin-bottom: 20px;">
                                    <span style="font-size: 20px; position: relative;bottom: 15px   ">Đánh giá hàng: </span><span class="star-rating">
                                        <input type="radio" name="rating" value="1"><i></i>
                                        <input type="radio" name="rating" value="2"><i></i>
                                        <input type="radio" name="rating" value="3"><i></i>
                                        <input type="radio" name="rating" value="4"><i></i>
                                        <input type="radio" name="rating" value="5"><i></i>
                                    </span>
                                    
                                </div>-->

                                <button type="submit" id= "submitcomment" class="btn btn-primary" >Gửi</button>
                            </form> 
                        </div>
                    </div>
                </c:if>             


                <section class="product__love col-12 mt-4">
                    <div class="row bg-white">
                        <div class="col-lg-12 col-md-12 col-sm-12 product__love-title">
                            <h2 class="product__love-heading">
                                Sản phẩm tương tự
                            </h2>
                        </div>
                    </div>

                    <div class="row bg-white" >
                        <c:forEach items="${productrl}" var="c">
                            <div class="product__panel-item col-lg-2 col-md-8 col-sm-6">
                                <div class="product__panel-img-wrap">
                                    <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}"><img src="${c.product_img}" alt="" class="product__panel-img" style="width: 100px"></a>
                                </div>
                                <h3 class="product__panel-heading">
                                    <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}" class="product__panel-link">${c.product_name}</a>
                                </h3>                              
                                <div class="product__panel-price">
                                    <span class="product__panel-price-current" style="text-decoration: line-through; color: black; font-size: 13px; font-style: italic">
                                        <fmt:formatNumber value="${c.price}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ 
                                        </span>
                                        <span class="product__panel-price-current" style="font-size: 20px">
                                        <fmt:formatNumber value="${c.priceSale}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ 
                                        </span>
                                    </div>  
                                </div>
                        </c:forEach>   
                    </div>

                </section>
            </div>
        </section>
        <!--product -->
        <hr>
        <%@include file="footer.jsp" %>
        <!--        <script src="js/jq.js"></script>
                <script src="js/product.js"></script>-->
        <script src="js/jquery-3.3.1.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#formgroupcomment").submit(function (event) {
                    event.preventDefault();
                    var comment = $("#formcontent").val();
                    var product_id = $("#product_id").val();
                    $.post("comment", {comment: comment, product_id: product_id}, function (response) {
                        document.getElementById("comment2").innerHTML = response;
                    });
                    window.location.reload();
                });

            });

        </script>
        <script type="text/javascript">
            function buy(id) {
                var m = document.f.num.value;
                document.f.action = "buy?id=" + id + "&num=" + m;
                document.f.submit();
            }
        </script>
        
    </body>
</html>
