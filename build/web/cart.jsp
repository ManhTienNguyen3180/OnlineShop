<%-- 
    Document   : cart
    Created on : May 29, 2023, 10:41:42 AM
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
        <title>Giỏ hàng</title>
        <script src="js/jquery-3.3.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/cart.css">
    </head>
    <body>
        <%@include file="header.jsp" %>
        <button onclick="topFunction()" id="myBtn-scroll" title="Go to top"><i class="fas fa-chevron-down"></i></button>
        <!-- cart -->
        <section class="cart">
            <div class="container">
                <c:set var="o" value="${requestScope.cart}"/>
                <c:if test="${cart.items[0] ==null}">
                    <div style="text-align: center;margin-top: 50px">
                        <img src="images1/item/my-Order.jpg" alt="alt" style="margin: 0 auto"/>
                        <p style="font-size: 20px">Không có sản phẩm nào trong giỏ</p>
                        <a href="home"><button class="cart__foot-update-btn" style="margin-top: 20px">Quay lại cửa hàng</button></a>
                        
                    </div>
                    
                </c:if>
                <c:if test="${cart.items[0] !=null}">
                    <article class="row cart__head pc">

                        <div class="col-6 cart__head-name">
                            Thông tin sản phẩm
                        </div>
                        <div class="col-3 cart__head-quantity">
                            Số lượng
                        </div>
                        <div class="col-3 cart__head-price">
                            Đơn giá
                        </div>
                    </article>


                    <c:forEach items="${cart.items}" var="c">
                        <article class="row cart__body">
                            <div class="col-6 cart__body-name">
                                <div class="cart__body-name-img">
                                    <img src="${c.getProduct().product_img}" style="width: 89px; height: 136px">
                                </div>
                                <a href="" class="cart__body-name-title" style="margin-left: 10px">
                                    ${c.getProduct().product_name}
                                </a>
                            </div>
                            <div class="col-3 cart__body-quantity">
                                <button style="border: 0px;padding: 0 5px;font-size: 10px;background-color: white"><a href="process?num=-1&id=${c.getProduct().product_id}" style="font-size: 20px;color: black">-</a></button>
                                <span style="font-size: 15px;border: solid 1px; padding: 2px 5px">${c.quantity}</span>
                                <button style="border: 0px;padding: 0 5px;font-size: 10px;background-color: white"><a href="process?num=1&id=${c.getProduct().product_id}" style="font-size: 15px;color: black">+</a></button>
                            </div>
                            <div class="col-3 cart__body-price">
                                <span><fmt:formatNumber value="${c.getProduct().priceSale}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ</span>
                                    <form action="process" method="post">
                                        <input type="hidden" name="id" value="${c.getProduct().product_id}">
                                    <button type="submit" class="cart__foot-update-btn" style="margin-top: 10px">Xóa</button>                  
                                </form>    
                            </div>
                        </article>
                    </c:forEach>    
                    <article class="row cart__foot">
                        <div class="col-6 col-lg-6 col-sm-6 cart__foot-update">
                            <a href="home"><button class="cart__foot-update-btn">Quay lại cửa hàng</button></a>
                        </div>

                        <p class="col-3 col-lg-3 col-sm-3 cart__foot-total">
                            Tổng cộng: <fmt:formatNumber value="${o.getTotalMoney()}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ
                            </p>
                            <span class="col-3 col-lg-3 col-sm-3 cart__foot-price">
                                <br>
                                <!--                                <form action="checkout2.jsp">-->
                                <a href="checkout2.jsp" class="cart__foot-price-btn" style="padding: 10px 30px">Mua hàng</a>
                                <!--                                </form>-->
                            </span>
                        </article>

                    </div>
                </section>
            <%@include file="footer.jsp" %>            
        </c:if>

        <!--end cart -->


    </body>
</html>
