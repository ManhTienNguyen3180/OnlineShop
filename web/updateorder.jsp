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
        <script type="text/javascript" src="<%=request.getContextPath()%>/lib/ckeditor/ckeditor.js">

        </script>

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

                <main class="content" >
                    <div class="container-fluid p-0" >

                        <div class="mb-3">
                            <h1 class="h3 d-inline align-middle">Cập nhật đơn hàng</h1>    
                        </div>
                        <form action="updateOrder" method="post">
                            <div class="row" >
                                <div class="col-12 col-lg-8">
                                    <div class="card">
                                        <div class="card-header">
                                            <div class="col-sm-10">
                                                <h2>Hóa đơn <b>#${requestScope.infor.order_id}</b></h2>
                                                <input type="text" name="orderid" value="${requestScope.infor.order_id}" hidden="">
                                            </div>
                                            <table class="table table-striped" >
                                                <thead >
                                                    <tr style="text-align: center;background-color: gray;">
                                                        <th style="width: 12%;text-align: center;color: white">ID sản phẩm</th>
                                                        <th style="width: 12%;text-align: center;color: white">Tên sản phẩm</th>



                                                        <th style="width: 12%;text-align: center;color: white">Số lượng</th>
                                                        <th style="width: 12%;color: white">Giá tiền</th>
                                                        <th style="width: 12%;color: white">Đơn vị</th>

                                                    </tr>
                                                </thead>
                                                <tbody >
                                                    <c:forEach items="${list}" var="c">
                                                        <tr style="text-align: center">
                                                            <td>${c.product_id}</td>
                                                            <td>${c.product_name}</td>

                                                            <td>${c.quantity}</td>


                                                            <td>

                                                                <fmt:formatNumber value="${c.priceSale}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ 
                                                                </td>
                                                                <td>
                                                                    Đồng
                                                                </td>


                                                            </tr>                                                                            
                                                    </c:forEach>
                                                </tbody>

                                            </table>
                                        </div>


                                    </div>
                                    <div class="card">
                                        <div class="card">                                                                                                                              
                                            <div class="card-body">
                                                <h5 class="card-title mb-0">Cập nhật thanh toán</h5>
                                                <div class="card-body">
                                                    <c:if test="${infor.payment == 'VNPAY'}">
                                                        <select name="payment" class="form-select mb-3" disabled="">                              

                                                            <option value="VNPAY"  ${(infor.payment== "VNPAY")?'selected':''} >VNPAY</option>                                 
                                                            <option value="COD"  ${(infor.payment== "COD")?'selected':''} >COD</option>
                                                            <option value="Chưa thanh toán(COD)"  ${(infor.payment== "Chưa thanh toán(COD)")?'selected':''} >Chưa thanh toán(COD)</option>
                                                            <option value="Chưa thanh toán(VNPAY)"  ${(infor.payment== "Chưa thanh toán(VNPAY)")?'selected':''} >Chưa thanh toán(VNPAY)</option>
                                                        </select>
                                                    </c:if>
                                                    <c:if test="${infor.payment == 'COD'}">
                                                        <select name="payment" class="form-select mb-3" disabled="">                              

                                                            <option value="VNPAY"  ${(infor.payment== "VNPAY")?'selected':''} >VNPAY</option>                                 
                                                            <option value="COD"  ${(infor.payment== "COD")?'selected':''} >COD</option>
                                                            <option value="Chưa thanh toán(COD)"  ${(infor.payment== "Chưa thanh toán(COD)")?'selected':''} >Chưa thanh toán(COD)</option>
                                                            <option value="Chưa thanh toán(VNPAY)"  ${(infor.payment== "Chưa thanh toán(VNPAY)")?'selected':''}>Chưa thanh toán(VNPAY)</option>
                                                        </select>
                                                    </c:if>
                                                    <c:if test="${infor.payment != 'COD' && infor.payment != 'VNPAY'}">
                                                        <select name="payment" class="form-select mb-3">                              

                                                            <option value="VNPAY"  ${(infor.payment== "VNPAY")?'selected':''} >VNPAY</option>                                 
                                                            <option value="COD"  ${(infor.payment== "COD")?'selected':''} >COD</option>
                                                            <c:if test="${infor.payment == 'Chưa thanh toán(VNPAY)'}">
                                                                <option value="Chưa thanh toán(COD)"  ${(infor.payment== "Chưa thanh toán(COD)")?'selected':''} disabled="">Chưa thanh toán(COD)</option>
                                                            </c:if>
                                                            <c:if test="${infor.payment != 'Chưa thanh toán(VNPAY)'}">
                                                                <option value="Chưa thanh toán(COD)"  ${(infor.payment== "Chưa thanh toán(COD)")?'selected':''}>Chưa thanh toán(COD)</option>
                                                            </c:if>
                                                            <c:if test="${infor.payment == 'Chưa thanh toán(COD)'}">
                                                                <option value="Chưa thanh toán(VNPAY)"  ${(infor.payment== "Chưa thanh toán(VNPAY)")?'selected':''} disabled="">Chưa thanh toán(VNPAY)</option>
                                                            </c:if>   
                                                            <c:if test="${infor.payment != 'Chưa thanh toán(COD)'}">
                                                                <option value="Chưa thanh toán(VNPAY)"  ${(infor.payment== "Chưa thanh toán(VNPAY)")?'selected':''} disabled="">Chưa thanh toán(VNPAY)</option>
                                                            </c:if>  
                                                        </select>
                                                    </c:if>

                                                </div>
                                            </div> 
                                        </div>       
                                    </div>
                                </div>


                            </div> 
                            <button type="submit"  class="btn btn-primary">Cập nhật</button>                 
                        </form>                 
                    </div>
                </main>


            </div>

        </div>

        <script src="js/app.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> 
    </body>

</html>