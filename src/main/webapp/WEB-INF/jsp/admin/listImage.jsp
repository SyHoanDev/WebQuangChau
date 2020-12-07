<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <title>Quang Châu || Danh sách ảnh</title>
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
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
    <script src="${pageContext.request.contextPath}/static/admin/js/pagination.js"></script>
    <script src="${pageContext.request.contextPath}/static/admin/js/jquery-3.2.1111.js"></script>
    <%--    <script src="https://code.jquery.com/jquery-3.2.1.js" ></script>--%>
    <%--    <!-- JS tạo nút bấm di chuyển trang start -->--%>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" type="text/javascript"></script>
    <%--    ///code phân trang--%>
    <script type="text/javascript">
        $(function () {
            var pageSize = 8; // Hiển thị 6 sản phẩm trên 1 trang
            showPage = function (page) {
                $(".contentPage").hide();
                $(".contentPage").each(function (n) {
                    if (n >= pageSize * (page - 1) && n < pageSize * page)
                        $(this).show();
                });
            }
            showPage(1);
            ///** Cần truyền giá trị vào đây **///
            var totalRows = ${totalRow}; // Tổng số sản phẩm hiển thị
            var btnPage = 5; // Số nút bấm hiển thị di chuyển trang
            var iTotalPages = Math.ceil(totalRows / pageSize);

            var obj = $('#pagination').twbsPagination({
                totalPages: iTotalPages,
                visiblePages: btnPage,
                onPageClick: function (event, page) {
                    console.info(page);
                    showPage(page);
                }
            });
            console.info(obj.data());
        });
    </script>
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
    <style>
        #auction table{
            width: 100%;
            border-collapse: collapse;
        }
        #auction table td, table th{
            padding: 12px 15px;
            border: 1px solid #ddd;
            text-align: center;
        }
        #auction table th{
            font-size: 1em;
            background-color: #a6a5a7;
        }
        #auction table tbody tr:nth-child(even){
            background-color: #f5f5f5;
        }
        #bid table{
            width: 100%;
            border-collapse: collapse;
        }
        #bid table td, table th{
            padding: 12px 15px;
            border: 1px solid #ddd;
        }
        #bid table th{
            font-size: 1em;
            background-color: #a6a5a7;
        }
        #bid table tbody tr:nth-child(even){
            background-color: #f5f5f5;
        }
        .pagination li{
            float: left;
            list-style-type: none;
        }
        .pagination li a input{
            height: 32px;
            font-size: 14px;
            background: #dad55e;
        }
    </style>
    <style>
        /*//!** CSS căn id pagination ra giữa màn hình **!//*/
        #pagination {
            display: flex;
            display: -webkit-flex; /* Safari 8 */
            flex-wrap: wrap;
            -webkit-flex-wrap: wrap; /* Safari 8 */
            justify-content: center;
            -webkit-justify-content: center;
        }
    </style>

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
                    <h2>DANH SÁCH ẢNH CỦA NỘI DUNG ${content.title}</h2>
                </div>
                <div class="panel panel-widget forms-panel">
                    <div class="progressbar-heading general-heading">
                    </div>
                    <div class="forms">
                        <div id="bid">
                            <table>
                                <thead style="background: #c7c4c4">
                                <tr style="height: 40px">
                                    <th width="10%">ID</th>
                                    <th width="72%">Hình ảnh</th>
                                    <th width="10%">Chỉnh sửa</th>
                                    <th width="8%">Xóa</th>
                                </tr>
                                </thead>
                                <tbody>
                                <td colspan="4"><h3 align="center">${message}</h3></td>
                                <c:forEach var="img" items="${listImg}">
                                    <tr class="contentPage">
                                        <td>${img.id}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/getImage/${img.url}" data-fancybox="gallery" data-caption="Ảnh nội dung ${content.title}"><img src="/getImage/${img.url}" width="100%">
                                            </a></td>
                                        <td style="text-align: center"><a href="${pageContext.request.contextPath}/user/updateGood/${service.id}">Chỉnh sửa</a></td>
                                        <td style="text-align: center"><a href="${pageContext.request.contextPath}/user/deleteGood/${service.id}">Xóa</a></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="button-DV" style="width: 49%;margin: auto;margin-top: 40px;font-size: 20px">
                    <a href="/admin/listContent/${content.id}"><input type="reset" value="Quay lại" id="cancel" style="width: 150px;color: #e94e02;border-radius: 10px"></a>
                    <a href="/admin/insertContent/${service.id}"><input type="submit" value="Thêm mới" id="continuee" style= "width: 150px;color: #449d44;margin-left: 100px;border-radius: 10px"></a>
                    <a href="/admin/previewService/${content.service.id}"><input type="submit" value="Xem thử" id="continue" style= "width: 150px;color: #449d44;margin-left: 100px;border-radius: 10px"></a>
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
<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
</body>
</html>
