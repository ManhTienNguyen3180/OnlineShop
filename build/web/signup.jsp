<%-- 
    Document   : signup
    Created on : May 31, 2023, 10:38:25 PM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }
            body{

                background: white;
            }
            .container{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                max-width: 430px;
                width: 100%;
                background: #fff;
                border-radius: 7px;
                box-shadow: 0 5px 10px rgba(0,0,0,0.3);
            }

            .container .form{
                padding: 2rem;
            }
            .form header{
                font-size: 2rem;
                font-weight: 500;
                text-align: center;
                margin-bottom: 1.5rem;
            }
            .form input{
                height: 60px;
                width: 100%;
                padding: 0 15px;
                font-size: 17px;
                margin-bottom: 1.3rem;
                border: 1px solid #ddd;
                border-radius: 6px;
                outline: none;
            }
            .form input:focus{
                box-shadow: 0 1px 0 rgba(0,0,0,0.2);
            }
            .form a{
                font-size: 16px;
                color: black;
                text-decoration: none;
            }
            .form a:hover{
                text-decoration: underline;
            }
            .form input.button{
                color: #fff;
                background: #fe4c50;
                font-size: 1.2rem;
                font-weight: 500;
                letter-spacing: 1px;
                margin-top: 1.7rem;
                cursor: pointer;
                transition: 0.4s;
            }
            .form input.button:hover{
                background: #d12419;
            }
            .signup{
                font-size: 17px;
                text-align: center;
            }
            .signup label{
                color: #fe4c50;
                cursor: pointer;
            }
            .signup label:hover{
                text-decoration: underline;
            }
            .back-to-shop a{
                text-decoration: none;
                color: black;
            }
        </style>
    </head>
    <body>
        <div >

            <div class="container">
                <div class="registration form">
                    <header>Signup</header>
                    <form action="signup" method="post">
                        <input type="text" name="user" placeholder="Enter your username">  
                        <input type="text" name="email" placeholder="Enter your email">
                        <input type="text" name="phone" placeholder="Enter your phone number">
                        <input type="text" name="address" placeholder="Enter your address">
                        <input type="password" name="pass" placeholder="Create a password">
                        <input type="password" name="re_pass" placeholder="Confirm your password">
                        <h4 style="color: red; text-align: center">${requestScope.error}</h4>
                        <input type="submit" class="button" value="Signup">
                    </form>
                    <div class="signup">
                        <span class="signup">Already have an account?
                            <a href="login.jsp"><label for="check">Login</label></a> 
                        </span>
                    </div>
                </div>
                
                <div class="back-to-shop" ><a href="home">&leftarrow;Back to shop</a></div>
            </div>
        </div>
    </body>
</html>
