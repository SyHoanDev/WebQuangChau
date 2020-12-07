<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09/18/20
  Time: 4:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <title>Quang Châu || Trang chủ Admin</title>
    <link rel="shortcut icon" type="image/ico" href="admin/images/logoQC.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords"/>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="admin/css/bootstrap.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="admin/css/style.css" rel='stylesheet' type='text/css' />
    <!-- font CSS -->
    <link href="admin/css/cssDownload.css">
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="admin/css/font.css" type="text/css"/>
    <link href="admin/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <script src="admin/js/jquery2.0.3.min.js"></script>
    <script src="admin/js/modernizr.js"></script>
    <script src="admin/js/jquery.cookie.js"></script>
    <script src="admin/js/screenfull.js"></script>
    <script>
        $(function () {
            $('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

            if (!screenfull.enabled) {
                return false;
            }



            $('#toggle').click(function () {
                screenfull.toggle($('#container')[0]);
            });
        });
    </script>
    <!-- charts -->
    <script src="admin/js/raphael-min.js"></script>
    <script src="admin/js/morris.js"></script>
    <link rel="stylesheet" href="admin/css/morris.css">
    <!-- //charts -->
    <!--skycons-icons-->
    <script src="admin/js/skycons.js"></script>
    <!--//skycons-icons-->
</head>
<body class="dashboard-page">
<script>
    var theme = $.cookie('protonTheme') || 'default';
    $('body').removeClass (function (index, css) {
        return (css.match (/\btheme-\S+/g) || []).join(' ');
    });
    if (theme !== 'default') $('body').addClass(theme);
</script>

<jsp:include page="titleBar/menu.jsp"/>
<section class="wrapper scrollable">
    <nav class="user-menu">
        <a href="javascript:;" class="main-menu-access">
            <i class="icon-proton-logo"></i>
            <i class="icon-reorder"></i>
        </a>
    </nav>
    <jsp:include page="titleBar/title.jsp"/>

    <div class="agile-two-grids">
        <div class="col-md-6 count">
            <div class="count-grid">
                <h3 class="title">Countdown</h3>
                <ul id="example">
                    <li><span class="hours">00</span><p class="hours_text">Hours</p></li>
                    <li class="seperator">:</li>
                    <li><span class="minutes">00</span><p class="minutes_text">Minutes</p></li>
                    <li class="seperator">:</li>
                    <li><span class="seconds">00</span><p class="seconds_text">Seconds</p></li>
                </ul>
                <div class="clearfix"> </div>
                <script type="text/javascript" src="admin/js/jquery.countdown.min.js"></script>
                <script type="text/javascript">
                    $('#example').countdown({
                        date: '12/24/2020 18:59:59',
                        offset: -8,
                        day: 'Day',
                        days: 'Days'
                    }, function () {
                        alert('Done!');
                    });
                </script>
            </div>
        </div>
        <div class="col-md-6 weather">
            <div class="weather-right">
                <div class="weather-heading">
                    <h3>Weather Report</h3>
                </div>
                <ul>
                    <li>
                        <figure class="icons">
                            <canvas id="partly-cloudy-day" width="60" height="60"></canvas>
                        </figure>
                        <h3>25 °C</h3>
                        <div class="clearfix"></div>
                    </li>
                    <li>
                        <figure class="icons">
                            <canvas id="clear-day" width="40" height="40"></canvas>
                        </figure>
                        <div class="weather-text">
                            <h4>WED</h4>
                            <h5>27 °C</h5>
                        </div>
                        <div class="clearfix"></div>
                    </li>
                    <li>
                        <figure class="icons">
                            <canvas id="snow" width="40" height="40"></canvas>
                        </figure>
                        <div class="weather-text">
                            <h4>THR</h4>
                            <h5>13 °C</h5>
                        </div>
                        <div class="clearfix"></div>
                    </li>
                    <li>
                        <figure class="icons">
                            <canvas id="partly-cloudy-night" width="40" height="40"></canvas>
                        </figure>
                        <div class="weather-text">
                            <h4>FRI</h4>
                            <h5>18 °C</h5>
                        </div>
                        <div class="clearfix"></div>
                    </li>
                    <li>
                        <figure class="icons">
                            <canvas id="cloudy" width="40" height="40"></canvas>
                        </figure>
                        <div class="weather-text">
                            <h4>SAT</h4>
                            <h5>15 °C</h5>
                        </div>
                        <div class="clearfix"></div>
                    </li>
                    <li>
                        <figure class="icons">
                            <canvas id="fog" width="40" height="40"></canvas>
                        </figure>
                        <div class="weather-text">
                            <h4>SUN</h4>
                            <h5>11 °C</h5>
                        </div>
                        <div class="clearfix"></div>
                    </li>
                </ul>
                <script>
                    var icons = new Skycons({"color": "#fcb216"}),
                        list  = [
                            "partly-cloudy-day"
                        ],
                        i;

                    for(i = list.length; i--; )
                        icons.set(list[i], list[i]);
                    icons.play();
                </script>
                <script>
                    var icons = new Skycons({"color": "#000"}),
                        list  = [
                            "clear-night","partly-cloudy-night", "cloudy", "clear-day", "sleet", "snow", "wind","fog"
                        ],
                        i;

                    for(i = list.length; i--; )
                        icons.set(list[i], list[i]);
                    icons.play();
                </script>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
    </div>
    <!-- footer -->
    <jsp:include page="titleBar/footer.jsp"/>
<%--    <jsp:include page="footer/footerWeb.jsp"/>--%>
    <!-- //footer -->
</section>
<script src="admin/js/bootstrap.js"></script>
<script src="admin/js/proton.js"></script>
</body>
</html>
