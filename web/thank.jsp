<%-- 
    Document   : thank
    Created on : Jun 25, 2023, 12:21:31 AM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <c:if test="${requestScope.mess == 1}">
            <h1 style="text-align: center;margin-top: 100px">Đặt hàng thành công</h1>
        </c:if>
        <c:if test="${requestScope.mess == 0}">
            <h1 style="text-align: center;margin-top: 100px"">Đặt hàng thất bại</h1>
        </c:if>    
    </body>
</html>
