<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=1">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="css/app.css" rel="stylesheet">
    <style>
        *,*:after,*:before{
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            -ms-box-sizing: border-box;
            box-sizing: border-box;
        }
        body{
            font-family: arial;
            font-size: 200px;
            margin: 0;
            background: #6ebce2;
            color: #000;

            display: flex;
            align-items: center;
            justify-content: center;
            
        }

        input,select{
            background-color: #fff !important;
        }
        .container{
            
            width: 100%;
        }
        table thead tr td,
        table thead tr th,
        table tfoot tr td,
        table tfoot tr th{
            background-color: #000;
            color: #fff;
        }
        #example_filter{
            margin-bottom: 20px;
        }



    </style>
</head>
<body>

    <div class="container wrapper">
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
                        <a class="sidebar-link" href="admin.jsp">
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
            <table id="example" class="display" style="width:100%">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Office</th>
                        <th>Extn.</th>
                        <th>Start date</th>
                        <th>Salary</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Office</th>
                        <th>Extn.</th>
                        <th>Start date</th>
                        <th>Salary</th>
                    </tr>
                </tfoot>
            </table>
        </div>    
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
        var xmlhttp = new XMLHttpRequest();
        var url = "http://localhost:9999/MyShop/adminproduct";
        xmlhttp.open("POST", url, true);
        xmlhttp.send();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = JSON.parse(this.responseText);
//                console.log(data);

                $('#example').DataTable({
                    //"ajax": "data/objects.txt",
                    data: data,
                    columns: [
                        {data: "product_id"},
                        {data: "product_name"},
                        {data: "product_author"},
                        {data: "product_nxb"},
                        {data: "product_sotrang"},
                        {data: "priceSale"}
                    ]
                });

            }
        };
//this is  jsonData.json
//{
//   "data": [
//     {
//       "id": "1",
//       "name": "Tiger Nixon",
//       "position": "System Architect",
//       "salary": "$320,800",
//       "start_date": "2011/04/25",
//       "office": "Edinburgh",
//       "extn": "5421"
//     }
//   ]
// }
    </script>
</body>
</html>
