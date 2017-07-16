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
							<div class="col-md-12">
								<div class="row">
									<div class="col-sm-3">
										<a href="/air2u-manage/user/add_user/" class="btn btn-success">添加</a>
									</div>
									<div class="col-sm-9 pull-right" style="text-align:right;">
										<form class="form-inline" role="form">
											  <div class="form-group">
												<label class="sr-only" for="exampleInputEmail2">Email address</label>
												<input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter email">
											  </div>
											  <div class="form-group">
												<label class="sr-only" for="exampleInputPassword2">Password</label>
												<input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
											  </div>
											  <button type="submit" class="btn btn-primary">查询</button>
										</form>
									</div>
								</div>
								
								
								<div class="row">
									<div class="col-sm-12">
										<div class="box border blue">
										<div class="box-title">
											<h4><i class="fa fa-bars"></i> <span class="hidden-inline-mobile">Traffic &amp; Sales</span></h4>
										</div>
										<div class="box-body">
											
											<div class="tabbable header-tabs">
												<table class="table table-striped table-bordered table-hover">
													 <thead>
														<tr>
														   <th><i class="fa fa-user"></i> Client</th>
														   <th class="hidden-xs"><i class="fa fa-quote-left"></i> Sales Item</th>
														   <th><i class="fa fa-dollar"></i> Amount</th>
														   <th><i class="fa fa-bars"></i> Status</th>
														</tr>
													 </thead>
													 <tbody>
														<tr>
														   <td><a href="#">Fortune 500</a></td>
														   <td class="hidden-xs">Gold Level Virtual Server</td>
														   <td>$ 2310.23</td>
														   <td><span class="label label-success label-sm">Paid</span></td>
														</tr>
													 </tbody>
												</table>
											</div>
										</div>
										
										<div class="col-sm-12">
											<div class="pull-right">
												<div class="dataTables_paginate paging_bs_full" id="datatable1_paginate">
													<ul class="pagination">
														<li class="disabled"><a tabindex="0" class="paginate_button first" id="datatable1_first">First</a></li>
														<li class="disabled"><a tabindex="0" class="paginate_button previous" id="datatable1_previous">Previous</a></li>
														<li class="active"><a tabindex="0">1</a></li><li><a tabindex="0">2</a></li><li><a tabindex="0">3</a></li>
														<li><a tabindex="0">4</a></li><li><a tabindex="0">5</a></li>
														<li><a tabindex="0" class="paginate_button next" id="datatable1_next">Next</a></li>
														<li><a tabindex="0" class="paginate_button last" id="datatable1_last">Last</a></li>
													</ul>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
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