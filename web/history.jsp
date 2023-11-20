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
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="css/category.css">
        <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
        <link href="css/app.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <%@include file="header.jsp" %>

        <!-- category 1: Sách trong nước-->
        <section id ='category1' class="product__love">
            <div class="container">
                <div class="row bg-white">
                    <div class="col-lg-12 col-md-12 col-sm-12 product__love-title">
                        <h2 class="product__love-heading upper">
                            Lịch sử mua hàng
                        </h2>
                    </div>
                </div>
                <div class="row bg-white">
                    <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">


                    </div>

                    <table class="table table-striped" id="example" style="font-size: 50px">
                        <thead>
                            <tr style="text-align: center">
                                <th >ID</th>
                                <th style="width: 20%;">Ngày đặt hàng</th>
                                <th style="width: 22%;">Hình thức giao dịch</th>
                                <th style="width: 22%;">Địa chỉ</th>
                                <th style="width: 22%;">Tổng tiền</th>
                                <th style="width: 10%;">Action</th>
                            </tr>
                        </thead>
                        <tbody >
                            <c:forEach items="${requestScope.listOrder}" var="c">
                                <tr style="text-align: center">
                                    <td>${c.order_id}</td>
                                    <td>${c.created_at}</td>
                                    <td>${c.payment}</td>
                                    <td>${c.address}</td>
                                    <td><fmt:formatNumber value="${c.total_money}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ </td>
                                    
                                    <c:if test="${c.payment == 'Chưa thanh toán(VNPAY)'}">
                                    <td>     
                                        <a href="checkout2?oid=${c.order_id}" style="font-size: 12px">Thanh toán ngay</a> 
                                        <a href="" style="font-size: 12px">Xem chi tiết</a>
                                    </td>
                                    </c:if>
                                    <c:if test="${c.payment != 'Chưa thanh toán(VNPAY)'}">
                                    <td>     
                                        <a href="#" style="font-size: 12px">Xem chi tiết</a>
                                    </td>
                                    </c:if>
                                </tr>                                                                            
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>


        <hr>
        <!-- footer -->
        <footer>
            <section class="footer__top">
                <div class="container">
                    <div class="row">
                        <article class="footer__top-intro col-lg-5 col-md-4 col-sm-6">
                            <h4 class="footer__top-intro-heading">
                                Về chúng tôi
                            </h4>
                            <div class="footer__top-intro-content">
                                Edubook là cửa hàng luôn cung cấp cho các bạn tìm tòi tri thức, đam mê 
                                đọc sách trên khắp cả nước.Chúng tôi sẽ liên tục cập 
                                nhật những cuốn sách hay nhất, mới nhất, chất lượng nhất 
                                giúp người đọc có những cuốn sách hay nhất để đọc! <br> <br>
                                Điện thoại: 0352 860 701 <br>
                                Email: teamed2@gmail.com <br>
                                Zalo:  039.882.3232 <br>
                            </div>
                        </article>

                        <article class="footer__top-policy col-lg-3 col-md-4 col-sm-6">
                            <h4 class="footer__top-policy-heading">
                                Chính sách mua hàng
                            </h4>

                            <ul class="footer__top-policy-list">
                                <li class="footer__top-policy-item">
                                    <a href="#" class="footer__top-policy-link">Hình thức đặt hàng</a>
                                </li>
                                <li class="footer__top-policy-item">
                                    <a href="#" class="footer__top-policy-link">Hình thức thanh toán</a>
                                </li>
                                <li class="footer__top-policy-item">
                                    <a href="#" class="footer__top-policy-link">Phương thức vận chuyển</a>
                                </li>
                                <li class="footer__top-policy-item">
                                    <a href="#" class="footer__top-policy-link">Chính sách đổi trả</a>
                                </li>
                                <li class="footer__top-policy-item">
                                    <a href="#" class="footer__top-policy-link">Hướng dẫn sử dụng</a>
                                </li>
                            </ul>
                        </article>

                        <article class="footer__top-contact-wrap col-lg-4 col-md-4 col-sm-6">
                            <h4 class="footer__top-contact-heading">
                                Hotline liên hệ
                            </h4>

                            <div class="footer__top-contact">
                                <div class="footer__top-contact-icon">
                                    <img src="images/phone_top.png" class="footer__top-contact-img">
                                </div>

                                <div class="footer__top-contact-phone-wrap">
                                    <div class="footer__top-contact-phone">
                                        039.882.3232
                                    </div>
                                    <div class="footer__top-contact-des">
                                        (Giải đáp thắc mắc 24/24)
                                    </div>
                                </div>
                            </div>

                            <h4 class="footer__top-contact-heading">
                                Kết nối với chúng tôi
                            </h4>

                            <div class="footer__top-contact-social">
                                <a href="#" class="footer__top-contact-social-link">
                                    <img src="images/facebook.png">
                                </a>
                                <a href="#" class="footer__top-contact-social-link">
                                    <img src="images/youtube.png">
                                </a>
                                <a href="#" class="footer__top-contact-social-link">
                                    <img src="images/tiktok.png">
                                </a>
                                <a href="#" class="footer__top-contact-social-link">
                                    <img src="images/zalo.png">
                                </a>
                            </div>
                        </article>
                    </div>
                </div>
            </section>
            <section class="footer__bottom">
                <div class="container">
                    <div class="row">
                        <span class="footer__bottom-content">@Bản quyền thuộc về edubook | Thiết kế bởi team ED2 </span>
                    </div>
                </div>
            </section>
        </footer>

        <!-- end footer -->
        <!-- scroll to top -->
        <!-- score-top-->

        <button onclick="topFunction()" id="myBtn-scroll" title="Go to top"><i class="fas fa-chevron-up"></i></i></button>
    <!--  -->

    <script src="js/jq.js"></script>
    <script src="js/category.js"></script>
</body>
</html>