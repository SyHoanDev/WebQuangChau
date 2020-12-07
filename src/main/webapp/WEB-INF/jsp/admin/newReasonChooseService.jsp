<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <title>Quang Châu || Thêm lý do chọn dịch vụ</title>
    <link rel="shortcut icon" type="image/ico" href="/web/img/logoQC.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords"/>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/bootstrap.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/admin/css/style.css" rel='stylesheet' type='text/css' />
    <!-- font CSS -->
    <link href="${pageContext.request.contextPath}/admin/css/cssDownload.css">
    <!-- font-awesome icons -->
    <%--	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/font.css" type="text/css"/>--%>
    <link href="${pageContext.request.contextPath}/admin/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <script src="${pageContext.request.contextPath}/admin/js/jquery2.0.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/modernizr.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/jquery.cookie.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/screenfull.js"></script>
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

</head>
<body class="dashboard-page">

<jsp:include page="titleBar/menu.jsp"/>
<section class="wrapper scrollable">
    <nav class="user-menu">
        <a href="javascript:;" class="main-menu-access">
            <i class="icon-proton-logo"></i>
            <i class="icon-reorder"></i>
        </a>
    </nav>
    <jsp:include page="titleBar/title.jsp"/>
    <div class="main-grid">
        <div class="agile-grids">
            <!-- input-forms -->
            <div class="grids">
                <div class="progressbar-heading grids-heading">
                    <h2>LÝ DO CHỌN DỊCH VỤ</h2>
                </div>
                <div class="panel panel-widget forms-panel">
                    <div class="progressbar-heading general-heading">
                        <h4>Lý do</h4>
                    </div>
                    <div class="forms">
                        <h3 class="title1"></h3>
                        <div class="form-three widget-shadow">
                            <mvc:form modelAttribute="newReason" class="form-horizontal" action="${pageContext.request.contextPath}/admin/newReasonChoose" method="post">
                                <div class="form-group">
                                    <label for="focusedinput" class="col-sm-2 control-label">Lý do</label>
                                    <div class="col-sm-8">
                                        <mvc:input path="reason" required="true" type="text" class="form-control1" name="Default Input" id="focusedinput" placeholder="Lý do chọn dịch vụ"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-8">
                                        <mvc:input hidden="true" path="service"></mvc:input>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="txtarea1" class="col-sm-2 control-label">Mô tả chi tiết lý do</label>
                                    <div class="col-sm-8">
                                        <mvc:textarea path="description" required="true" name="txtarea1" id="txtarea1" cols="50" rows="30" class="form-control1" style="height: 150px" placeholder="Mô tả chi tiết lý do"></mvc:textarea>
                                    </div>
                                </div>

                                <div class="button-DV" style="width: 35%;margin: auto;margin-top: 40px;font-size: 20px">
                                    <input type="reset" value="Hủy bỏ" id="cancel" style="width: 150px;color: #e94e02;border-radius: 10px">
                                    <input type="submit" value="Tạo mới" id="continue" style= "width: 150px;color: #449d44;margin-left: 140px;border-radius: 10px">
                                </div>


                            </mvc:form>
                        </div>
                    </div>
                </div>

            </div>
            <!-- //input-forms -->
        </div>
    </div>
    <!-- footer -->
    <div class="footer">
        <p>© 2016 Colored . All Rights Reserved . Design by <a href="http://w3layouts.com/">W3layouts</a></p>
    </div>
    <!-- //footer -->
</section>
<script src="${pageContext.request.contextPath}/admin/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/proton.js"></script>
</body>
</html>
