<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09/18/20
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<head>
    <title>Quang Châu || Đăng nhập</title>
    <link rel="shortcut icon" type="image/ico" href="/web/img/logoQC.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Colored Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
</head>
<body class="signup-body">
<div class="agile-signup">

    <div class="content2">
        <div class="grids-heading gallery-heading signup-heading">
            <h2>Đăng nhập</h2>
        </div>
        <div style="color: red">
            <c:if test="${error == true}">
                Login thất bại!!!<br />
                Lý do :
                <c:if test="${sessionScope!= null and sessionScope['SPRING_SECURITY_LAST_EXCEPTION'] != null}">
<%--                    <label>${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}</label>--%>
                    <label>Thông tin đăng nhập không hợp lệ</label>
                </c:if>
            </c:if>
        </div>
        <form action="<c:url value="j_spring_security_check"/>" method="post">
            <input type="text" name="username" value="Tài khoản đăng nhập..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Tài khoản đăng nhập...';}">
            <input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
            <input type="submit" class="register" value="Đăng nhập">
        </form>
        <div class="signin-text">
            <div class="text-left">
                <p><a href="#"> Quên mật khẩu </a></p>
            </div>

            <div class="clearfix"> </div>
        </div>
<%--        <h5>- OR -</h5>--%>
<%--        <div class="footer-icons">--%>
<%--            <ul>--%>
<%--                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>--%>
<%--                <li><a href="#" class="twitter facebook"><i class="fa fa-facebook"></i></a></li>--%>
<%--                <li><a href="#" class="twitter chrome"><i class="fa fa-google-plus"></i></a></li>--%>
<%--                <li><a href="#" class="twitter dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
        <a href="/">Quay về trang chủ</a>
    </div>

    <!-- footer -->
    <div class="copyright">
        <p>© 2016 Colored . All Rights Reserved . Design by <a href="http://w3layouts.com/">W3layouts</a></p>
    </div>
    <!-- //footer -->

</div>
<script src="admin/js/proton.js"></script>
</body>
</html>
