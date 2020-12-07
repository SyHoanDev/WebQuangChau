<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09/16/20
  Time: 10:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>--%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
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
    <title>Quang Châu || Trang chủ</title>

    <!--====== FAVICON ICON =======-->
    <link rel="shortcut icon" type="image/ico" href="/web/img/logoQC.png" />

    <!--====== STYLESHEETS ======-->
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

<body class="home-one">

<div class="preeloader">
    <div class="preloader-spinner"></div>
</div>

<!--SCROLL TO TOP-->
<a href="#home" class="scrolltotop"><i class="fa fa-long-arrow-up"></i></a>
<jsp:include page="header/headerWeb.jsp"/>
<!--START TOP AREA-->

<!--END TOP AREA-->

<!--BLOG AREA-->
<section class="blog-area gray-bg padding-top">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                <div class="single-blog wow fadeInUp" data-wow-delay="0.2s">
                    <div class="blog-image">
                        <img src="/web/img/blog/blog_1.jpg" alt="">
                    </div>
                    <div class="blog-details text-center">
                        <div class="blog-meta"><a href="#"><i class="fa fa-ship"></i></a></div>
                        <h3><a href="single-blog.html">VẬN TẢI BIỂN</a></h3>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout..</p>
                        <a href="single-blog.html" class="read-more">Xem thêm</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                <div class="single-blog wow fadeInUp" data-wow-delay="0.3s">
                    <div class="blog-image">
                        <img src="/web/img/blog/blog_2.jpg" alt="">
                    </div>
                    <div class="blog-details text-center">
                        <div class="blog-meta"><a href="#"><i class="fa fa-plane"></i></a></div>
                        <h3><a href="single-blog.html">VẬN TẢI HÀNG KHÔNG</a></h3>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout..</p>
                        <a href="single-blog.html" class="read-more">Xem thêm</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12">
                <div class="single-blog wow fadeInUp" data-wow-delay="0.4s">
                    <div class="blog-image">
                        <img src="/web/img/blog/blog_3.jpg" alt="">
                    </div>
                    <div class="blog-details text-center">
                        <div class="blog-meta"><a href="#"><i class="fa fa-truck"></i></a></div>
                        <h3><a href="single-blog.html">VẬN TẢI ĐƯỜNG BỘ</a></h3>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout..</p>
                        <a href="single-blog.html" class="read-more">Xem thêm</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--BLOG AREA END-->

<!--ABOUT AREA-->
<section class="about-area gray-bg section-padding" id="baogia" >
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12">
                <div class="quote-form-area wow fadeIn">
                    <h3 align="center">NHẬN BÁO GIÁ</h3>
                    <h5 align="center">Chúng tôi sẽ liên hệ và gửi báo giá qua Email của bạn</h5>
                    <form class="quote-form" action="#">
                        <p class="width-full">
                            <input type="text" name="name" id="name" placeholder="Họ tên">
                        </p>
                        <p class="width-full">
                            <input type="email" name="email" id="email" placeholder="Email">
                        </p>
                        <p class="width-half">
                            <input type="phone" name="phone" id="phone" placeholder="Số điện thoại">
                            <input class="pull-right" type="text" name="type" id="type" placeholder="Loại dịch vụ">

                        </p>
                        <p class="width-half">
                            <input type="text" name="weight" id="weight" placeholder="Weight">
                            <input class="pull-right" type="number" name="quantity" id="quantity" placeholder="Số lượng">
                        </p>
                        <p class="width-full">
                            <input type="text" name="sendingplace" id="sendingplace" placeholder="Nơi gửi">
                        </p>
                        <p class="width-full">
                            <input type="text" name="destination" id="destination" placeholder="Nơi đến">
                        </p>
                        <p>
                            <textarea name="quote-message" id="quote-message" cols="30" rows="4" placeholder="Mô tả hàng hóa và yêu cầu..."></textarea>
                        </p>
                        <button type="submit" style="margin-left: 125px">Gửi</button>
                    </form>
                </div>
            </div>
            <div class="col-md-7 col-lg-7 col-md-offset-1 col-lg-offset-1 col-sm-12 col-xs-12">
                <div class="about-content-area wow fadeIn">
                    <div class="about-content">
                        <h2 style="font-size: 34px;text-align: center">Chúng tôi đã có 10 năm kinh nghiệm trong lĩnh vực kinh doanh dịch vụ vận tải hàng hóa</h2>
                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,</p>
                        <a href="#">read more <i class="fa fa-angle-right"></i></a>
                    </div>
                    <br/>
                    <br/>
                    <div class="searchOrder">
                        <h2 style="text-align: center">Tra cứu đơn hàng</h2>
                        <input type="text" placeholder="Nhập số vận đơn"/>
                        <input type="button" value="Tra cứu đơn hàng">
                    </div>
