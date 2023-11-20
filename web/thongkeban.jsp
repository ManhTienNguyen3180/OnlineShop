<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="preconnect" href="https://fonts.gstatic.com"> 
        <link rel="canonical" href="https://demo-basic.adminkit.io/" />
        <title>Admin</title>
        <link href="css/app.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">

    </head>

    <body>
        <div class="wrapper">
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
                            <a class="sidebar-link" href="thongke">
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
                            <a class="sidebar-link" href="adminorder">
                                <i class="align-middle" data-feather="square"></i> <span class="align-middle">Quản lý đơn hàng</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link" href="admincategory">
                                <i class="align-middle" data-feather="square"></i> <span class="align-middle">Quản lý danh mục</span>
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
                <nav class="navbar navbar-expand navbar-light navbar-bg">
                    <a class="sidebar-toggle js-sidebar-toggle">
                        <i class="hamburger align-self-center"></i>
                    </a>

                    <div class="navbar-collapse collapse">
                        <ul class="navbar-nav navbar-align">
                            <li class="nav-item dropdown">
                                <a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
                                    <i class="align-middle" data-feather="settings"></i>
                                </a>

                                <a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
                                    <img src="${sessionScope.account.user_img}" class="avatar img-fluid rounded me-1"/> <span class="text-dark">${sessionScope.account.user_name}</span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <a class="dropdown-item" href="pages-profile.html"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
                                    <a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="pie-chart"></i> Analytics</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="index.html"><i class="align-middle me-1" data-feather="settings"></i> Settings & Privacy</a>
                                    <a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="help-circle"></i> Help Center</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="logout">Log out</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>

                <main class="content">
                    <div class="container-fluid p-0">

                        <h1 class="h3 mb-3"><strong>Thống kê</strong> sách đã bán</h1>

                        <div style="width: 15%">
                            <select  onchange="test()" id="year" class="form-select mb-3">                              
                                <option value="2023" selected="">2023</option>                                 
                                <option value="2022">2022</option>
                                <option value="2021">2021</option>
                            </select>
                        </div>


                        <div class="row">
                            <div class="col-xl-12 col-xxl-12 d-flex">
                                <div class="w-100">
                                    <div class="row" >
                                        <div style="display: flex;justify-content: space-between">
                                            <div class="card flex-fill w-75" style="margin-right: 10px">
                                                <div class="card-header">

                                                    <h5 class="card-title mb-0">Top 10 sách bán chạy</h5>
                                                </div>
                                                <div class="card-body py-3">
                                                    <div class="chart chart-sm">
                                                        <canvas id="chartjs-dashboard-line"></canvas>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="card">
                                                <div class="card-header">
                                                    <h5 class="card-title">Danh mục sách bán chạy</h5>

                                                </div>
                                                <div class="card-body">
                                                    <div class="chart chart-sm">
                                                        <canvas id="chartjs-pie"></canvas>
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
        </main>

    </div>
</div>

<script src="js/app.js"></script>

<script>
                                var xmlhttp = new XMLHttpRequest();
                                var myBarChart;

                                function test() {

                                    val = document.getElementById("year").value;
                                    var url = "http://localhost:9999/MyShop/thongkeban?year=" + val;
                                    xmlhttp.open("GET", url, true);
                                    xmlhttp.send();
                                    xmlhttp.onreadystatechange = function () {
                                        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                                            var data = JSON.parse(xmlhttp.responseText);

                                            id = data.map(function (elm) {
                                                return elm.product_id;
                                            });
                                            quantity = data.map(function (elm) {
                                                return elm.quantity;
                                            });

                                            var ctx = document.getElementById("chartjs-dashboard-line").getContext("2d");
                                            var gradient = ctx.createLinearGradient(0, 0, 0, 225);
                                            gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
                                            gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
                                            // Line chart
                                            myBarChart = new Chart(document.getElementById("chartjs-dashboard-line"), {
                                                type: "line",
                                                data: {
                                                    labels: id,
                                                    datasets: [{
                                                            label: "Quantity",
                                                            fill: true,
                                                            backgroundColor: gradient,
                                                            borderColor: window.theme.primary,
                                                            data: quantity
                                                        }]
                                                },
                                                options: {
                                                    maintainAspectRatio: false,
                                                    legend: {
                                                        display: true
                                                    },
                                                    tooltips: {
                                                        intersect: false
                                                    },

                                                    plugins: {
                                                        filler: {
                                                            propagate: true
                                                        }
                                                    }, scales: {
                                                        xAxes: [{
                                                                reverse: true
//                                                                gridLines: {
//                                                                    color: "rgba(0,0,0,0.0)"
//                                                                }
                                                            }],
                                                        yAxes: [{
                                                                ticks: {
                                                                    stepSize: 1
                                                                },
                                                                display: true,
                                                                borderDash: [3, 3]
//                                                                gridLines: {
//                                                                    color: "rgba(0,0,0,0.0)"
//                                                                }
                                                            }]
                                                    }

                                                }
                                                
                                            });
                                            
                                        }
                                        


                                    };
                                    myBarChart.destroy();
                                }


</script>






<script>
    var xmlhttp2 = new XMLHttpRequest();
    var url = "http://localhost:9999/MyShop/thongkeban";
    xmlhttp2.open("POST", url, true);
    xmlhttp2.send();
    xmlhttp2.onreadystatechange = function () {
        if (xmlhttp2.readyState == 4 && xmlhttp2.status == 200) {
            var data2 = JSON.parse(xmlhttp2.responseText);
            id2 = data2.map(function (elm) {
                return elm.ct.cname;
            });
            quantity2 = data2.map(function (elm) {
                return elm.quantity;
            });
            console.log(id2);
            new Chart(document.getElementById("chartjs-pie"), {
                type: "pie",
                data: {
                    labels: id2,
                    datasets: [{
                            data: quantity2,
                            backgroundColor: [
                                window.theme.primary,
                                window.theme.warning,
                                window.theme.danger,
                                "green",
                                "#dee2e6"
                            ],
                            borderColor: "transparent"
                        }]
                },
                options: {
                    maintainAspectRatio: false,
                    legend: {
                        display: true
                    }
                }
            });
        }
    };
</script>



</body>

</html>
