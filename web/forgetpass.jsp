<%-- 
    Document   : forgotpass
    Created on : Jun 7, 2023, 7:54:16 PM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Forgot Password Form</title>
        <!---Custom CSS File--->
        <link rel="stylesheet" href="css/style_login.css">
    </head>
    <body>
        <div >
            <div class="container">       
                <div class="login form">
                    <header>Forgot Password</header>
                   
                    <form id="resetForm" action="reset_password" method="post">
                        <input type="text" name="user" placeholder="Enter your username" required="">
                        <input id="email" type="text" name="email" placeholder="Enter your email" required="">
                        
                        <input type="submit" class="button" value="Reset password">
                    </form>
                </div>
                <div class="back-to-shop" ><a href="home">&leftarrow;Back to shop</a></div>
            </div>
        </div>
                    
    </body>
</html>
