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
                            <h1 class="h3 d-inline align-middle">Cập nhật bài viết</h1>    
                        </div>
                        <form action="updatepost" method="post" id="formgroup" enctype="multipart/form-data">
                            <div class="row" >
                                <div class="col-12 col-lg-8">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">Tên bài viết</h5>
                                            <input type="text" id="post_name" name="post_name" value="${requestScope.post.post_name}" required="" class="form-control" >
                                            <input type="text" name="id" value="${requestScope.post.post_id}"  class="form-control" hidden="">
                                        </div>
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">Tác giả</h5>
                                            <input type="text" id="post_author" name="author" value="${requestScope.post.post_author}" required="" class="form-control" >    
                                        </div>

                                    </div>
                                    <div class="card">
                                        <div class="card">                                                                                                                              
                                            <div class="card-body">
                                                <h5 class="card-title mb-0">Tóm tắt bài viết</h5>
                                                <textarea name="post_stext" id="editor" class="form-control" rows="4">
                                                    ${requestScope.post.post_stext}
                                                </textarea>
                                            </div>

                                            <div class="card-body">
                                                <h5 class="card-title mb-0">Nội dung bài viết</h5>
                                                <textarea name="post_text" id="editor1" class="form-control" rows="4">
                                                    ${requestScope.post.post_text}
                                                </textarea>
                                            </div>
                                        </div>       
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5 class="card-title mb-0">Hình ảnh</h5>
                                            <img src="${requestScope.post.post_img}" style="width: 100%"/>
                                        </div>
                                        <div class="card-body">
                                            <div class="mb-3">
                                                <input type="file" name="file" class="form-control" >
                                            </div>
                                            <div class="btn-group-vertical me-2" role="group" aria-label="Vertical button group">

                                                <h3>${requestScope.message}</h3>
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
        <script>
            CKEDITOR.replace('editor');
            CKEDITOR.replace('editor1');





//            var name = $("#post_id").val();
////            var name = $("#post_name").val();
////            var author = $("#post_author").val();
////            var poststext = CKEDITOR.instances.editor.getData();
////            var posttext = CKEDITOR.instances.editor1.getData();
//            $(document).ready(function () {
//                $("#formgroup").submit(function (event) {
//                    var formData = {
//                        name: $("#post_name").val(),
//                        author: $("#post_author").val(),
//                        poststext: CKEDITOR.instances.editor.getData(),
//                        posttext: CKEDITOR.instances.editor1.getData()
//                    };
//
//                    $.ajax({
//                        type: "POST",
//                        url: "updatepost?id="+name,
//                        contentType: "application/json", 
//                        data: JSON.stringify(formData),
//                        success: function (response) {
//                            // ...
//                        }
//
//                    });
//
//                    event.preventDefault();
//                });
//            });



        </script>
<!--        <script type="text/javascript">
            $(document).ready(function () {
                $("#formgroup").submit()(function (event) {
                    event.preventDefault();
                    var id = $("#post_id").val();
                    var post_name = $("#post_name").val();
                    var author = $("#post_author").val();
                    var poststext = CKEDITOR.instances.editor.getData();
                    var posttext = CKEDITOR.instances.editor1.getData();
                    var dataString = 'id='+id+'&post_name='+post_name+'&author='+author+'&poststext='+poststext+'&posttext='+posttext;
                    $.ajax({
                        type: 'POST',
                        data: $(this).serialize(),
                        url: 'updatepost',
                        success: function (data) {
                            alert(data);
                        }
                    });
                });

            });
            function CKupdate() {
                for (instance in CKEDITOR.instances)
                    CKEDITOR.instances[instance].updateElement();
            }
        </script>-->
    </body>

</html>