<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09/18/20
  Time: 4:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<section class="title-bar">
    <div class="logo">
        <h1><a href="index.html"><img src="admin/images/logoQC.png" alt="" /></a></h1>
    </div>
    <div style="height: auto;float: left;margin-left: 320px;margin-top: -15px">
        <iframe scrolling="no" frameborder="no" clocktype="html5" style="overflow:hidden;border:0;margin:0;padding:0;width:380px;height:80px;"src="https://www.clocklink.com/html5embed.php?clock=047&timezone=GMT0700&color=green&size=380&Title=&Message=&Target=&From=2020,1,1,0,0,0&Color=green"></iframe>
    </div>
<%--    <div class="full-screen">--%>
<%--        <section class="full-top">--%>
<%--            <button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>--%>
<%--        </section>--%>
<%--    </div>--%>
<%--    <div class="w3l_search">--%>
<%--        <form action="#" method="post">--%>
<%--            <input type="text" name="search" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}" required="">--%>
<%--            <button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>--%>
<%--        </form>--%>
<%--    </div>--%>
    <div class="header-right">
        <div class="profile_details_left">
            <div class="header-right-left">
                <!--notifications of menu start -->
                <ul class="nofitications-dropdown">
                    <li class="dropdown head-dpdn">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i><span class="badge">6</span></a>
<%--                        <ul class="dropdown-menu anti-dropdown-menu w3l-msg">--%>
<%--                            <li>--%>
<%--                                <div class="notification_header">--%>
<%--                                    <h3>You have 3 new messages</h3>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                            <li><a href="#">--%>
<%--                                <div class="user_img"><img src="admin/images/1.png" alt=""></div>--%>
<%--                                <div class="notification_desc">--%>
<%--                                    <p>Lorem ipsum dolor amet</p>--%>
<%--                                    <p><span>1 hour ago</span></p>--%>
<%--                                </div>--%>
<%--                                <div class="clearfix"></div>--%>
<%--                            </a></li>--%>
<%--                            <li class="odd"><a href="#">--%>
<%--                                <div class="user_img"><img src="admin/images/2.png" alt=""></div>--%>
<%--                                <div class="notification_desc">--%>
<%--                                    <p>Lorem ipsum dolor amet </p>--%>
<%--                                    <p><span>1 hour ago</span></p>--%>
<%--                                </div>--%>
<%--                                <div class="clearfix"></div>--%>
<%--                            </a></li>--%>
<%--                            <li><a href="#">--%>
<%--                                <div class="user_img"><img src="admin/images/3.png" alt=""></div>--%>
<%--                                <div class="notification_desc">--%>
<%--                                    <p>Lorem ipsum dolor amet </p>--%>
<%--                                    <p><span>1 hour ago</span></p>--%>
<%--                                </div>--%>
<%--                                <div class="clearfix"></div>--%>
<%--                            </a></li>--%>
<%--                            <li>--%>
<%--                                <div class="notification_bottom">--%>
<%--                                    <a href="#">See all messages</a>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
                    </li>
                    <li class="dropdown head-dpdn">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
                        <ul class="dropdown-menu anti-dropdown-menu agile-notification">
                            <li>
                                <div class="notification_header">
                                    <h3>You have 3 new notifications</h3>
                                </div>
                            </li>
                            <li><a href="#">
                                <div class="user_img"><img src="admin/images/2.png" alt=""></div>
                                <div class="notification_desc">
                                    <p>Lorem ipsum dolor amet</p>
                                    <p><span>1 hour ago</span></p>
                                </div>
                                <div class="clearfix"></div>
                            </a></li>
                            <li class="odd"><a href="#">
                                <div class="user_img"><img src="admin/images/1.png" alt=""></div>
                                <div class="notification_desc">
                                    <p>Lorem ipsum dolor amet </p>
                                    <p><span>1 hour ago</span></p>
                                </div>
                                <div class="clearfix"></div>
                            </a></li>
                            <li><a href="#">
                                <div class="user_img"><img src="admin/images/3.png" alt=""></div>
                                <div class="notification_desc">
                                    <p>Lorem ipsum dolor amet </p>
                                    <p><span>1 hour ago</span></p>
                                </div>
                                <div class="clearfix"></div>
                            </a></li>
                            <li>
                                <div class="notification_bottom">
                                    <a href="#">See all notifications</a>
                                </div>
                            </li>
                        </ul>
                    </li>

                    <div class="clearfix"> </div>
                </ul>
            </div>
            <div class="profile_details">
                <ul>
                    <li class="dropdown profile_details_drop">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <div class="profile_img">
                                <span class="prfil-img"><i class="fa fa-user" aria-hidden="true">${users.getName()}</i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                        <ul class="dropdown-menu drp-mnu">
                            <!-- <li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li>  -->
                            <li> <a href="#"><i class="fa fa-user"></i> Hồ sơ</a> </li>
                            <li> <a href="/logout"><i class="fa fa-sign-out"></i> Đăng xuất</a> </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="clearfix"> </div>
</section>
</body>
</html>
