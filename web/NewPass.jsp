<%-- 
    Document   : NewPass
    Created on : Jun 7, 2023, 10:20:27 PM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style_login.css">
    </head>
    <body>
        <div >
            <div class="container">       
                <div class="login form">
                    <header>New Password</header>
                    <form action="newPassword" method="post">
                        <input type="text" name="user" placeholder="Enter your username">

                        <input type="password" name="pass" placeholder="Enter your password">
                        <input type="password" name="re_pass" placeholder="Enter your  confirm password">         
                        <input type="submit" class="button" value="Reset password">
                    </form>
                    <div class="signup">
                        <span class="signup">Don't have an account?
                            <a href="signup.jsp" style="color: red">Signup</a> 
                        </span>
                    </div>
                </div>

                <div class="back-to-shop" ><a href="home">&leftarrow;Back to shop</a></div>
            </div>
        </div>
    </body>
</html>
