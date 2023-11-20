<%-- 
    Document   : post
    Created on : May 29, 2023, 11:19:46 AM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        
                    </nav>
                    <!-- score-top-->

                    <button onclick="topFunction()" id="myBtn-scroll" title="Go to top"><i class="fas fa-chevron-up"></i></button>
                    <div class="breadcrumbs col-lg-12 col-md-12 col-sm-12">
                        Trang chủ &raquo <span class="breadcrumbs__active">Bài viết</span>
                    </div>
                </div>

                <div class="row">
                    <article class="post__list col-lg-9 col-md-9 col-sm-12">
                        <!-- Post header-->
                        <header class="mb-4">
                            <!-- Post title-->
                            <h1 class="fw-bolder mb-1">${post.post_name}</h1>
                            <!-- Post meta content-->
                            <div style="font-size: 10px" class="text-muted fst-italic mb-2">Posted on ${post.post_date} by ${post.post_author}</div>
                            <!-- Post categories-->
                            
                        </header>
                        <!-- Preview image figure-->
                        <figure><img class="img-fluid rounded" src="${post.post_img}" width="70%" style="height: 450px"  /></figure>
                        <!-- Post content-->
                        <section class="mb-5" style="font-size: 20px;line-height: 50px">
                            ${post.post_text}
     
                        </section>
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

                        <div class="post__aside-bottom">
                            <h3 class="post__aside-heading">
                                Có thể bạn thích
                            </h3>

                            <div class="post__aside-list">
                                <div class="post__aside-item post__aside-item--border">
                                    <div class="post__aside-img-wrap">
                                        <img src="images1/product/image_195509_1_36793.jpg" class="post__aside-img">
                                    </div>
                                    <div class="post__aside-title">
                                        <a href="#" class="post__aside-link">
                                            <h4 class="post__aside-link-heading"> Nhà Giả Kim (Tái Bản 2020)</h4>
                                        </a>

                                        <div class="post__aside-rate-wrap">
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                        </div>

                                        <div class="post__aside-price">
                                            <span class="post__aside-price-current">
                                                79.000đ
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <div class="post__aside-item">
                                    <div class="post__aside-img-wrap">
                                        <img src="images1/product/image_180164_2_287.jpg" class="post__aside-img">
                                    </div>
                                    <div class="post__aside-title">
                                        <a href="#" class="post__aside-link">
                                            <h4 class="post__aside-link-heading">Tuổi Trẻ Đáng Giá Bao Nhiêu</h4>
                                        </a>

                                        <div class="post__aside-rate-wrap">
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                        </div>

                                        <div class="post__aside-price">
                                            <span class="post__aside-price-current">
                                                80.000đ
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <div class="post__aside-item">
                                    <div class="post__aside-img-wrap">
                                        <img src="images1/product/ttdc01.jpg" class="post__aside-img">
                                    </div>
                                    <div class="post__aside-title">
                                        <a href="#" class="post__aside-link">
                                            <h4 class="post__aside-link-heading">Thám Tử Đã Chết -Tập 1 Tặng Kèm Bookmark</h4>
                                        </a>

                                        <div class="post__aside-rate-wrap">
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                        </div>

                                        <div class="post__aside-price">
                                            <span class="post__aside-price-current">
                                                119.00đ
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <div class="post__aside-item">
                                    <div class="post__aside-img-wrap">
                                        <img src="images1/product/tr_-tue-do-thai_outline_15.9.2017-02.jpg" class="post__aside-img">
                                    </div>
                                    <div class="post__aside-title">
                                        <a href="#" class="post__aside-link">
                                            <h4 class="post__aside-link-heading">Trí Tuệ Do Thái (Tái Bản 2018)</h4>
                                        </a>

                                        <div class="post__aside-rate-wrap">
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                            <i class="fas fa-star post__aside-rate"></i>
                                        </div>

                                        <div class="post__aside-price">
                                            <span class="post__aside-price-current">
                                                169.000đ
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                

                            </div>
                        </div>
                    </aside>
<!--                    <section class="mb-5" style="width: 76%">
                        <div class="card bg-light">
                            <div class="card-body">
                                
                                <form class="mb-4"><textarea class="form-control" rows="3" placeholder="Join the discussion and leave a comment!"></textarea></form>
                                 
                                <div class="d-flex mb-4">
                                     
                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                    <div class="ms-3" style="font-size: 12px; margin-left: 8px">
                                        <div class="fw-bold">Commenter Name</div>
                                          If you're going to lead a space frontier, it has to be government; it'll never be private enterprise. Because the space frontier is dangerous, and it's expensive, and it has unquantified risks.
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </section>-->
                </div>        
            </div>
        </section>
        <!--end posts -->
        <%@include file="footer.jsp" %>
        <script src="js/jq.js"></script>
    </body>
</html>
