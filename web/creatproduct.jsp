<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="canonical" href="https://demo-basic.adminkit.io/ui-forms.html" />
        <title>Forms</title>
        <link href="css/app.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
    </head>

    <body>
        
        <div class="wrapper">
            <nav id="sidebar" class="sidebar js-sidebar">
                <div class="sidebar-content js-simplebar">
                    <a class="sidebar-brand" href="admin.jsp">
                        <span class="align-middle">AdminPage</span>
                    </a>

                    <ul class="sidebar-nav">
                        <li class="sidebar-header">
                            Trang chủ
                        </li>

                        <li class="sidebar-item active">
                            <a class="sidebar-link" href="thongke">
                                <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link" href="pages-profile.html">
                                <i class="align-middle" data-feather="user"></i> <span class="align-middle">Profile</span>
                            </a>
                        </li>


                        <li class="sidebar-header">
                            Danh mục 
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link" href="adminproduct">
                                <i class="align-middle" data-feather="square"></i> <span class="align-middle">Quản lý sản phẩm</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link" href="ui-buttons.html">
                                <i class="align-middle" data-feather="square"></i> <span class="align-middle">Quản lý bài viết</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link" href="ui-buttons.html">
                                <i class="align-middle" data-feather="square"></i> <span class="align-middle">Quản lý đơn hàng</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link" href="ui-buttons.html">
                                <i class="align-middle" data-feather="square"></i> <span class="align-middle">Quản lý khách hàng</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link" href="ui-buttons.html">
                                <i class="align-middle" data-feather="square"></i> <span class="align-middle">Phản hồi</span>
                            </a>
                        </li>
                    </ul>


                </div>
            </nav>

            <div class="main">
                <nav class="navbar navbar-expand navbar-light navbar-bg">
                    <a class="sidebar-toggle js-sidebar-toggle">
                        <i class="hamburger align-self-center"></i>
                    </a>

                    <div class="navbar-collapse collapse">
                        <ul class="navbar-nav navbar-align">
                            <li class="nav-item dropdown">
                                <a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
                                    <i class="align-middle" data-feather="settings"></i>
                                </a>

                                <a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
                                    <img src="${sessionScope.account.user_img}" class="avatar img-fluid rounded me-1"/> <span class="text-dark">${sessionScope.account.user_name}</span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <a class="dropdown-item" href="pages-profile.html"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
                                    <a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="pie-chart"></i> Analytics</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="index.html"><i class="align-middle me-1" data-feather="settings"></i> Settings & Privacy</a>
                                    <a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="help-circle"></i> Help Center</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="logout">Log out</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>

                <main class="content">
                    <div class="container-fluid p-0">

                        <div class="mb-3">
                            <h1 class="h3 d-inline align-middle">Tạo mới sách</h1>    
                        </div>
                        <form action="create" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-12 col-lg-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">Tên sách</h5>
                                            <input type="text" name="product_name" required="" class="form-control">
                                        </div>
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">Tác giả</h5>
                                            <input type="text" name="author" required="" class="form-control">    
                                        </div>
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">NXB</h5>
                                            <input type="text" name="NXB" required="" class="form-control">    
                                        </div>
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">Kích thước</h5>
                                            <input type="text" name="kichthuoc" required="" class="form-control">    
                                        </div>
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">Loại Bìa</h5>
                                            <input type="text" name="loaibia" required="" class="form-control">    
                                        </div>
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">Giá bán</h5>
                                            <input type="text" name="price" required="" class="form-control">    
                                        </div>
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">Giá Sale</h5>
                                            <input type="text" name="priceSale" required="" class="form-control" >    
                                        </div>
                                    </div>

                                    <div class="card">
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">Danh mục</h5>
                                        </div>
                                        <div class="card-body">
                                            <select name="category_id" class="form-select mb-3">                              
                                                <c:forEach items="${requestScope.listC}" var="c">
                                                    <option value="${c.cid}">
                                                        ${c.cname}
                                                    </option>                              
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-12 col-lg-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">Hình ảnh</h5>
                                        </div>
                                        <div class="card-body">
                                            <div class="mb-3">
                                                <input type="file" name="file" class="form-control" >
                                            </div>
                                            <div class="btn-group-vertical me-2" role="group" aria-label="Vertical button group">

                                                <h3>${requestScope.message}</h3>
                                            </div>
                                        </div>
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">Số trang</h5>
                                            <input type="number" name="sotrang" class="form-control" placeholder="">    
                                        </div>
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">Số lượng</h5>
                                            <input type="number" name="quantity" class="form-control" placeholder="">    
                                        </div>  
                                        <div class="card">
                                            <div class="card-header">
                                                <h5 class="card-title mb-0">Mô tả về sách</h5>
                                            </div>
                                            <div class="card-body">
                                                <textarea name="script" class="form-control" rows="4" placeholder=""></textarea>
                                            </div>
                                        </div>  
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">Sản phẩm hot</h5>
                                            <input type="checkbox" name="isHot" value="1">    
                                        </div>     
                                    </div>

                                </div>

                            </div>
                            <button type="submit" class="btn btn-primary">Tạo mới</button>                
                        </form>                 
                    </div>
                </main>


            </div>

        </div>

        <script src="js/app.js"></script>

    </body>

</html>