<%--                    <div class="about-count">--%>
<%--                        <div class="single-about-count">--%>
<%--                            <h4><i class="fa fa-suitcase"></i> 120</h4>--%>
<%--                            <p>Project Done</p>--%>
<%--                        </div>--%>
<%--                        <div class="single-about-count">--%>
<%--                            <h4><i class="fa fa-thumbs-o-up"></i> 100</h4>--%>
<%--                            <p>Project Done</p>--%>
<%--                        </div>--%>
<%--                        <div class="single-about-count">--%>
<%--                            <h4><i class="fa fa-users"></i> 30</h4>--%>
<%--                            <p>Project Done</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</section>
<!--ABOUT AREA END-->

<!--SERVICE AREA-->
<section class="service-area" id="dichvu">
    <div class="service-top-area padding-top">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-6 col-md-offset-3 col-lg-offset-3 col-sm-12 col-xs-12">
                    <div class="area-title text-center wow fadeIn">
                        <h2>Dịch vụ của chúng tôi</h2>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12">
                    <div class="service-content wow fadeIn">
                        <h2>we offer quick & powerful logistics solution</h2>
                        <p>I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you.</p>
                        <a href="service.html" class="read-more">Xem thêm</a>
                    </div>
                </div>
                <div class="col-md-8 col-lg-8 col-sm-12 col-xs-12">
                    <div class="service-catalouge-content-area wow fadeIn">
                        <div class="service-catalouge-bg"></div>
                        <div class="row">
                            <div class="col-md-7 col-lg-7 col-md-offset-5 col-lg-offset-5 col-sm-12 col-xs-12">
                                <div class="catalouge-content">
                                    <h3>Tại sao nên chọn chúng tôi</h3>
                                    <p>I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you.</p>
                                    <ul>
                                        <li><i class="fa fa-check"></i> Lorem ipsum dolor sit amet, consectetur.</li>
                                        <li><i class="fa fa-check"></i> Sed quia consequuntur magni dolores eos.</li>
                                        <li><i class="fa fa-check"></i> Nemo enim ipsam voluptatem .</li>
                                        <li><i class="fa fa-check"></i> We denounce with righteous indignation.</li>
                                    </ul>
                                    <a href="service.html" class="read-more">Xem thêm</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="service-bottom-area section-padding">
        <div class="service-bottom-area-bg"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-6 col-md-offset-6 col-lg-offset-6 col-sm-12 col-xs-12">
                    <div class="service-list wow fadeIn">
                        <div class="single-service">
                            <div class="service-icon-hexagon">
                                <div class="hex">
                                    <div class="service-icon">
                                        <i class="fa fa-dropbox"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="service-details">
                                <h4>Kho bãi</h4>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                                <a href="#">read more</a>
                            </div>
                        </div>
                        <div class="single-service">
                            <div class="service-icon-hexagon">
                                <div class="hex">
                                    <div class="service-icon"><i class="fa fa-truck"></i></div>
                                </div>
                            </div>
                            <div class="service-details">
                                <h4>Vận tải đường bộ</h4>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                                <a href="#">read more</a>
                            </div>
                        </div>
                        <div class="single-service">
                            <div class="service-icon-hexagon">
                                <div class="hex">
                                    <div class="service-icon"><i class="fa fa-ship"></i></div>
                                </div>
                            </div>
                            <div class="service-details">
                                <h4>Vận tải đường biển</h4>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                                <a href="#">read more</a>
                            </div>
                        </div>
                        <div class="single-service">
                            <div class="service-icon-hexagon">
                                <div class="hex">
                                    <div class="service-icon"><i class="fa fa-plane"></i></div>
                                </div>
                            </div>
                            <div class="service-details">
                                <h4>Vận tải hàng không</h4>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                                <a href="#">read more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--SERVICE AREA END-->

