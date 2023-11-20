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
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
        <script type="text/javascript">
            function doDelete() {
                let a = prompt("ban muon xoa");
                let id = Number(a);
                if (a == null) {
                    window.location = "adminproduct";
                } else {
                    if (confirm("Bạn chắc chắn muốn xóa " + id)) {
                        window.location = "delete?id=" + id;
                    }
                }

            }
            function doUpdate() {
                let a = prompt("ban muon upadte");
                let id = Number(a);
                if (a == null) {
                    window.location = "adminproduct";
                } else {
                    window.location = "update?product_id=" + id;
                }
            }
        </script>
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

                        <h1 class="h3 mb-3">Danh sách sản phẩm</h1>
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
                                                                <h2>Tất cả <b>Sách</b></h2>
                                                            </div>
                                                            <div >
                                                                <div class="search-box">
                                                                    <a href="create" style="margin-left: 5px"><i class="align-middle me-2" data-feather="plus"></i> <span class="align-middle">Thêm sách</span></a>
                                                                    <a href="#" onclick="doDelete()" style="margin-left: 10px"><i class="align-middle me-2" data-feather="trash-2" style="color: red"></i> <span class="align-middle" style="color: red">Xóa sách</span></a>
                                                                    <a href="#" onclick="doUpdate()" style="margin-left: 10px"><i class="align-middle me-2" data-feather="edit" style="color: green"></i> <span class="align-middle" style="color: green;text-decoration: none">Sửa thông tin sách</span></a>
                                                                </div>

                                                            </div>

                                                        </div>
                                                    </div>
                                                    <table class="table table-striped" id="example">
                                                        <thead>
                                                            <tr>
                                                                <th>ID</th>
                                                                <th style="width: 22%;">Tên sách</th>
                                                                <th style="width: 22%;">Tác giả</th>
                                                                <th style="width: 22%;">NXB</th>
                                                                <th style="width: 22%;">Kích thước</th>
                                                                <th style="width: 22%;">Giá bán</th>
                                                                <th style="width: 22%;">Hình ảnh</th>
                                                                
                                                            </tr>
                                                        </thead>
                                                        <tbody >
                                                            
                                                            <tr style="width: 100%">
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                
                                                                <!--                                                                <td>
                                                                                                                                    <div class="mb-2" style="display: flex">
                                                                                                                                        <a href="#"><i class="align-middle me-2" data-feather="edit" style="color: blue"></i> <span class="align-middle"></span></a>
                                                                                                                                        <a href="#"><i class="align-middle me-2" data-feather="trash-2" style="color: red"></i> <span class="align-middle"></span></a>
                                                                                                                                    </div>
                                                                
                                                                                                                                </td>-->
                                                            </tr>                                                                            
                                                            
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
        
        <script type="text/javascript">
            var xmlhttp = new XMLHttpRequest();
            var url = "http://localhost:9999/MyShop/adminproduct";
            xmlhttp.open("POST", url, true);
            xmlhttp.send();
            xmlhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = JSON.parse(this.responseText);
//                    console.log(data)
                $('#example').DataTable({
                    data: data,
                    columns: [
                        {data: "product_id"},
                        {data: "product_name"},
                        {data: "product_author"},
                        {data: "product_nxb"},
                        {data: "product_kichthuoc"}, 
                        {data: "priceSale"},
                        {
                            "data": "product_img", 
                            "render": function ( data, type, row, meta ) {
                                    return '<img src="'+data+'" style="width: 100%;"></img>';
                                }
                        }
                        
                    ]
                });
            }
            };

        </script>
        
    </body>

</html>