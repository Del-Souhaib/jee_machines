<!DOCTYPE html>
<html lang="en">
<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Dashboard</title>
    <!-- site icon -->
    <%--      <link rel="icon" href="<%=request.getContextPath()%>/images/fevicon.png" type="image/png" />--%>
    <!-- bootstrap css -->
    <%--    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/WEB-INF/assets/css/bootstrap.min.css"/>--%>
    <%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">--%>
    <!-- site css -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/datejs/1.0/date.min.js"
            integrity="sha512-/n/dTQBO8lHzqqgAQvy0ukBQ0qLmGzxKhn8xKrz4cn7XJkZzy+fAtzjnOQd5w55h4k1kUC+8oIe6WmrGUYwODA=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>

        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/style.css"/>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/responsive.css"/>
<%--    &lt;%&ndash;    &lt;%&ndash;      <!-- color css -->&ndash;%&gt;&ndash;%&gt;--%>
<%--        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/colors.css"/>--%>
    <%--    &lt;%&ndash;      <!-- select bootstrap -->&ndash;%&gt;--%>
    <%--    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap-select.css"/>--%>
    <%--    &lt;%&ndash;      <!-- scrollbar css -->&ndash;%&gt;--%>
    <%--    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/perfect-scrollbar.css"/>--%>
    <%--    &lt;%&ndash;      <!-- custom css -->&ndash;%&gt;--%>
<%--        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/custom.css"/>--%>
    <%--    &lt;%&ndash;      <!--[if lt IE 9]>-->&ndash;%&gt;--%>
    <%--    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>--%>
    <%--    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>--%>
    <%--      <![endif]-->--%>
