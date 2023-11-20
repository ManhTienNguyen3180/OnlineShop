<%-- 
    Document   : profile
    Created on : Jun 7, 2023, 1:14:37 PM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>
        <style>
            .form-control:focus {
                box-shadow: none;
                border-color: #BA68C8
            }

            .profile-button {
                background: rgb(99, 39, 120);
                box-shadow: none;
                border: none
            }

            .profile-button:hover {
                background: #682773
            }

            .profile-button:focus {
                background: #682773;
                box-shadow: none
            }

            .profile-button:active {
                background: #682773;
                box-shadow: none
            }

            .back:hover {
                color: #682773;
                cursor: pointer
            }

            .labels {
                font-size: 11px
            }

            .add-experience:hover {
                background: #BA68C8;
                color: #fff;
                cursor: pointer;
                border: solid 1px #BA68C8
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container rounded bg-white mt-5 mb-5" style="font-size: 300px">
            <form action="changeProfile">
                <div class="row">
                    <div class="col-md-3 border-right">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img style="border-radius: 50px" width="150px" src="${sessionScope.account.user_img}"><span class="font-weight-bold"></span><span> </span></div>
                    </div>
                    <div class="col-md-5 border-right">
                        <div class="p-5 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4 class="text-right">Profile Settings</h4>
                            </div>
                            <div class="row mt-2">
                                <div class="col-md-12"><label class="labels">Tên</label><input type="text" name="name" class="form-control" readonly="" placeholder="first name" value="${sessionScope.account.user_name}"></div>
                                <input type="text" name="id" hidden="" value="${sessionScope.account.user_id}">
                            </div>
                            <div class="row mt-2">
                                <div class="col-md-12"><label class="labels">Mật Khẩu</label><input type="password" name="pass" class="form-control" placeholder="first name" value="${sessionScope.account.user_pass}"></div>

                            </div>    
                            <div class="row mt-3">
                                <div class="col-md-12"><label class="labels">Số điện thoại</label><input type="text" name="SDT" class="form-control"  value="${sessionScope.account.user_phone}"></div>
                                <div class="col-md-12"><label class="labels">Địa chỉ</label><input type="text" name="diachi" class="form-control"  value="${sessionScope.account.user_address}"></div>
                                <div class="col-md-12"><label class="labels">Email ID</label><input type="text" name="email" class="form-control"  value="${sessionScope.account.user_email}"></div>
                            </div>

                            <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit" style="background-color: red; border: 0">Save Profile</button></div>
                        </div>
                    </div>

                </div>
            </form>                 
        </div>
                       
    <hr>
    <%@include file="footer.jsp" %>
</body>
</html>
