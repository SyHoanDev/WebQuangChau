<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09/17/20
  Time: 12:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Header</title>
</head>
<body>
<header class="top-area" id="home">
    <div class="top-area-bg" data-stellar-background-ratio="0.6"></div>
    <div class="header-top-area">
        <!--MAINMENU AREA-->
        <div class="mainmenu-area" id="mainmenu-area">
            <div class="mainmenu-area-bg"></div>
            <nav class="navbar">
                <div class="container">
                    <div class="navbar-header">
                        <a href="/" class="navbar-brand"><img src="/web/img/logoQC.png" alt="logo"></a>
                    </div>
                    <div class="search-and-language-bar pull-right">
                        <ul>
                            <li class="search-box"><i class="fa fa-search"></i></li>
                        </ul>
                        <form action="#" class="search-form">
                            <input type="search" name="search" id="search">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                    <div id="main-nav" class="stellarnav">
                        <ul id="nav" class="nav navbar-nav">
                            <li><a href="/">TRANG CHỦ</a>
                                <!-- <ul>
                                    <li><a href="index.html">Home Version 1</a></li>
                                    <li><a href="index-2.html">Home Version 2</a></li>
                                    <li><a href="index-3.html">Home Version 3</a></li>
                                    <li><a href="index-4.html">Home Version 4</a></li>
                                </ul> -->
                            </li>
                            <li><a href="about.html">VỀ CHÚNG TÔI</a>
                            </li>
                            <li>
                                <a href="about-company-profile.html">THÔNG TIN </a>
                            </li>

                            <li><a href="">DỊCH VỤ</a>
                                <ul>
                                    <c:forEach var="item" items="${serviceList}">
                                        <li><a href="/getService/${item.id}">${item.name}</a></li>
                                    </c:forEach>

                                </ul>
                            </li>
                            <li><a href="blog.html">Bài viết</a>
                            </li>
                            <li><a href="contact.html">Liên Hệ</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <!--END MAINMENU AREA END-->
    </div>
    <!--HOME SLIDER AREA-->
    <div class="welcome-slider-area">
        <div class="welcome-single-slide slider-bg-one">
            <div class="container">
                <div class="row flex-v-center">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="welcome-text text-center">
                            <h1>CHÚNG TÔI ĐẢM BẢO DỊCH VỤ AN TOÀN VÀ NHANH CHÓNG</h1>
                            <p>Với nhiều năm kinh nghiệm tham gia hoạt động trong ngành kinh doanh dịch vụ vận tải, chúng tôi cam kết sẽ làm bạn hài lòng với chất lượng của dịch của chúng tôi</p>
                            <div class="home-button">
                                <a href="#dichvu">Dịch vụ của chúng tôi</a>
                                <a href="#baogia">Nhận báo giá vận chuyển</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="welcome-single-slide slider-bg-two">
            <div class="container">
                <div class="row flex-v-center">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="welcome-text text-center">
                            <h1>CHÚNG TÔI ĐẢM BẢO DỊCH VỤ AN TOÀN VÀ NHANH CHÓNG</h1>
                            <p>Bằng tất cả nhiệt huyết của đội ngũ nhân viên giày dặn kinh nghiệm, chúng tôi sẵn sàng phục vụ khách hàng mọi lúc, mọi nơi với giá cả cạnh tranh nhất</p>
                            <p>Hãy tin tưởng và gọi cho chúng tôi khi bạn cần chúng tôi phục vụ!</p>
                            <div class="home-button">
                                <a href="#dichvu">Dịch vụ của chúng tôi</a>
                                <a href="#baogia">Nhận báo giá vận chuyển</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="welcome-single-slide slider-bg-three">
            <div class="container">
                <div class="row flex-v-center">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="welcome-text text-center">
                            <h1>CHÚNG TÔI ĐẢM BẢO DỊCH VỤ AN TOÀN VÀ NHANH CHÓNG</h1>
                            <p></p>
                            <div class="home-button">
                                <a href="#dichvu">Dịch vụ của chúng tôi</a>
                                <a href="#baogia">Nhận báo giá vận chuyển</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <!--END HOME SLIDER AREA-->
</header>
</body>
</html>
