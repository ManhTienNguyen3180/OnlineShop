<%-- 
    Document   : checkout
    Created on : May 31, 2023, 9:41:17 AM
    Author     : Nguyen Manh Tien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Checkout Form</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <style>
            .shop{
                font-size: 10px;
            }

            .space{
                letter-spacing: 0.8px !important;
            }

            .second a:hover {
                color: rgb(92, 92, 92) ;
            }

            .active-2 {
                color: rgb(92, 92, 92)
            }


            .breadcrumb>li+li:before {
                content: "" !important
            }

            .breadcrumb {
                padding: 0px;
                font-size: 10px;
                color: #aaa !important;
            }

            .first {
                background-color: white ;
            }

            a {
                text-decoration: none !important;
                color: #aaa ;
            }

            .btn-lg,.form-control-sm:focus,
            .form-control-sm:active,
            a:focus,a:active {
                outline: none !important;
                box-shadow: none !important
            }

            .form-control-sm:focus{
                border:1.5px solid #4bb8a9 ;
            }

            .btn-group-lg>.btn, .btn-lg {
                padding: .5rem 0.1rem;
                font-size: 1rem;
                border-radius: 0;
                color: white !important;
                background-color: #4bb8a9;
                height: 2.8rem !important;
                border-radius: 0.2rem !important;
            }

            .btn-group-lg>.btn:hover, .btn-lg:hover {
                background-color: #26A69A;
            }

            .btn-outline-primary{
                background-color: #fff !important;
                color:#4bb8a9 !important;
                border-radius: 0.2rem !important;
                border:1px solid #4bb8a9;
            }

            .btn-outline-primary:hover{
                background-color:#4bb8a9  !important;
                color:#fff !important;
                border:1px solid #4bb8a9;
            }

            .card-2{
                margin-top: 40px !important;
            }

            .card-header{
                background-color: #fff;
                border-bottom:0px solid #aaaa !important;
            }

            p{
                font-size: 13px ;
            }

            .small{
                font-size: 9px !important;
            }

            .form-control-sm {
                height: calc(2.2em + .5rem + 2px);
                font-size: .875rem;
                line-height: 1.5;
                border-radius: 0;
            }

            .cursor-pointer{
                cursor: pointer;
            }

            .boxed {
                padding: 0px 8px 0 8px ;
                background-color: #4bb8a9;
                color: white;
            }

            .boxed-1{
                padding: 0px 8px 0 8px ;
                color: black !important;
                border: 1px solid #aaaa;
            }

            .bell{
                opacity: 0.5;
                cursor: pointer;
            }

            @media (max-width: 767px) {
                .breadcrumb-item+.breadcrumb-item {
                    padding-left: 0
                }
            }
        </style>
    </head>
    <body>
        
        <div class=" container-fluid my-5 ">
            <div class="row justify-content-center ">
                <div class="col-xl-10">
                    <div class="card shadow-lg ">
                        <div class="row p-2 mt-3 justify-content-between mx-sm-2">

                        </div>
                        <div class="row  mx-auto justify-content-center text-center">
                            <div class="col-12 mt-3 ">
                                <nav aria-label="breadcrumb" class="second ">
                                    <ol class="breadcrumb indigo lighten-6 first  ">
                                        <li class="breadcrumb-item font-weight-bold "><a class="black-text text-uppercase " href="home"><span class="mr-md-3 mr-1">BACK TO SHOP</span></a><i class="fa fa-angle-double-right " aria-hidden="true"></i></li>
                                        <li class="breadcrumb-item font-weight-bold"><a class="black-text text-uppercase" href="show"><span class="mr-md-3 mr-1">SHOPPING BAG</span></a><i class="fa fa-angle-double-right text-uppercase " aria-hidden="true"></i></li>
                                        <li class="breadcrumb-item font-weight-bold"><a class="black-text text-uppercase active-2" href="#"><span class="mr-md-3 mr-1">CHECKOUT</span></a></li>
                                    </ol>
                                </nav>
                            </div>
                        </div>

                        <div class="row justify-content-around" >
                            <div class="col-md-5">
                                <div class="card border-0">
                                    <div class="card-header pb-0">
                                        <h2 class="card-title space ">Checkout</h2>

                                        <hr class="my-0">
                                    </div>
                                    <div class="card-body">
                                        <div class="row mt-4">
                                            <div class="col"><p class="text-muted mb-2">PAYMENT DETAILS</p><hr class="mt-0"></div>
                                        </div>
                                        <form action="checkout" method="post">
                                        <div class="form-group">
                                            <label for="NAME" >Họ và tên</label>
                                            <input type="text" class="form-control form-control-sm" name="name" id="NAME" aria-describedby="helpId" >
                                        </div>
                                        <div class="form-group">
                                            <label for="NAME" >Địa chỉ</label>
                                            <input type="text" class="form-control form-control-sm" name="diachi" id="NAME" aria-describedby="helpId" >
                                        </div>
                                        <div class="form-group">
                                            <label for="NAME" >Số điện thoại</label>
                                            <input type="text" class="form-control form-control-sm" name="SDT" id="NAME" aria-describedby="helpId" >
                                        </div>
                                        
                                        <h4 class="mb-4">Payment</h4>

                                        <div class="form-check">
                                            <input type="radio"  value="vnpay" id="credit" name="payment-method" required=""> <span>Thanh toán online qua </span>
                                            <img src="images/img/icon-payment-vnpay.png" style="width: 70px"/>
                                        </div>

                                        

                                        <div class="form-check">
                                            <input type="radio" id="paypal" value="cod" name="payment-method"  required> <span>Thanh toán khi nhận hàng</span>
                                            <img src="images/img/icon-giao-hang-toan-quoc1-400x4001-1.jpg" style="width: 50px"/>
                                        </div>

                                        <hr class="mb-4">
                                        <div class="row mb-md-5">
                                            <div class="col">
                                                <button type="submit" class="btn  btn-lg btn-block " style="background-color: red">Đặt hàng</button>
                                            </div>
                                        </div>    
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5" >
                                <div class="card border-0 ">
                                    <div class="card-header card-2">
                                        <p class="card-text text-muted mt-md-4  mb-2 space">YOUR ORDER </p>
                                        <hr class="my-2">
                                    </div>
                                    <div class="card-body pt-0">
                                        <c:set var="o" value="${sessionScope.listorder}"/>
                                        <c:forEach items="${sessionScope.listorder.items}" var="c">
                                        <div class="row  justify-content-between">
                                            <div class="col-auto col-md-7">
                                                <div class="media flex-column flex-sm-row">
                                                    <img class=" img-fluid" src="${c.getProduct().product_img}" width="62" height="62">
                                                    <div class="media-body  my-auto">
                                                        <div class="row ">
                                                            <div class="col-auto"><p class="mb-2" style="margin-left: 10px"><b>${c.getProduct().product_name}</b></p></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class=" pl-0 flex-sm-col col-auto  my-auto"> <p class="boxed-1">${c.quantity}</p></div>
                                            <div class=" pl-0 flex-sm-col col-auto  my-auto "><p><b><fmt:formatNumber value="${c.getProduct().priceSale}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ</b></p></div>
                                        </div>
                                        <hr class="my-2">
                                        </c:forEach>
                                        
                                        
                                        <div class="row ">
                                            <div class="col">
                                                <div class="row justify-content-between">
                                                    <div class="col-4"><p class="mb-1"><b>Subtotal</b></p></div>
                                                    <div class="flex-sm-col col-auto"><p class="mb-1"><b><fmt:formatNumber value="${o.getTotalMoney()}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ</b></p></div>
                                                </div>
                                                <div class="row justify-content-between">
                                                    <div class="col"><p class="mb-1"><b>Shipping</b></p></div>
                                                    <div class="flex-sm-col col-auto"><p class="mb-1"><b>0đ</b></p></div>
                                                </div>
                                                <div class="row justify-content-between">
                                                    <div class="col-4"><p ><b>Total</b></p></div>
                                                    <div class="flex-sm-col col-auto"><p  class="mb-1"><b><fmt:formatNumber value="${o.getTotalMoney()}" type="currency" currencySymbol="" minFractionDigits="0"></fmt:formatNumber>đ</b></p> </div>
                                                </div><hr class="my-0">
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </body>
</html>