<!--PROMO AREA-->
<section class="promo-area">
    <div class="promo-top-area section-padding wow fadeIn">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                    <div class="single-promo">
                        <div class="promo-icon"><i class="fa fa-anchor"></i></div>
                        <div class="promo-details">
                            <h3>Địa chỉ của chúng tôi</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

                        </div>
                    </div>
                    <div class="single-promo">
                        <div class="promo-icon"><i class="fa fa-newspaper-o"></i></div>
                        <div class="promo-details">
                            <h3>Bài viết mới</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                    <div class="single-promo">
                        <div class="promo-icon"><i class="fa fa-umbrella"></i></div>
                        <div class="promo-details">
                            <h3>Hỗ trợ khách hàng 24/7</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                    <div class="single-promo">
                        <div class="promo-icon"><i class="fa fa-bicycle"></i></div>
                        <div class="promo-details">
                            <h3>Chuyển phát nhanh</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="promo-bottom-area section-padding">
        <div class="promo-botton-area-bg" data-stellar-background-ratio="0.6"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-lg-10 col-md-offset-1 col-lg-offset-1 col-sm-12 col-xs-12 text-center">
                    <div class="promo-bottom-content wow fadeIn">
                        <h2>Chúng tôi chuyên cung cấp dịch vụ vận chuyển hàng hóa chuyên nghiệp, an toàn, nhanh chóng và tiết kiệm nhất</h2>
                        <a href="#baogia" class="read-more">Nhận báo giá</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--PROMO AREA END-->

<!--TESTMONIAL AREA -->
<!--     <section class="testmonial-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-6 col-md-offset-3 col-lg-offset-3 col-sm-12 col-xs-12">
                    <div class="area-title text-center wow fadeIn">
                        <h2>what client’s say</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-lg-4 col-md-offset-4 col-lg-offset-4 col-sm-8 col-sm-offset-2 col-xs-8 col-xs-offset-2">
                    <div class="client-photo-list wow fadeIn">
                        <div class="client_photo">
                            <div class="item">
                                <img src="img/testmonial/1.jpg" alt="">
                            </div>
                            <div class="item">
                                <img src="img/testmonial/2.jpg" alt="">
                            </div>
                            <div class="item">
                                <img src="img/testmonial/3.jpg" alt="">
                            </div>
                            <div class="item">
                                <img src="img/testmonial/1.jpg" alt="">
                            </div>
                            <div class="item">
                                <img src="img/testmonial/2.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="client_nav">
                        <span class="fa fa-angle-left testi_prev"></span>
                        <span class="fa fa-angle-right testi_next"></span>
                    </div>
                </div>
                <div class="col-xs-12 col-md-10 col-md-offset-1 text-center">
                    <div class="client-details-content wow fadeIn">
                        <div class="client_details">
                            <div class="item">
                                <q>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </q>
                                <h3>JABIN KANE</h3>
                                <p>CEO, TOPSMMPANEL.COM</p>
                            </div>
                            <div class="item">
                                <q>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </q>
                                <h3>JABIN KANE</h3>
                                <p>CEO, TOPSMMPANEL.COM</p>
                            </div>
                            <div class="item">
                                <q>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </q>
                                <h3>JABIN KANE</h3>
                                <p>CEO, TOPSMMPANEL.COM</p>
                            </div>
                            <div class="item">
                                <q>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </q>
                                <h3>JABIN KANE</h3>
                                <p>CEO, TOPSMMPANEL.COM</p>
                            </div>
                            <div class="item">
                                <q>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </q>
                                <h3>JABIN KANE</h3>
                                <p>CEO, TOPSMMPANEL.COM</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
<!--TESTMONIAL AREA END -->

<!--FOOER AREA-->
<div class="footer-area dark-bg">
    <!-- <div class="footer-area-bg"></div> -->
    <div class="footer-top-area wow fadeIn">
        <!-- <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
                    <div class="subscribe-content">
                        <h2>Weekly Newsletter</h2>
                        <p>There are many vaiations of passages of lorem ipsum available.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
                    <div class="subscriber-form-area">
                        <form action="#" class="subsriber-form">
                            <label for="subscriber-mail"><i class="fa fa-envelope-o"></i></label>
                            <input type="email" name="subscriber-mail" id="subscriber-mail" placeholder="Enter Your Mail">
                            <button type="submit">subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="footer-border"> </div>
                </div>
            </div>
        </div> -->
    </div>
<jsp:include page="footer/footerWeb.jsp"/>
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
