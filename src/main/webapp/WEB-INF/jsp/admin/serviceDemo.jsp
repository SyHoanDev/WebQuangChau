<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>--%>
<!doctype html>
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
    <!--====== USEFULL META ======-->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description"/>
    <meta name="keywords"/>

    <!--====== TITLE TAG ======-->
    <title>Quang Châu || Bài đăng dự kiến</title>

    <!--====== FAVICON ICON =======-->
    <link rel="shortcut icon" type="image/ico" href="/web/img/logoQC.png" />

    <link rel="stylesheet" href="/web/css/normalize.css">
    <link rel="stylesheet" href="/web/css/animate.css">
    <link rel="stylesheet" href="/web/css/stellarnav.min.css">
    <link rel="stylesheet" href="/web/css/owl.carousel.css">
    <link href="/web/css/bootstrap.min.css" rel="stylesheet">
    <link href="/web/css/font-awesome.min.css" rel="stylesheet">

    <!--====== MAIN STYLESHEETS ======-->
    <link href="/web/css/style.css" rel="stylesheet">
    <link href="/web/css/responsive.css" rel="stylesheet">

    <script src="/web/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body class="single-page">

<!--- PRELOADER -->
<div class="preeloader">
    <div class="preloader-spinner"></div>
</div>

<!--SCROLL TO TOP-->
<a href="#home" class="scrolltotop"><i class="fa fa-long-arrow-up"></i></a>

<!--START TOP AREA-->
<%--<jsp:include page="webapp/WEB-INF/jsp/header/header-service.jsp"/>--%>
<!--END TOP AREA-->

