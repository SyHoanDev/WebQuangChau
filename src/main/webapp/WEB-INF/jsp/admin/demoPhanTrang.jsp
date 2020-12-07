<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>jQuery Pagination plugin</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/static/admin/js/jquery.twbsPagination.js"></script>
    <script src="${pageContext.request.contextPath}/static/admin/js/jquery-3.2.1.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.js" ></script>
    <!-- JS tạo nút bấm di chuyển trang start -->
    <script src="http://1892.yn.lt/blogger/JQuery/Pagging/js/jquery.twbsPagination.js" type="text/javascript"></script>
    <!-- JS tạo nút bấm di chuyển trang end -->
    <script type="text/javascript">
        $(function () {
            var pageSize = 1; // Hiển thị 6 sản phẩm trên 1 trang
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
    <style>
<%--        ///** CSS căn id pagination ra giữa màn hình **///--%>
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
<body style="width: 500px; margin:auto;">

<!-- Hiển thị sản phẩm -->
<div class="forms" style="margin-top: 60px">
    <div id="bid">
        <table>
            <thead style="background: #c7c4c4">
            <tr style="height: 40px">
                <th width="15%">Tên dịch vụ</th>
                <th width="30%">Mô tả</th>
                <th width="15%">Ảnh dịch vụ</th>
                <th width="20%">Danh sách nội dung/lý do</th>
                <th width="10%">Chỉnh sửa</th>
                <th width="10%">Xóa</th>
            </tr>
            </thead>
            <tbody >
            <c:forEach var="service" items="${listService}">
                <tr class="contentPage">
                    <td>${service.name}</td>
<%--                    <td>${service.description}</td>--%>
<%--                    <td><img src="/getImage/${service.avatar}" width="80%" ></td>--%>
<%--                    <td><select>--%>
<%--                        <option>Xem danh sách</option>--%>
<%--                        <option><a href="">Danh sách nội dung</a></option>--%>
<%--                        <option><a href="">Danh sách lý do</a></option>--%>
<%--                    </select></td>--%>
<%--                    <td><a href="${pageContext.request.contextPath}/user/updateGood/${service.id}">Chỉnh sửa</a></td>--%>
<%--                    <td><a href="${pageContext.request.contextPath}/user/deleteGood/${service.id}">Xóa</a></td>--%>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <!-- Hiên thị nút bấm -->
        <ul id="pagination"></ul>
    </div>
</div>

</body>
</html>