</head>
<body class="dashboard dashboard_1">
<div class="full_container">
    <div class="inner_container">
        <!-- Sidebar  -->
        <%@include file="views/parts/sidenav.jsp" %>
        <!-- end sidebar -->
        <!-- right content -->
        <div id="content">
            <!-- topbar -->
            <%@include file="views/parts/header.jsp" %>
            <!-- end topbar -->
            <!-- dashboard inner -->
            <div class="midde_cont">
                <div class="container-fluid">
                    <div class="row column_title">
                        <div class="col-md-12">
                            <div class="page_title">
                                <h2>Dashboard</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row column1">
                        <div class="col-md-6 col-lg-3">
                            <div class="full counter_section margin_bottom_30">
                                <div class="couter_icon">
                                    <div>
                                        <i class="fa fa-user yellow_color"></i>
                                    </div>
                                </div>
                                <div class="counter_no">
                                    <div>
                                        <p class="total_no" id="user_count">2500</p>
                                        <p class="head_couter">Users</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="full counter_section margin_bottom_30">
                                <div class="couter_icon">
                                    <div>
                                        <i class="fa fa-building blue1_color"></i>
                                    </div>
                                </div>
                                <div class="counter_no">
                                    <div>
                                        <p class="total_no" id="salle_count">123.50</p>
                                        <p class="head_couter">Salles</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="full counter_section margin_bottom_30">
                                <div class="couter_icon">
                                    <div>
                                        <i class="fa fa-desktop green_color"></i>
                                    </div>
                                </div>
                                <div class="counter_no">
                                    <div>
                                        <p class="total_no" id="machine_count">1,805</p>
                                        <p class="head_couter">Machines</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="full counter_section margin_bottom_30">
                                <div class="couter_icon">
                                    <div>
                                        <i class="fa fa-comments-o red_color"></i>
                                    </div>
                                </div>
                                <div class="counter_no">
                                    <div>
                                        <p class="total_no" id="salle_machine_count">54</p>
                                        <p class="head_couter">Salle/machine</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- graph -->
                    <div class="row column2 graph margin_bottom_30">
                        <div class="col-md-l2 col-lg-12">
                            <div class="white_shd full">
                                <div class="full graph_head">
                                    <div class="heading1 margin_0">
                                        <h2>Nb machines of salle Chart 1</h2>
                                    </div>
                                </div>
                                <div class="full graph_revenue">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="content">
                                                <div class="area_chart">
                                                    <canvas height="120" id="salle_per_machines_chart"></canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end graph -->
                    <div class="row column2 graph margin_bottom_30">
                        <div class="col-md-l2 col-lg-12">
                            <div class="white_shd full">
                                <div class="full graph_head">
                                    <div class="heading1 margin_0">
                                        <h2>Nb machines of salle Chart 2</h2>
                                    </div>
                                </div>
                                <div class="full graph_revenue">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="content">
                                                <div class="area_chart text-center" style="position:relative !important;width: 80vh!important">
                                                    <canvas  id="salle_per_machines_chart2"> </canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- footer -->
                <%@include file="views/parts/footer.jsp" %>
            </div>
            <!-- end dashboard inner -->
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {


        load();
        load2();

        function load() {
            $.ajax({
                url: "<%=request.getContextPath()%>/?op=chart1",
                data: {},
                type: 'POST',
                success: function (data) {
                    console.log(data)
                    let labels=[];
                    let datavalue=[]
                    for (let i = 0; i < data.length; i++) {
                        labels.push(data[i].name)
                        datavalue.push(data[i].nb)
                    }
                    const data02 = {
                        labels: labels,
                        datasets: [{
                            label: 'nb Machines of salle',
                            data: datavalue,
                            backgroundColor: [
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(255, 159, 64, 0.2)',
                                'rgba(255, 205, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(201, 203, 207, 0.2)',
                                'rgb(232,152,152,0.2)',
                                'rgb(158,224,121,0.2)'

                            ],
                            borderColor: [
                                'rgb(255, 99, 132)',
                                'rgb(255, 159, 64)',
                                'rgb(255, 205, 86)',
                                'rgb(75, 192, 192)',
                                'rgb(54, 162, 235)',
                                'rgb(153, 102, 255)',
                                'rgb(201, 203, 207)',
                                'rgb(232,152,152)',
                                'rgb(158,224,121)'

                            ],
                            borderWidth: 1
                        }]
                    };
                    const config = {
                        type: 'bar',
                        data: data02,
                        options: {}
                    };
                    const myChart = new Chart(
                        document.getElementById('salle_per_machines_chart'),
                        config
                    );

                    const config2 = {
                        type: 'pie',
                        data: data02,
                        options: {}
                    };
                    const myChart2 = new Chart(
                        document.getElementById('salle_per_machines_chart2'),
                        config2
                    );
                },
                error: function (e) {
                    console.log(e.responseText);
                }
            });
        }

        function load2() {
            $.ajax({
                url: "<%=request.getContextPath()%>/?op=getdata",
                data: {},
                type: 'POST',
                success: function (data) {
                    console.log(data)
                    $('#user_count').text(data['nb_user'])
                    $('#salle_count').text(data['nb_salle'])
                    $('#machine_count').text(data['nb_machine'])
                    $('#salle_machine_count').text(data['nb_user'])

                },
                error: function (e) {
                    console.log(e.responseText);
                }
            });
        }

    })
</script>

<!-- jQuery -->
<!-- wow animation -->
<%--<script src="<%=request.getContextPath()%>/assets/js/animate.js"></script>--%>
<%--<!-- select country -->--%>
<%--<script src="<%=request.getContextPath()%>/assets/js/bootstrap-select.js"></script>--%>
<%--<!-- owl carousel -->--%>
<%--<script src="<%=request.getContextPath()%>/assets/js/owl.carousel.js"></script>--%>
<%--<!-- chart js -->--%>
<%--<script src="<%=request.getContextPath()%>/assets/js/Chart.min.js"></script>--%>
<%--<script src="<%=request.getContextPath()%>/assets/js/Chart.bundle.min.js"></script>--%>
<%--<script src="<%=request.getContextPath()%>/assets/js/utils.js"></script>--%>
<%--<script src="<%=request.getContextPath()%>/assets/js/analyser.js"></script>--%>
<%--<!-- nice scrollbar -->--%>
<%--<script src="<%=request.getContextPath()%>/assets/js/perfect-scrollbar.min.js"></script>--%>
<%--<script>--%>
<%--    var ps = new PerfectScrollbar('#sidebar');--%>
<%--</script>--%>
<%--<!-- custom js -->--%>
<%--<script src="<%=request.getContextPath()%>/assets/js/chart_custom_style1.js"></script>--%>
<%--<script src="<%=request.getContextPath()%>/assets/js/custom.js"></script>--%>
</body>
</html>