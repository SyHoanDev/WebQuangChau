<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<head>
<title>Colored  an Admin Panel Category Flat Bootstrap Responsive Website Template | Inputs :: w3layouts</title>
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
				<!-- input-forms -->
				<div class="grids">
					<div class="progressbar-heading grids-heading">
						<h2>Input Forms</h2>
					</div>
					<div class="panel panel-widget forms-panel">
						<div class="forms">
							<div class="form-grids widget-shadow" data-example-id="basic-forms"> 
								<div class="form-title">
									<h4>Basic Form :</h4>
								</div>
								<div class="form-body">
									<form action="#" method="post"> 
										<div class="form-group"> 
											<label for="exampleInputEmail1">Email address</label> 
											<input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Email"> 
										</div> 
										<div class="form-group"> 
											<label for="exampleInputPassword1">Password</label> 
											<input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password"> 
										</div> 
										<div class="form-group"> 
											<label for="exampleInputFile">File input</label> 
											<input type="file" id="exampleInputFile"> 
											<p class="help-block">Example block-level help text here.</p> 
										</div> 
										<div class="checkbox"> 
											<label> <input type="checkbox"> Check me out </label> 
										</div> 
										<button type="submit" class="btn btn-default w3ls-button">Submit</button> 
									</form> 
								</div>
							</div>
						</div>
					</div>
					
					<div class="panel panel-widget forms-panel">
						<div class="forms">
							<div class=" form-grids form-grids-right">
								<div class="widget-shadow " data-example-id="basic-forms"> 
									<div class="form-title">
										<h4>Horizontal form :</h4>
									</div>
									<div class="form-body">
										<form class="form-horizontal" action="#" method="post"> 
											<div class="form-group"> 
												<label for="inputEmail3" class="col-sm-2 control-label">Email</label> 
												<div class="col-sm-9"> 
													<input type="email" name="email" class="form-control" id="inputEmail3" placeholder="Email"> 
												</div> 
											</div> 
											<div class="form-group"> 
												<label for="inputPassword3" class="col-sm-2 control-label">Password</label> 
												<div class="col-sm-9"> 
													<input type="password" name="password" class="form-control" id="inputPassword3" placeholder="Password"> 
												</div> 
											</div> 
											<div class="form-group"> 
												<div class="col-sm-offset-2 col-sm-10"> 
													<div class="checkbox"> 
														<label> <input type="checkbox"> Remember me </label> 
													</div> 
												</div> 
											</div> 
											<div class="col-sm-offset-2"> 
												<button type="submit" class="btn btn-default w3ls-button">Sign in</button> 
											</div> 
										</form> 
									</div>
								</div>
							</div>
						</div>	
					</div>
					
					<div class="panel panel-widget forms-panel">
						<div class="forms">
							<div class="inline-form widget-shadow">
								<div class="form-title">
									<h4>Inline form Example 1 :</h4>
								</div>
								<div class="form-body">
									<div data-example-id="simple-form-inline"> <form class="form-inline" action="#" method="post"> <div class="form-group"> <input type="email" name="email" class="form-control" id="exampleInputEmail3" placeholder="Email"> </div> <div class="form-group"> <input type="password" name="password" class="form-control" id="exampleInputPassword3" placeholder="Password"> </div> <div class="checkbox"> <label> <input type="checkbox"> Remember me </label> </div> <button type="submit" class="btn btn-default w3ls-button">Sign in</button> </form> </div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="panel panel-widget forms-panel">
						<div class="forms">
							<div class="form-two widget-shadow">
								<div class="form-title">
									<h4>Inline form Example 2 :</h4>
								</div>
								<div class="form-body" data-example-id="simple-form-inline">
									<form class="form-inline" action="#" method="post"> <div class="form-group"> <label for="exampleInputName2">Name</label> <input type="text" name="your name" class="form-control" id="exampleInputName2" placeholder="Your name"> </div> <div class="form-group"> <label for="exampleInputEmail2">Email</label> <input type="email" name="email" class="form-control" id="exampleInputEmail2" placeholder="mail.abc@example.com"> </div> <button type="submit" class="btn btn-default w3ls-button">Send invitation</button> </form> 
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-widget forms-panel">
						<div class="progressbar-heading general-heading">
							<h4>General Form :</h4>
						</div>
						<div class="forms">
								<h3 class="title1"></h3>
								<div class="form-three widget-shadow">
									<form class="form-horizontal" action="#" method="post">
										<div class="form-group">
											<label for="focusedinput" class="col-sm-2 control-label">Focused Input</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="Default Input" id="focusedinput" placeholder="Default Input">
											</div>
											<div class="col-sm-2">
												<p class="help-block">Your help text!</p>
											</div>
										</div>
										<div class="form-group">
											<label for="disabledinput" class="col-sm-2 control-label">Disabled Input</label>
											<div class="col-sm-8">
												<input disabled="" type="text" name="Disabled Input" class="form-control1" id="disabledinput" placeholder="Disabled Input">
											</div>
										</div>
										<div class="form-group">
											<label for="inputPassword" class="col-sm-2 control-label">Password</label>
											<div class="col-sm-8">
												<input type="password" class="form-control1" id="inputPassword" placeholder="Password">
											</div>
										</div>
										<div class="form-group">
											<label for="checkbox" class="col-sm-2 control-label">Checkbox</label>
											<div class="col-sm-8">
												<div class="checkbox-inline1"><label><input type="checkbox"> Unchecked</label></div>
												<div class="checkbox-inline1"><label><input type="checkbox" checked=""> Checked</label></div>
												<div class="checkbox-inline1"><label><input type="checkbox" disabled=""> Disabled Unchecked</label></div>
												<div class="checkbox-inline1"><label><input type="checkbox" disabled="" checked=""> Disabled Checked</label></div>
											</div>
										</div>
										<div class="form-group">
											<label for="checkbox" class="col-sm-2 control-label">Checkbox Inline</label>
											<div class="col-sm-8">
												<div class="checkbox-inline"><label><input type="checkbox"> Unchecked</label></div>
												<div class="checkbox-inline"><label><input type="checkbox" checked=""> Checked</label></div>
												<div class="checkbox-inline"><label><input type="checkbox" disabled=""> Disabled Unchecked</label></div>
												<div class="checkbox-inline"><label><input type="checkbox" disabled="" checked=""> Disabled Checked</label></div>
											</div>
										</div>
										<div class="form-group">
											<label for="selector1" class="col-sm-2 control-label">Dropdown Select</label>
											<div class="col-sm-8"><select name="selector1" id="selector1" class="form-control1">
												<option>Lorem ipsum dolor sit amet.</option>
												<option>Dolore, ab unde modi est!</option>
												<option>Illum, fuga minus sit eaque.</option>
												<option>Consequatur ducimus maiores voluptatum minima.</option>
											</select></div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">Multiple Select</label>
											<div class="col-sm-8">
												<select multiple="" class="form-control1">
													<option>Option 1</option>
													<option>Option 2</option>
													<option>Option 3</option>
													<option>Option 4</option>
													<option>Option 5</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label for="txtarea1" class="col-sm-2 control-label">Textarea</label>
											<div class="col-sm-8"><textarea name="txtarea1" id="txtarea1" cols="50" rows="4" class="form-control1"></textarea></div>
										</div>
										<div class="form-group">
											<label for="radio" class="col-sm-2 control-label">Radio</label>
											<div class="col-sm-8">
												<div class="radio block"><label><input type="radio"> Unchecked</label></div>
												<div class="radio block"><label><input type="radio" checked=""> Checked</label></div>
												<div class="radio block"><label><input type="radio" disabled=""> Disabled Unchecked</label></div>
												<div class="radio block"><label><input type="radio" disabled="" checked=""> Disabled Checked</label></div>
											</div>
										</div>
										<div class="form-group">
											<label for="radio" class="col-sm-2 control-label">Radio Inline</label>
											<div class="col-sm-8">
												<div class="radio-inline"><label><input type="radio"> Unchecked</label></div>
												<div class="radio-inline"><label><input type="radio" checked=""> Checked</label></div>
												<div class="radio-inline"><label><input type="radio" disabled=""> Disabled Unchecked</label></div>
												<div class="radio-inline"><label><input type="radio" disabled="" checked=""> Disabled Checked</label></div>
											</div>
										</div>
										<div class="form-group">
											<label for="smallinput" class="col-sm-2 control-label label-input-sm">Small Input</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1 input-sm" id="smallinput" placeholder="Small Input">
											</div>
										</div>
										<div class="form-group">
											<label for="mediuminput" class="col-sm-2 control-label">Medium Input</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" id="mediuminput" placeholder="Medium Input">
											</div>
										</div>
										<div class="form-group mb-n">
											<label for="largeinput" class="col-sm-2 control-label label-input-lg">Large Input</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1 input-lg" id="largeinput" placeholder="Large Input">
											</div>
										</div>
									</form>
								</div>
						</div>
					</div>
					<div class="panel panel-widget forms-panel">
						<div class="progressbar-heading general-heading">
							<h4>General Form :</h4>
						</div>
						<div class="forms">
							<div class="form-three widget-shadow">
								<div data-example-id="form-validation-states-with-icons"> <form action="#" method="post"> <div class="form-group has-success has-feedback"> <label class="control-label" for="inputSuccess2">Input with success</label> <input type="text" class="form-control" id="inputSuccess2" aria-describedby="inputSuccess2Status"> <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span> <span id="inputSuccess2Status" class="sr-only">(success)</span> </div> <div class="form-group has-warning has-feedback"> <label class="control-label" for="inputWarning2">Input with warning</label> <input type="text" class="form-control" id="inputWarning2" aria-describedby="inputWarning2Status"> <span class="glyphicon glyphicon-warning-sign form-control-feedback" aria-hidden="true"></span> <span id="inputWarning2Status" class="sr-only">(warning)</span> </div> <div class="form-group has-error has-feedback"> <label class="control-label" for="inputError2">Input with error</label> <input type="text" class="form-control" id="inputError2" aria-describedby="inputError2Status"> <span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span> <span id="inputError2Status" class="sr-only">(error)</span> </div> <div class="form-group has-success has-feedback"> <label class="control-label" for="inputGroupSuccess1">Input group with success</label> <div class="input-group"> <span class="input-group-addon">@</span> <input type="text" class="form-control" id="inputGroupSuccess1" aria-describedby="inputGroupSuccess1Status"> </div> <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span> <span id="inputGroupSuccess1Status" class="sr-only">(success)</span> </div> </form> </div>
							</div>
						</div>
					</div>
					<div class="panel panel-widget forms-panel w3-last-form">
						<div class="forms">
							<div class="form-three widget-shadow">
								<div class=" panel-body-inputin">
									<form class="form-horizontal" action="#" method="post">
										<div class="form-group">
											<label class="col-md-2 control-label">Email Address</label>
											<div class="col-md-8">
												<div class="input-group">							
													<span class="input-group-addon">
														<i class="fa fa-envelope-o"></i>
													</span>
													<input type="text" class="form-control1" placeholder="Email Address">
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Password</label>
											<div class="col-md-8">
												<div class="input-group">
													<span class="input-group-addon">
														<i class="fa fa-key"></i>
													</span>
													<input type="password" class="form-control1" id="exampleInputPassword1" placeholder="Password">
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Email Address</label>
											<div class="col-md-8">
												<div class="input-group input-icon right">
													<span class="input-group-addon">
														<i class="fa fa-envelope-o"></i>
													</span>
													<input id="email" class="form-control1" type="text" placeholder="Email Address">
												</div>
											</div>
											<div class="col-sm-2">
												<p class="help-block">With tooltip</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Password</label>
											<div class="col-md-8">
												<div class="input-group input-icon right">
													<span class="input-group-addon">
														<i class="fa fa-key"></i>
													</span>
													<input type="password" class="form-control1" placeholder="Password">
												</div>
											</div>
											<div class="col-sm-2">
												<p class="help-block">With tooltip</p>
											</div>
										</div>
										<div class="form-group has-success">
											<label class="col-md-2 control-label">Input Addon Success</label>
											<div class="col-md-8">
												<div class="input-group input-icon right">
													<span class="input-group-addon">
														<i class="fa fa-envelope-o"></i>
													</span>
													<input id="email" class="form-control1" type="text" placeholder="Email Address">
												</div>
											</div>
											<div class="col-sm-2">
												<p class="help-block">Email is valid!</p>
											</div>
										</div>
										<div class="form-group has-error">
											<label class="col-md-2 control-label">Input Addon Error</label>
											<div class="col-md-8">
												<div class="input-group input-icon right">
													<span class="input-group-addon">
														<i class="fa fa-key"></i>
													</span>
													<input type="password" class="form-control1" placeholder="Password">
												</div>
											</div>
											<div class="col-sm-2">
												<p class="help-block">Error!</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Checkbox Addon</label>
											<div class="col-md-8">
												<div class="input-group">
													<div class="input-group-addon"><input type="checkbox"></div>
													<input type="text" class="form-control1">
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Checkbox Addon</label>
											<div class="col-md-8">
												<div class="input-group">
													<input type="text" class="form-control1">
													<div class="input-group-addon"><input type="checkbox"></div>
													
												</div>
											</div>
											<div class="col-sm-2">
												<p class="help-block">Checkbox on right</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Radio Addon</label>
											<div class="col-md-8">
												<div class="input-group">
													<div class="input-group-addon"><input type="radio"></div>
													<input type="text" class="form-control1">
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Radio Addon</label>
											<div class="col-md-8">
												<div class="input-group">
													<input type="text" class="form-control1">
													<div class="input-group-addon"><input type="radio"></div>
													
												</div>
											</div>
											<div class="col-sm-2">
												<p class="help-block">Radio on right</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Input Processing</label>
											<div class="col-md-8">
												<div class="input-icon right spinner">
													<i class="fa fa-fw fa-spin fa-spinner"></i>
													<input id="email" class="form-control1" type="text" placeholder="Processing...">
												</div>
											</div>
											<div class="col-sm-2">
												<p class="help-block">Processing right</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Static Paragraph</label>
											<div class="col-md-8">
												<p class="form-control1 m-n">email@example.com</p>
											</div>
										</div>
										<div class="form-group mb-n">
											<label class="col-md-2 control-label">Readonly</label>
											<div class="col-md-8">
												<input type="text" class="form-control1" placeholder="Readonly" readonly="">
											</div>
										</div>
									</form>
								</div>
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
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
</body>
</html>