<!--SERVICE AREA-->
<section class="service-area-two section-padding gray-bg">
    <h2 align="center">${serviceDemo.name}</h2>
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-lg-9 col-sm-12 col-xs-12 pull-right">
                <div class="service-details-content">
                    <div class="service-image">
                        <img src="/getImage/${serviceDemo.avatar}" alt="">
                    </div>
                    <div class="service-details-text">
                        <p>${serviceDemo.description}</p>
                        <c:forEach var="content" items="${serviceDemo.listServiceContent}">
                            <b>${content.title}</b>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${content.content}</p>
                            <c:forEach var="image" items="${content.listImage}">
                                <div class="service-image">
                                    <img src="/getImage/${image.url}" alt="">
                                </div>
                            </c:forEach>
                        </c:forEach>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
                            <div class="faqs-left-img">
                                <img src="/web/img/about/about-details.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
                            <div class="faqs-list">
                                <h3>Tại sao nen chọn dịch vụ ${serviceDemo.name} ?</h3>
                                <div class="panel-group" id="accordion">
                                    <c:forEach var="reason" items="${serviceDemo.listReasonChooseService}">
                                        <div class="panel">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#faqs"><i class="fa fa-minus"></i> ${reason.reason} ?</a>
                                                </h4>
                                            </div>
                                            <div id="faqs" class="panel-collapse collapse">
                                                <div class="panel-body">${reason.description}</div>
                                            </div>
                                        </div>
                                        <%--                                            <div class="panel active">--%>
                                        <%--                                            <div class="panel-heading">--%>
                                        <%--                                                <h4 class="panel-title">--%>
                                        <%--                                                    <a data-toggle="collapse" data-parent="#accordion" href="#faqs_one"><i class="fa fa-minus"></i> ${reason.reason} ?</a>--%>
                                        <%--                                                </h4>--%>
                                        <%--                                            </div>--%>
                                        <%--                                            <div id="faqs_one" class="panel-collapse collapse">--%>
                                        <%--                                                <div class="panel-body">${reason.description}</div>--%>
                                        <%--                                            </div>--%>
                                        <%--                                        </div>--%>
                                    </c:forEach>
                                    <%--                                        <div class="panel">--%>
                                    <%--                                            <div class="panel-heading">--%>
                                    <%--                                                <h4 class="panel-title">--%>
                                    <%--                                                    <a data-toggle="collapse" data-parent="#accordion" href="#faqs_two"><i class="fa fa-minus"></i> Lorem Ipsum is simply dummy text ?</a>--%>
                                    <%--                                                </h4>--%>
                                    <%--                                            </div>--%>
                                    <%--                                            <div id="faqs_two" class="panel-collapse collapse">--%>
                                    <%--                                                <div class="panel-body">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est.</div>--%>
                                    <%--                                            </div>--%>
                                    <%--                                        </div>--%>
                                    <%--                                        <div class="panel">--%>
                                    <%--                                            <div class="panel-heading">--%>
                                    <%--                                                <h4 class="panel-title">--%>
                                    <%--                                                    <a data-toggle="collapse" data-parent="#accordion" href="#faqs_three"><i class="fa fa-minus"></i> Lorem Ipsum is simply dummy text ?</a>--%>
                                    <%--                                                </h4>--%>
                                    <%--                                            </div>--%>
                                    <%--                                            <div id="faqs_three" class="panel-collapse collapse">--%>
                                    <%--                                                <div class="panel-body">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est.</div>--%>
                                    <%--                                            </div>--%>
                                    <%--                                        </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br/>
                    <hr style="color: #1e252f">
                    <div class="row">
                        <h3>Thông tin liên hệ</h3>
                        <h4>Chi nhánh Đà Nẵng</h4>
                        <p><b>Địa chỉ : </b>60 Lý thiên bảo,Hòa Châu, Hòa Vang, TP.Đà nẵng</p>
                        <p><b>Địa chỉ kho bãi: </b> 485 Phạm hùng, Hòa Xuân, Hòa Vang, TP.Đà nẵng</p>
                        <p><b>Hotline : </b> 0918 353 658 / 0905 027 888</p>
                        <h4>Chi nhánh Hà Nội</h4>
                        <h4>Chi nhánh Hồ Chí Minh</h4>
                    </div>

                </div>
            </div>
            <div class="col-md-3 col-lg-3 col-sm-12 col-xs-12 pull-left">
                <div class="service-menu">
                    <h4>Danh mục dịch vụ</h4>
                    <ul>
                        <c:forEach var="service" items="${serviceList}">
                            <li><a href="#">${service.name} <i class="fa fa-angle-right"></i></a></li>
                        </c:forEach>
                        <%--                            <li><a href="#">Sea Freight <i class="fa fa-angle-right"></i></a></li>--%>
                        <%--                            <li><a href="#">Air Freight <i class="fa fa-angle-right"></i></a></li>--%>
                        <%--                            <li><a href="#">Plane Freight <i class="fa fa-angle-right"></i></a></li>--%>
                        <%--                            <li><a href="#">Rail Freight <i class="fa fa-angle-right"></i></a></li>--%>
                        <%--                            <li><a href="#">Warehouse Freight <i class="fa fa-angle-right"></i></a></li>--%>
                        <%--                            <li><a href="#">Consulting Service <i class="fa fa-angle-right"></i></a></li>--%>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <br/>
    <div style="width: 50%;font-size: 20px;margin: auto">
        <a href="/admin/insertContent/${serviceDemo.id}"><input type="button" value="Thêm nội dung" style= "width: 30%;color: #449d44;border-radius: 10px"></a>
        <a href="#"><input type="button" value="Thêm lý do" style= "width: 30%;color: #449d44;border-radius: 10px;margin-left: 4%"></a>
        <a href="#"><input type="button" value="Chỉnh sửa dịch vụ" style= "width: 30%;color: #449d44;border-radius: 10px;margin-left: 4%"></a>
    </div>
</section>

<!--SERVICE AREA END-->

<!--FOOER AREA-->

<div class="footer-area dark-bg">
    <div class="footer-area-bg"></div>

    <div class="footer-top-area wow fadeIn">
<%--        <jsp:include page="webapp/WEB-INF/jsp/footer/footerWeb.jsp"/>--%>
    </div>
</div>

<!--FOOER AREA END-->


<!--====== SCRIPTS JS ======-->
<script src="/web/js/vendor/jquery-1.12.4.min.js"></script>
<script src="/web/js/vendor/bootstrap.min.js"></script>

<!--====== PLUGINS JS ======-->
<script src="/web/js/vendor/jquery.easing.1.3.js"></script>
<script src="/web/js/vendor/jquery-migrate-1.2.1.min.js"></script>
<script src="/web/js/vendor/jquery.appear.js"></script>
<script src="/web/js/owl.carousel.min.js"></script>
<script src="/web/js/stellar.js"></script>
<script src="/web/js/wow.min.js"></script>
<script src="/web/js/stellarnav.min.js"></script>
<script src="/web/js/contact-form.js"></script>
<script src="/web/js/jquery.sticky.js"></script>

<!--===== ACTIVE JS=====-->
<script src="/web/js/main.js"></script>
</body>

</html>
