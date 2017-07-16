<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<head> 
<#include "/fragments/layout.ftl"/>

</head>

<body>
	<header class="navbar clearfix" id="header">
		<div class="container">
			<div class="navbar-brand">
				<h4 style="color:#FFFFFF;margin-top: -1px;margin-bottom: -5px;">苏州丰盈工程塑胶有限公司</h4>
			</div>
			<ul class="nav navbar-nav pull-right" style="">
				<li class="dropdown user" id="header-user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img alt="" src="img/avatars/avatar3.jpg" />
						<span class="username">John Doe</span>
						<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#"><i class="fa fa-user"></i> My Profile</a></li>
						<li><a href="login.html"><i class="fa fa-power-off"></i> Log Out</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</header>
	
	<section id="page">
		<div id="sidebar" class="sidebar">
			<div class="sidebar-menu nav-collapse">
				<ul>
					<li class="active">
						<a href="index.html">
						<i class="fa fa-tachometer fa-fw"></i> <span class="menu-text">Dashboard</span>
						<span class="selected"></span>
						</a>					
					</li>
					<li><a class="" href="frontend_theme/index.html" target="_blank"><i class="fa fa-desktop fa-fw"></i> <span class="menu-text">Frontend Theme</span></a></li><li><a class="" href="inbox.html"><i class="fa fa-envelope-o fa-fw"></i> <span class="menu-text">Inbox</span></a></li>
					<li><a class="" href="widgets_box.html"><i class="fa fa-th-large fa-fw"></i> <span class="menu-text">Widgets & Box</span></a></li>
					<li><a class="" href="gallery.html"><i class="fa fa-picture-o fa-fw"></i> <span class="menu-text">Gallery</span></a></li>
				</ul>
			</div>
		</div>
		
		<div id="main-content">
			<div class="container">
				<div class="row">
					<div id="content" class="col-lg-12">
						<div class="row">
							<div class="col-sm-12">
								<div class="page-header">
									<ul class="breadcrumb">
										<li>
											<i class="fa fa-home"></i>
											<a href="#">Home</a>
										</li>
										<li>首页</li>
									</ul>
									<div class="clearfix">
										<h3 class="content-title pull-left">首页</h3>
									</div>
									<div class="description">Overview, Statistics and more</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-10 col-md-offset-1">
								<div class="box border blue">
									<div class="box-title">
										<h4><i class="fa fa-bars"></i> <span class="hidden-inline-mobile">添加</span></h4>
									</div>
									<div class="box-body">
										<h3 class="form-title"></h3>
											<form class="form-horizontal" role="form">
											  <div class="form-group">
												<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
												<div class="col-sm-8">
												  <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
												</div>
											  </div>
											  <div class="form-group">
												<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
												<div class="col-sm-8">
												  <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
												</div>
											  </div>
											  <div class="form-group">
												<div class="col-sm-offset-2 col-sm-8">
												  <div class="checkbox">
													<label>
													  <input type="checkbox"> Remember me
													</label>
												  </div>
												</div>
											  </div>
											  <div class="form-group">
												<div class="col-sm-offset-4 col-sm-8">
												  <button type="submit" class="btn btn-primary">Sign in</button>
												  <button type="submit" class="btn btn-default">Cancel</button>
												</div>
											  </div>
											</form>
										
									</div>
								
								</div>
							</div>
							
						</div>
						
					</div><!-- /CONTENT-->
				</div>
			</div>
		</div>
	</section>

</body>

</html>