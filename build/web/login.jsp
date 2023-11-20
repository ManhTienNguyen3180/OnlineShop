<%-- 
    Document   : login
    Created on : May 29, 2023, 10:59:18 AM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Login & Registration Form</title>
        <!---Custom CSS File--->
        <link rel="stylesheet" href="css/style_login.css">
        
    </head>
    <body>       
        <div >
            <div class="container">       
                <div class="login form">
                    <header>Login</header>
                    <form action="login" method="post">
                        <input type="text" name="user" placeholder="Enter your username">
                        
                        <input type="password" name="pass" placeholder="Enter your password">
                        
                        <a href="forgetpass.jsp">Forgot password?</a>
                        <h5 style="color: red; text-align: center">${requestScope.error}</h5>
                        <c:if test="${status != null}">
                            <h5 style="color: red; text-align: center">${status}</h5>
                        </c:if>
                        <input type="submit" class="button" value="Login">
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
