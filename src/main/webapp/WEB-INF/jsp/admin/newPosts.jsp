<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<head>
<title>Colored  an Admin Panel Category Flat Bootstrap Responsive Website Template | Buttons :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Colored Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link href="css/cssDownload.css">
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/screenfull.js"></script>
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

	<nav class="main-menu">
		<ul>
			<li>
				<a href="index.html">
					<i class="fa fa-home nav_icon"></i>
					<span class="nav-text">
					Dashboard
					</span>
				</a>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
				<i class="fa fa-cogs" aria-hidden="true"></i>
				<span class="nav-text">
					UI Components
				</span>
				<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
					<a class="subnav-text" href="newPosts.jsp">
					Buttons
					</a>
					</li>
					<li>
					<a class="subnav-text" href="reportOrder.jsp">
					Grids
					</a>
					</li>
				</ul>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
				<i class="fa fa-check-square-o nav_icon"></i>
				<span class="nav-text">
				Forms
				</span>
				<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
						<a class="subnav-text" href="newUser.jsp">Inputs</a>
					</li>
					<li>
						<a class="subnav-text" href="CODReports.jsp">Form Validation</a>
					</li>
				</ul>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
					<i class="fa fa-file-text-o nav_icon"></i>
						<span class="nav-text">Pages</span>
					<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
						<a class="subnav-text" href="listOrder.jsp">
							Image Gallery
						</a>
					</li>
					<li>
						<a class="subnav-text" href="listPosts.jsp">
							Calendar
						</a>
					</li>
					<li>
						<a class="subnav-text" href="signup.html">
							Sign Up Page
						</a>
					</li>
					<li>
						<a class="subnav-text" href="login.html">
							Login Page
						</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="newOrder.jsp">
					<i class="fa fa-bar-chart nav_icon"></i>
					<span class="nav-text">
						Charts
					</span>
				</a>
			</li>
			<li>
				<a href="typography.html">
					<i class="icon-font nav-icon"></i>
					<span class="nav-text">
					Typography
					</span>
				</a>
			</li>
			<li>
				<a href="salesReport.jsp">
					<i class="icon-table nav-icon"></i>
					<span class="nav-text">
					Tables
					</span>
				</a>
			</li>
			<li>
				<a href="maps.html">
					<i class="fa fa-map-marker" aria-hidden="true"></i>
					<span class="nav-text">
					Maps
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
					<span class="nav-text">Extras</span>
					<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
						<a class="subnav-text" href="newService.jsp">FAQ</a>
					</li>
					<li>
						<a class="subnav-text" href="updateService.jsp">Blank Page</a>
					</li>
				</ul>
			</li>
		</ul>
		<ul class="logout">
			<li>
			<a href="login.html">
			<i class="icon-off nav-icon"></i>
			<span class="nav-text">
			Logout
			</span>
			</a>
			</li>
		</ul>
	</nav>
	<section class="wrapper scrollable">
		<nav class="user-menu">
			<a href="javascript:;" class="main-menu-access">
			<i class="icon-proton-logo"></i>
			<i class="icon-reorder"></i>
			</a>
		</nav>
		<section class="title-bar">
			<div class="logo">
				<h1><a href="index.html"><img src="images/logo.png" alt="" />Colored</a></h1>
			</div>
			<div class="full-screen">
				<section class="full-top">
					<button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>	
				</section>
			</div>
			<div class="w3l_search">
				<form action="#" method="post">
					<input type="text" name="search" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}" required="">
					<button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
				</form>
			</div>
			<div class="header-right">
				<div class="profile_details_left">
					<div class="header-right-left">
						<!--notifications of menu start -->
						<ul class="nofitications-dropdown">
							<li class="dropdown head-dpdn">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
								<ul class="dropdown-menu anti-dropdown-menu w3l-msg">
									<li>
										<div class="notification_header">
											<h3>You have 3 new messages</h3>
										</div>
									</li>
									<li><a href="#">
									   <div class="user_img"><img src="images/1.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet</p>
										<p><span>1 hour ago</span></p>
										</div>
									   <div class="clearfix"></div>	
									</a></li>
									<li class="odd"><a href="#">
										<div class="user_img"><img src="images/2.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet </p>
										<p><span>1 hour ago</span></p>
										</div>
									  <div class="clearfix"></div>	
									</a></li>
									<li><a href="#">
									   <div class="user_img"><img src="images/3.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet </p>
										<p><span>1 hour ago</span></p>
										</div>
									   <div class="clearfix"></div>	
									</a></li>
									<li>
										<div class="notification_bottom">
											<a href="#">See all messages</a>
										</div> 
									</li>
								</ul>
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
										<div class="user_img"><img src="images/2.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet</p>
										<p><span>1 hour ago</span></p>
										</div>
									  <div class="clearfix"></div>	
									 </a></li>
									 <li class="odd"><a href="#">
										<div class="user_img"><img src="images/1.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet </p>
										<p><span>1 hour ago</span></p>
										</div>
									   <div class="clearfix"></div>	
									 </a></li>
									 <li><a href="#">
										<div class="user_img"><img src="images/3.png" alt=""></div>
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
							<li class="dropdown head-dpdn">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">15</span></a>
								<ul class="dropdown-menu anti-dropdown-menu agile-task">
									<li>
										<div class="notification_header">
											<h3>You have 8 pending tasks</h3>
										</div>
									</li>
									<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Database update</span><span class="percentage">40%</span>
											<div class="clearfix"></div>	
										</div>
										<div class="progress progress-striped active">
											<div class="bar yellow" style="width:40%;"></div>
										</div>
									</a></li>
									<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
										   <div class="clearfix"></div>	
										</div>
										<div class="progress progress-striped active">
											 <div class="bar green" style="width:90%;"></div>
										</div>
									</a></li>
									<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
											<div class="clearfix"></div>	
										</div>
									   <div class="progress progress-striped active">
											 <div class="bar red" style="width: 33%;"></div>
										</div>
									</a></li>
									<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
										   <div class="clearfix"></div>	
										</div>
										<div class="progress progress-striped active">
											 <div class="bar  blue" style="width: 80%;"></div>
										</div>
									</a></li>
									<li>
										<div class="notification_bottom">
											<a href="#">See all pending tasks</a>
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
										<span class="prfil-img"><i class="fa fa-user" aria-hidden="true"></i></span> 
										<div class="clearfix"></div>	
									</div>	
								</a>
								<ul class="dropdown-menu drp-mnu">
									<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
									<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
									<li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</section>
		<div class="main-grid">
			<div class="agile-grids">	
				<!-- buttons -->
				<div class="buttons-heading">
					<h2>Buttons</h2>
				</div>
				
				<!-- Color-variations -->
				<div class="panel variations-panel">
					<div class="panel-body mtn">
						<div class="col-adjust-8">

							
							<div class="row">
								<div class="col-md-2">
									<div class="bg-light light br-b br-lighter pv20 fw600 text-center">#FEFEFE</div>
									<div class="bg-light br-b br-light pv20 fw600 text-center">#FAFAFA</div>
									<div class="bg-light dark pv20 fw600 text-center">#F2F2F2</div>

								</div>
								<div class="col-md-2">
									<div class="bg-dark light pv20 text-white fw600 text-center">#364155 </div>
									<div class="bg-dark pv20 text-white fw600 text-center">#2A3342</div>
									<div class="bg-dark dark pv20 text-white fw600 text-center">#1E252F</div>
								</div>
								<div class="col-md-2">
									<div class="bg-primary light pv20 text-white fw600 text-center">#14C1d7</div>
									<div class="bg-primary pv20 text-white fw600 text-center">#11A8BB</div>
									<div class="bg-primary dark pv20 text-white fw600 text-center">#0E8F9F</div>
								</div>
								<div class="col-md-2">
									<div class="bg-success light pv20 text-white fw600 text-center">#5FD78A</div>
									<div class="bg-success pv20 text-white fw600 text-center">#47D178</div>
									<div class="bg-success dark pv20 text-white fw600 text-center">#32C867</div>
								</div>
								<div class="col-md-2">
									<div class="bg-info light pv20 text-white fw600 text-center">#5FD7BA</div>
									<div class="bg-info pv20 text-white fw600 text-center">#47D1AF</div>
									<div class="bg-info dark pv20 text-white fw600 text-center">#32C8A3</div>
								</div>
								<div class="col-md-2">
									<div class="bg-warning light pv20 text-white fw600 text-center">#FF8B63</div>
									<div class="bg-warning pv20 text-white fw600 text-center">#FF7444</div>
									<div class="bg-warning dark pv20 text-white fw600 text-center">#FF5D25</div>
								</div>
								<div class="col-md-2">
									<div class="bg-danger light pv20 text-white fw600 text-center">#F17060</div>
									<div class="bg-danger pv20 text-white fw600 text-center">#EE5744</div>
									<div class="bg-danger dark pv20 text-white fw600 text-center">#EB3E28</div>
								</div>
								<div class="col-md-2">
									<div class="bg-alert light pv20 text-white fw600 text-center">#FDC669</div>
									<div class="bg-alert pv20 text-white fw600 text-center">#FDBA4B</div>
									<div class="bg-alert dark pv20 text-white fw600 text-center">#FDAE2D</div>
								</div>
								<div class="col-md-2">
									<div class="bg-system light pv20 text-white fw600 text-center">#7A67BB</div>
									<div class="bg-system pv20 text-white fw600 text-center">#6852B2</div>
									<div class="bg-system dark pv20 text-white fw600 text-center">#5B479F</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- //Color-variations -->
				<div class="agile-buttons-grids">
					<!-- button-states -->
					<div class="col-sm-6 col-md-3 button-states-top-grid">
						<div class="panel button-states-grid">
							<div class="panel-heading">
								<div class="panel-title pn">
									<h3 class="mtn mb10 fw400">Button States</h3>
								</div>
							</div>
							<div class="panel-body mtn">
								<p class="mb15">
									<code>.disabled</code>
								</p>

								<div class="bs-component mb20">
									<button type="button" class="btn disabled btn-dark btn-block">Disabled</button>
								</div>
								<p class="mb15">
									<code>.btn-hover</code>
								</p>

								<div class="bs-component mb20">
									<button type="button" class="btn btn-hover btn-dark btn-block">Hover</button>
								<div id="source-button" class="btn btn-system btn-xs" style="display: none;">&lt; &gt;</div></div>
								<p class="mb15">
									<code>.active</code>
								</p>

								<div class="bs-component mb20">
									<button type="button" class="btn active btn-dark btn-block">Active</button>
								</div>
							</div>
						</div>
					</div>
					<!-- //button-states -->
					<!-- button-sizes -->
					<div class="col-sm-6 col-md-3 button-size-grids">
						<div class="panel button-sizes">
							<div class="panel-heading">
								<div class="panel-title pn">
									<h3 class="mtn mb10 fw400">Button Sizes</h3>
								</div>
							</div>
							<div class="panel-body mtn">
								<p class="mb15">
									<code>.btn-xs</code>
								</p>

								<div class="bs-component mb20">
									<button type="button" class="btn btn-xs btn-primary btn-block">Primary</button>
								</div>
								<p class="mb15">
									<code>.btn-sm</code>
								</p>

								<div class="bs-component mb20">
									<button type="button" class="btn btn-sm btn-primary btn-block">Primary</button>
								</div>

								<p class="mb15">
									<code>Normal button</code>
								</p>

								<div class="bs-component mb20">
									<button type="button" class="btn btn-primary btn-block">Primary</button>
								</div>
								<p class="mb15">
									<code>.btn-lg</code>
								</p>

								<div class="bs-component mb20">
									<button type="button" class="btn btn-lg btn-primary btn-block">Primary</button>
								</div>
							</div>
						</div>
					</div>
					<!-- //button-sizes -->
					<!-- icon-hover-effects -->
					<div class="col-sm-6 hover-buttons">
						<div class="wrap">
							<div class="bg-effect">
								<h3>Button with Icons</h3>
								<ul class="bt-list">
								
										<li><a href="#" class="hvr-icon-grow-rotate col-1">Icon Hang</a></li>
										<li><a href="#" class="hvr-icon-forward col-2">Icon Forward</a></li>
										<li><a href="#" class="hvr-icon-down col-3">Icon Down</a></li>
										<li><a href="#" class="hvr-icon-up col-4">Icon Up</a></li>
								
										<li><a href="#" class="hvr-icon-spin col-5">Icon Spin</a></li>
										<li><a href="#" class="hvr-icon-drop col-6">Icon Drop</a></li>
										<li><a href="#" class="hvr-icon-fade col-7">Icon Fade</a></li>
										<li><a href="#" class="hvr-icon-float-away col-24">Icon Sink</a></li>
									
										<li><a href="#" class="hvr-icon-grow col-9">Icon Grow</a></li>
										<li><a href="#" class="hvr-icon-sink-away col-8">Icon Away</a></li>
										<li><a href="#" class="hvr-icon-pulse col-11">Icon Pulse</a></li>
										<li><a href="#" class="hvr-icon-shrink col-10">Icon Shrink</a></li>
									
										<li><a href="#" class="hvr-icon-push col-14">Icon Push</a></li>
										<li><a href="#" class="hvr-icon-pop col-15">Icon Pop</a></li>
										<li><a href="#" class="hvr-icon-pulse-grow col-12">Icon Bob</a></li>
								
										<li><a href="#" class="hvr-icon-float col-21">Icon Float</a></li>
										<li><a href="#" class="hvr-icon-bounce col-22">Icon Bounce</a></li>
										<li><a href="#" class="hvr-icon-rotate col-23">Icon Rotate</a></li>
									
									
								</ul>
							</div>
						</div>
					</div>
					<!-- //icon-hover-effects -->
					<div class="clearfix"> </div>
				</div>
				<!-- //buttons -->
			</div>
		</div>
		
		<!-- footer -->
		<div class="footer">
			<p>© 2016 Colored . All Rights Reserved . Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>

	
</body>
</html>
