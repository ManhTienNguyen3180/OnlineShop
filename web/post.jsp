<%-- 
    Document   : post
    Created on : May 29, 2023, 11:19:46 AM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Bài viết</title>
        <script src="js/jquery-3.3.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/post.css">
    </head>
    <body>
        <%@include file="header.jsp" %>
        <section class="posts">
            <div class="container">
                <div class="row pc">
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
                    <!-- score-top-->

                    <button onclick="topFunction()" id="myBtn-scroll" title="Go to top"><i class="fas fa-chevron-up"></i></button>
                    <div class="breadcrumbs col-lg-12 col-md-12 col-sm-12">
                        Trang chủ &raquo <span class="breadcrumbs__active">Bài viết</span>
                    </div>
                </div>

                <div class="row">
                    <article class="post__list col-lg-9 col-md-9 col-sm-12">
                        <c:forEach items="${listp}" var="c">
                        <div class="post__item">
                            <div class="post__item-img-wrap">
                                <img src="${c.post_img}" class="post__item-img" style="height: 154px; width: 100%">
                            </div>

                            <div class="post__item-content">
                                <div class="post__item-title">
                                    <a href="postdt?postid=${c.post_id}" class="post__item-link">
                                        <h2 class="post__item-heading">
                                            ${c.post_name}
                                        </h2>
                                    </a>
                                </div>

                                <div class="posts__item-cate-wrap">
                                    
                                    <div class="posts__item-cate-ad">
                                        <i class="fa fa-user posts__item-cate-ad-icon"></i>
                                        <div class="posts__item-cate-ad-name">
                                            ${c.post_author}
                                        </div>   
                                    </div>
                                </div>
                                <div class="posts__item-description">
                                    ${c.post_stext}
                                </div>
                            </div>
                        </div>
                        </c:forEach>

                        <nav class="post__pagination">
                            <ul class="post__pagination-list">
                                <li class="post__pagination-item">
                                    <a class="post__pagination-link" href="#" aria-label="Previous">
                                        <span class="post__pagination-link-prev">&laquo;</span>
                                    </a>
                                </li>
                                <c:forEach begin="1" end="${endPage}" var="i">
                                <li class="post__pagination-item">
                                    <a class="post__pagination-link" href="post?index=${i}">${i}</a>
                                </li>
                                </c:forEach>
                                <li class="post__pagination-item">
                                    <a class="post__pagination-link" href="#" aria-label="Next">
                                        <span class="post__pagination-link-next">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </article>

                    <aside class="post__aside col-lg-3 col-md-3 col-sm-0">
                        <div class="post__aside-top">
                            <div class="post__aside-title">
                                <h3 class="post__aside-heading">
                                    Bài viết liên quan
                                </h3>

                                <div class="post__aside-list">
                                    <div class="post__aside-item post__aside-item--no-border">
                                        <div class="post__aside-img-wrap">
                                            <img src="images1/post/62255041_667523643676350_795766940692905984_n.jpg" class="post__aside-img">
                                        </div>
                                        <div class="post__aside-title">
                                            <a href="#" class="post__aside-link">
                                                <h4 class="post__aside-link-heading">Chương trình đổi sách cũ lấy cây xanh</h4>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="post__aside-item post__aside-item--no-border">
                                        <div class="post__aside-img-wrap">
                                            <img src="images1/post/e2.jpg" class="post__aside-img">
                                        </div>
                                        <div class="post__aside-title">
                                            <a href="#" class="post__aside-link">
                                                <h4 class="post__aside-link-heading">Góp sách cũ ,tặng niềm vui mới cho trẻ em nghèo</h4>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="post__aside-item post__aside-item--no-border">
                                        <div class="post__aside-img-wrap">
                                            <img src="images1/post/hinh-ghep-15986994500641611959184.jpg" class="post__aside-img">
                                        </div>
                                        <div class="post__aside-title">
                                            <a href="#" class="post__aside-link">
                                                <h4 class="post__aside-link-heading"> Cách phân biệt sách thật giả chính xác</h4>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>        
            </div>
        </section>
        <!--end posts -->
        <%@include file="footer.jsp" %>
        <script src="js/jq.js"></script>
    </body>
</html>
