<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09/18/20
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<nav class="main-menu">
    <ul>
        <li>
            <a href="index.html">
                <i class="fa fa-home nav_icon"></i>
                <span class="nav-text">
					Trang chủ
					</span>
            </a>
        </li>
        <li class="has-subnav">
            <a href="javascript:;">
                <i class="fa fa-cogs" aria-hidden="true"></i>
                <span class="nav-text">
					Dịch vụ
				</span>
                <i class="icon-angle-right"></i><i class="icon-angle-down"></i>
            </a>
            <ul>
                <li>
                    <a class="subnav-text" href="/admin/insertService">
                        Thêm mới
                    </a>
                </li>
                <li>
                    <a class="subnav-text" href="/admin/listService">
                        Chỉnh sửa
                    </a>
                </li>
            </ul>
        </li>
        <li class="has-subnav">
            <a href="javascript:;">
                <i class="fa fa-check-square-o nav_icon"></i>
                <span class="nav-text">
				Đơn hàng
				</span>
                <i class="icon-angle-right"></i><i class="icon-angle-down"></i>
            </a>
            <ul>
                <li>
                    <a class="subnav-text" href="inputs.html">Thêm mới</a>
                </li>
                <li>
                    <a class="subnav-text" href="validation.html">Danh sách</a>
                </li>
                <li>
                    <a class="subnav-text" href="validation.html">Báo phát</a>
                </li>

            </ul>
        </li>
        <li class="has-subnav">
            <a href="javascript:;">
                <i class="fa fa-file-text-o nav_icon"></i>
                <span class="nav-text">Tài khoản</span>
                <i class="icon-angle-right"></i><i class="icon-angle-down"></i>
            </a>
            <ul>
                <li>
                    <a class="subnav-text" href="gallery.html">
                        Tạo tài khoản
                    </a>
                </li>
                <li>
                    <a class="subnav-text" href="calendar.html">
                        Danh sách tài khoản
                    </a>
                </li>
                <!-- <li>
                    <a class="subnav-text" href="signup.html">
                        Sign Up Page
                    </a>
                </li>
                <li>
                    <a class="subnav-text" href="login.html">
                        Login Page
                    </a>
                </li> -->
            </ul>
        </li>
        <li class="has-subnav">
            <a href="javascript:;">
                <i class="fa fa-file-text-o nav_icon"></i>
                <span class="nav-text">Báo cáo & Thống kê</span>
                <i class="icon-angle-right"></i><i class="icon-angle-down"></i>
            </a>
            <ul>
                <li>
                    <a class="subnav-text" href="gallery.html">
                        Báo cáo doanh số
                    </a>
                </li>
                <li>
                    <a class="subnav-text" href="calendar.html" style="font-size: 14.5px">
                        Khách hàng tiềm năng
                    </a>
                </li>
                <li>
                    <a class="subnav-text" href="calendar.html">
                        Tiền thu hộ(COD)
                    </a>
                </li>
            </ul>
        </li>
        <!-- <li>
            <a href="typography.html">
                <i class="icon-font nav-icon"></i>
                <span class="nav-text">
                Bài viết & Tin tức
                </span>
            </a>

        </li> -->
        <li class="has-subnav">
            <a href="javascript:;">
                <i class="fa fa-file-text-o nav_icon"></i>
                <span class="nav-text">Chi tiết</span>
                <i class="icon-angle-right"></i><i class="icon-angle-down"></i>
            </a>
            <ul>
                <li>
                    <a class="subnav-text" href="gallery.html">
                        Đơn hàng
                    </a>
                </li>
                <li>
                    <a class="subnav-text" href="gallery.html">
                        Khách hàng
                    </a>
                </li>
                <li>
                    <a class="subnav-text" href="gallery.html">
                        Thông tin công ty
                    </a>
                </li>
                <li>
                    <a class="subnav-text" href="gallery.html">
                        Thông tin chi nhánh
                    </a>
                </li>
                <li>
                    <a class="subnav-text" href="gallery.html">
                        Nhân viên
                    </a>
                </li>

            </ul>
        </li>
        <li>
            <a href="maps.html">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span class="nav-text">
					Bản đồ
					</span>
            </a>
        </li>
        <li>
            <a href="error.html">
                <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                <span class="nav-text">
					Error Page
					</span>
            </a>
        </li>
        <li class="has-subnav">
            <a href="javascript:;">
                <i class="fa fa-list-ul" aria-hidden="true"></i>
                <span class="nav-text">Bài viết</span>
                <i class="icon-angle-right"></i><i class="icon-angle-down"></i>
            </a>
            <ul>
                <li>
                    <a class="subnav-text" href="faq.jsp">Danh sách</a>
                </li>
                <li>
                    <a class="subnav-text" href="blank.html">Thêm mới</a>
                </li>
            </ul>
        </li>
    </ul>
    <ul class="logout">
        <li>
            <a href="/logout">
                <i class="icon-off nav-icon"></i>
                <span class="nav-text">
			Đăng xuất
			</span>
            </a>
        </li>
    </ul>
</nav>
</body>
</html>
