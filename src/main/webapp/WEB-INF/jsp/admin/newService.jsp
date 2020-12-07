<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
	<title>Quang Châu || Thêm mới dịch vụ</title>
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
					<h2>THÊM MỚI DỊCH VỤ</h2>
				</div>
				<div class="panel panel-widget forms-panel">
					<div class="progressbar-heading general-heading">
						<h4>Dịch vụ:</h4>
					</div>
					<div class="forms">
						<h3 class="title1"></h3>
						<div class="form-three widget-shadow">
							<mvc:form class="form-horizontal" modelAttribute="newService" action="${pageContext.request.contextPath}/admin/newService" method="post" enctype="multipart/form-data">
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Tên dịch vụ</label>
									<div class="col-sm-8">
										<mvc:input required="true" type="text" class="form-control1" name="serviceName" id="focusedinput" placeholder="Tên dịch vụ" path="name"/>
									</div>
								</div>
								<div class="form-group">
									<label for="mediuminput" class="col-sm-2 control-label">Mô tả dịch vụ</label>
									<div class="col-sm-8">
										<mvc:textarea type="text" class="form-control1" id="mediuminput" placeholder="Mô tả" path="description"/>
									</div>
								</div>
								<div class="form-group">
									<label for="smallinput" class="col-sm-2 control-label label-input-sm">Hình ảnh đại diện</label>
									<div class="col-sm-8">
										<input required="true" name="photo" type="file" class="form-control1 input-sm" id="smallinput" placeholder="Ảnh dịch vụ"/>
									</div>
								</div>
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Tiêu đề nội dung dịch vụ</label>
									<div class="col-sm-8">
										<input required type="text" class="form-control1" name="titleContent" id="focusedinput" placeholder="Tiêu đề bài viết dịch vụ"/>
									</div>
								</div>
								<div class="form-group">
									<label for="txtarea1" class="col-sm-2 control-label">Nội dung bài viết dịch vụ</label>
									<div class="col-sm-8"><textarea name="serviceContent" id="txtarea1" cols="50" rows="4" class="form-control1" style="height: 150px" placeholder="Nội dung hiển thị bài viết dịch vụ"></textarea></div>
								</div>
								<div class="form-group">
									<label for="smallinput" class="col-sm-2 control-label label-input-sm">Hình ảnh minh họa</label>
									<div class="col-sm-8">
										<input required multiple type="file" name="imageContent" class="form-control1 input-sm" id="smallinput" placeholder="Ảnh dịch vụ"/>
									</div>
								</div>
								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Lý do chọn dịch vụ</label>
									<div class="col-sm-8">
										<input required type="text" class="form-control1" name="reasonChoose" id="mediuminput" placeholder="Lý do chọn dịch vụ"/>
									</div>
								</div>
								<div class="form-group">
									<label for="txtarea1" class="col-sm-2 control-label">Mô tả lý do</label>
									<div class="col-sm-8"><textarea name="descriptionReason" id="txtarea1" cols="50" rows="4" class="form-control1" placeholder="Mô tả lý do chọn dịch vụ" style="height: 150px"></textarea></div>
								</div>

								<div class="button-DV" style="width: 35%;margin: auto;margin-top: 40px;font-size: 20px">
									<input type="reset" value="Hủy bỏ" id="cancel" style="width: 150px;color: #e94e02;border-radius: 10px">
									<input type="submit" value="Lưu và xem thử" id="continue" style= "width: 180px;color: #449d44;margin-left: 110px;border-radius: 10px">
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
