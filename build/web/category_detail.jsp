<%-- 
    Document   : category_detail
    Created on : May 29, 2023, 11:30:39 AM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category</title>        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0/css/all.min.css">
        <style>
            .pagination a {
                color: black;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
                transition: background-color .3s;
            }

            /* Style the active/current link */
            .pagination a.active {
                background-color: dodgerblue;
                color: white;
            }

            /* Add a grey background color on mouse-over */
            .pagination a:hover:not(.active) {
                background-color: #ddd;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container pt-5" style="margin-top: 20px; font-size: 100px; margin-bottom: 50px">
            <div class="row">
            </div>
            <div class="col-md-4 order-md-1 col-lg-3 sidebar-filter">
                <h3 class="mt-0 mb-5">Hiển thị sản phẩm</h3>
                <h5 class="text-uppercase font-weight-bold mb-3">--Danh mục</h5>

                <c:forEach items="${category}" var="c">
                    <div class="mt-2 mb-2 pl-2">
                        <div class=" custom-checkbox">

                            <a href="category?cid=${c.cid}"  style="list-style: none; color: black">${c.cname}</a>
                        </div>
                    </div>
                </c:forEach>

                <div class="divider mt-5 mb-5 border-bottom border-secondary"></div>
                <h5 class="text-uppercase mt-5 mb-3 font-weight-bold">--Nhà xuất bản</h5>
                <c:forEach items="${productall}" var="c">
                    <div class="mt-2 mb-2 pl-2">
                        <div class=" custom-checkbox">          
                            <a href="category?NXB=${c}"  for="filter-size-1" style="color: black">${c}</a>
                        </div>
                    </div>
                </c:forEach>

                <div class="divider mt-5 mb-5 border-bottom border-secondary"></div>
                <h5 class="text-uppercase mt-5 mb-3 font-weight-bold">Price</h5>
                <form action="category">
                    <div class="price-filter-control">
                        <input name="min" type="number" class="form-control w-50 pull-left mb-2" value="" id="price-min-control "placeholder="0">
                        <input name="max" type="number" class="form-control w-50 pull-right" value="" id="price-max-control" placeholder="999999">
                    </div>
                    <input id="ex2" type="text" class="slider " value="50,150" data-slider-min="10" data-slider-max="200" data-slider-step="5" data-slider-value="[50,150]" data-value="50,150" style="display: none;">
                    <div class="divider mt-5 mb-5 border-bottom border-secondary"></div>
                    <input type="submit" value="Update Results" class="btn btn-lg btn-block btn-primary mt-5" style="background-color: #f24137; border: 0px; margin-top: 50px">
                </form>
            </div>
            <div class="col-md-8 order-md-2 col-lg-9">
                <div class="container-fluid">
                    <div class="row   mb-5">
                        <div class="col-12">
                            <div class="dropdown text-md-left text-center float-md-right mb-3 mt-3 mt-md-0 mb-md-0">
                                <form id="frm-sort" action="category">

                                    <label style="font-size: 13px;margin-right: 10px">Sort by: </label><select class="btn btn-lg btn-light dropdown-toggle" name="sort" aria-label="Default select example"  onchange="submitForm()">
                                        <option value="-1" 
                                                
                                                    >Mặc định</option>
                                                <option value="1"
                                                
                                                    >A → Z</option>
                                                <option value="2"
                                                
                                                    >Z → A</option>
                                                <option value="3"
                                                
                                                    >Giá tăng dần</option>
                                                <option value="4"
                                                
                                                    >Giá giảm dần</option>
                                        </select>
                                    </form>

                                </div>


                            </div>
                        </div>
                        <div class="row" style="font-size: 100px">
                        <c:if test="${message != null}">
                            <div style="font-size: 20px; font-style: italic">
                                ${message}
                            </div>

                        </c:if>

                        <c:forEach items="${listbyPa}" var="c">
                            <div class="col-6 col-md-6 col-lg-4 mb-3">
                                <div class="card h-100 border-0">
                                    <div class="card-img-top">
                                        <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}"><img src="${c.product_img}" class="img-fluid mx-auto d-block" alt="Card image cap" style="width: 150px; height: 200px"></a>
                                    </div>
                                    <div class="card-body text-center">
                                        <h4 class="card-title">
                                            <a href="productdetail?id=${c.product_id}&cid=${c.ct.cid}" class=" font-weight-bold text-dark text-uppercase small">${c.product_name}</a>
                                        </h4>
                                        <h5 class="card-price small ">

                                            <s style="font-style: italic;color: red"><fmt:formatNumber value="${c.price}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber></s> 
                                                <fmt:formatNumber value="${c.priceSale}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                        </c:forEach>  
                    </div>

                </div>

            </div>
        </div>
        <div class="pagination" style="font-size: 25px;display: flex;justify-content:right;margin-right: 420px ">
            <a href="#">&laquo;</a>
            <c:forEach begin="1" end="${endPage}" var="i">
                <c:if test="${requestScope.index == i}">
                    <a class="active" href="category?index=${i}">${i}</a>
                </c:if>
                <c:if test="${requestScope.index != i}">
                    <a href="category?${path}&index=${i}">${i}</a>
                </c:if>

            </c:forEach>
            <a href="#">&raquo;</a>
        </div>
        <%@include file="footer.jsp" %>


        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.slim.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.4.4/cjs/popper.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script>
            function submitForm() {
                document.getElementById("frm-sort").submit();
            }
        </script>
    </body>
</html>
