<%-- 
    Document   : contact
    Created on : May 29, 2023, 10:45:33 AM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Liên hệ</title>
        <script src="js/jquery-3.3.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/contact.css">
    </head>
    <body>
        <%@include file="header.jsp" %>
        <button onclick="topFunction()" id="myBtn-scroll" title="Go to top"><i class="fas fa-chevron-down"></i></button>
        
        <!-- contact -->
        <section class="contact">
            <div class="container">
                <div class="row mt-4 mb-50 pc">
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

<!--                    <div class="col-12 contact__map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.483774311729!2d105.52428861044295!3d21.01332048055137!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345b465a4e65fb%3A0xaae6040cfabe8fe!2sFPT%20University!5e0!3m2!1sen!2s!4v1688440732834!5m2!1sen!2s" width="1100" height="200" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>-->
                    <div class="col-12 contact__map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.4695953898377!2d105.52067890763284!3d21.01388830621907!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345bbf92a47af7%3A0x4edce7f012bf8c9e!2sBeta%20FPT%20Building!5e0!3m2!1sen!2s!4v1688441090073!5m2!1sen!2s" width="1100" height="200" style="border:0;" frameborder="0" allowfullscreen=""  loading="lazy" aria-hidden="false" tabindex="0" ></iframe>
                    </div>
                </div>

                <div class="row mt-4 mb-4">
                    <div class="col-lg-6 col-md-6 col-sm-12 contact__self">
                        <h3 class="mb-4">
                            Liên hệ với chúng tôi
                        </h3>
                        <p>
                            Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu sử dụng sách của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.
                        </p>
                        <h3 class="mt-4 mb-4">
                            Thông tin liên hệ
                        </h3>

                        <ul class="contact__self-list">
                            <li class="contact__self-item">
                                <a class="contact__self-link" href="#">EduBook.com</a>
                            </li>
                            <li class="contact__self-item">
                                <a class="contact__self-link" href="#">SĐT: 032.6868.890</a>
                            </li>
                            <li class="contact__self-item">
                                <a class="contact__self-link" href="#">Email: EduBook2001@gmail.com</a>
                            </li>
                            
                        </ul>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 contact__regist">
                        <h3 class="mb-4">
                            Đăng ký tư vấn miễn phí
                        </h3>

                        <p>Quý khách vui lòng để lại thông tin để nhân viên tư vấn điện lại cho bạn sớm nhất!</p>

                        <form>
                            <input type="text" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Họ tên của bạn...">

                            <input type="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email của bạn...">

                            <input type="number" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Số điện thoại...">

                            <textarea name="" id="" cols="200" rows="15" placeholder="Nội dung cần tư vấn..."></textarea> 
                            <button type="submit">Gửi liên hệ</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!--end contact -->
        <%@include file="footer.jsp" %>
        <script src="js/jq.js"></script>
    </body>
</html>
