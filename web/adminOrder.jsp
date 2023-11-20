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
        <link rel="canonical" href="https://demo-basic.adminkit.io/pages-blank.html" />
        <title>Sản phẩm</title>
        <link href="css/app.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">

    </head>

    <body >
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

            <div class="main" >
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

                <main class="content" >
                    <div class="container-fluid p-0">

                        <h1 class="h3 mb-3">Danh sách đơn hàng</h1>
                        <div class="row">
                            <div class="col-12">
                                <div class="card">

                                    <div class="card-body">
                                        <div class="container-lg">
                                            <div class="table-responsive">
                                                <div class="table-wrapper">			
                                                    <div class="table-title">
                                                        <div class="row">
                                                            <div class="col-sm-10">
                                                                <h2>Tất cả <b>đơn hàng</b></h2>
                                                            </div>
                                                            

                                                        </div>
                                                    </div>
                                                    <table class="table table-striped" >
                                                        <thead >
                                                            <tr style="text-align: center">
                                                                <th style="width: 10%;text-align: center">ID đơn hàng</th>
                                                                <th style="width: 12%;text-align: center">Khách hàng</th>
                                                               
                                                                <th style="width: 12%;text-align: center">Địa chỉ</th>
                                                                <th style="width: 12%;">Ngày mua</th>
                                                                <th style="width: 12%;">Tổng tiền</th>
                                                                <th style="width: 20%;">Thanh toán</th>
                                                                <th style="width: 12%;">Tính năng</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody >
                                                            <c:forEach items="${listOrder}" var="c">
                                                                <tr style="text-align: center">
                                                                    <td>${c.order_id}</td>
                                                                    <td>${c.user_name}</td>
                                                                    
                                                                    <td>${c.address}</td>

                                                                    <td>${c.created_at}</td>
                                                                    <td>

                                                                        <fmt:formatNumber value="${c.total_money}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ 
                                                                    </td>
                                                                    <c:if test="${c.payment == 'VNPAY' || c.payment == 'COD'}">
                                                                    <td><button class="btn btn-success" disabled>${c.payment}</button></td>
                                                                    </c:if>
                                                                    <c:if test="${c.payment == 'Chưa thanh toán(VNPAY)' || c.payment == 'Chưa thanh toán(COD)'}">
                                                                    <td><button class="btn btn-danger" disabled>${c.payment}</button></td>
                                                                    </c:if>
                                                                    <td>
                                                                        <div class="mb-2" style="display: flex;margin-left: 28px">
                                                                            <a href="updateOrder?orderid=${c.order_id}"><i class="align-middle me-2" data-feather="edit" style="color: green"></i> <span class="align-middle"></span></a>
<!--                                                                            <a href="#" ><i class="align-middle me-2" data-feather="trash-2" style="color: red"></i> <span class="align-middle"></span></a>-->
                                                                            <a href="viewOrder?orderid=${c.order_id}" ><i class="align-middle me-2" data-feather="eye" style="color: blue;"></i></a>
                                                                        </div>

                                                                    </td>
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
                </main>

            </div>
        </div>

        <script src="js/app.js"></script>

    </body>

</html>