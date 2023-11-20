<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="preconnect" href="https://fonts.gstatic.com"> 
        <link rel="canonical" href="https://demo-basic.adminkit.io/" />
        <title>Admin</title>
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
                            <a class="sidebar-link" href="adminpost">
                                <i class="align-middle" data-feather="square"></i> <span class="align-middle">Quản lý bài viết</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link" href="adminorder">
                                <i class="align-middle" data-feather="square"></i> <span class="align-middle">Quản lý đơn hàng</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link" href="admincategory">
                                <i class="align-middle" data-feather="square"></i> <span class="align-middle">Quản lý danh mục</span>
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

                        <h1 class="h3 mb-3"><strong>Thống kê</strong> sách trong kho</h1>
                        <form action="thongketon" id="thongketon">
                            <div style="width: 15%">
                                Hàng tồn: <select  onchange="test()" name="thang" class="form-select mb-3">                              
                                    <option value="0">All</option> 
                                    <option value="1"<c:if test="${thang == 1}">selected</c:if>>1 tháng</option> 
                                    <option value="3"<c:if test="${thang == 3}">selected</c:if>>3 tháng</option>                                
                                    <option value="5"<c:if test="${thang == 5}">selected</c:if>>5 tháng</option>
                                    <option value="12"<c:if test="${thang == 12}">selected</c:if>>12 tháng</option>
                                    
<!--                                    <option value="1"<c:if test="${thang == 1}">selected</c:if>>1 tháng</option>-->
                                </select>
                            </div>
                        </form>    

                        <div class="row">
                            <div class="col-xl-12 col-xxl-12 d-flex">
                                <div class="w-100">
                                    <div class="row" >
                                        <div >
                                            <div class="card flex-fill w-100" >
                                                <div class="card-header">

                                                    <h5 class="card-title mb-0">Sản phẩm tồn trong kho</h5>
                                                </div>
                                                <div class="card-body py-3">
                                                    <table class="table table-striped" >
                                                        <thead >
                                                            <tr style="text-align: center">
                                                                <th>ID</th>
                                                                <th style="width: 22%">Tên sản phẩm</th>
                                                                <th style="width: 20%;">Hình ảnh</th>


                                                                <th style="width: 22%;">Ngày tạo</th>
                                                                <!--                                                                <th style="width: 22%;">Tác giả</th>-->
                                                                <th style="width: 22%;">Số lượng tồn</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody >
                                                            <c:forEach items="${listTon}" var="c">
                                                                <tr style="text-align: center">
                                                                    <td>${c.product_id}</td>
                                                                    <td>${c.product_name}</td>
                                                                    <td><img src="${c.product_img}" style="width: 40%"></td>
                                                                    <td>${c.created_at}</td>
                                                                    <td>${c.quantity}</td>

                                                                </tr>                                                                            
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>                                          
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>


            </div>
        </main>

    </div>
</div>

<script src="js/app.js"></script>
<script type="text/javascript">
    function test(){
        document.getElementById("thongketon").submit();
    }
</script>
</body>

</html>
