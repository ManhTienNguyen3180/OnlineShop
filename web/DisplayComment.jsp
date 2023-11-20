<%-- 
    Document   : DisplayComment
    Created on : Jun 11, 2023, 1:58:03 AM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sản phẩm</title>

    </head>
    <body>
        <c:if test="${listComment == null}">
            <span style="font-size: 20px">Chua co binh luan</span>
        </c:if>
        <c:if test="${listComment != null}">    
            <c:forEach items="${listComment}" var="c">

                <div class="comment-item comment2">
                    <ul class = item-reviewer>
                        <div class="comment-item-user">
                            <img src="${c.user.user_img}" class="comment-item-user-img">
                            <li><b>${c.user.user_name}</b></li> 
                        </div>

                        <br>
                        <li>${c.review_date}</li>
                        <li>
                            <h4>${c.review_comment}</h4>
                        </li>
                    </ul>
                </div>
            </c:forEach>
        </c:if>
    </body>
</html>
