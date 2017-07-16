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
					<li><a class="" href="/air2u-manage/customer/list/"><i class="fa fa-desktop fa-fw"></i> 
						<span class="menu-text">客户信息管理</span></a></li>
					<li><a class="" href="inbox.html"><i class="fa fa-envelope-o fa-fw"></i> <span class="menu-text">Inbox</span></a></li>
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
										<li>客户信息管理</li>
									</ul>
									<div class="clearfix">
										<h3 class="content-title pull-left">客户信息管理</h3>
									</div>
									<div class="description">Overview, Statistics and more</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<div class="col-sm-3">
										<a href="/air2u-manage/customer/add_customer/" class="btn btn-success">新增客户信息</a>
									</div>
									<div class="col-sm-9 pull-right" style="text-align:right;">
										<form class="form-inline" role="form" method="GET" action="/air2u-manage/customer/list/">
											  <div class="form-group">
												<label class="sr-only" for="exampleInputEmail2">客户姓名</label>
												<input type="text" class="form-control" id="name" name="name" placeholder="请输入客户姓名">
											  </div>
											  <div class="form-group">
												<label class="sr-only" for="exampleInputPassword2">联系方式</label>
												<input type="text" class="form-control" id="tel" name="tel" placeholder="请输入联系方式">
											  </div>
											  <button type="submit" class="btn btn-primary">查询</button>
										</form>
									</div>
								</div>
								
								
								<div class="row">
									<div class="col-sm-12">
										<div class="box border blue">
										<div class="box-title">
											<h4><i class="fa fa-bars"></i> <span class="hidden-inline-mobile">客户信息列表</span></h4>
										</div>
										<div class="box-body">
											
											<div class="tabbable header-tabs">
												<table class="table table-striped table-bordered table-hover">
													 <thead>
														<tr>
														   <th>#</th>
														   <th>客户姓名</th>
														   <th>客户编号</th>
														   <th>联系方式</th>
														   <th>联系邮箱</th>
														   <th>居住地址</th>
														   <th>创建时间</th>
														   <th>操作</th>
														</tr>
													 </thead>
													 <tbody>
														 <#list list as customer>
														    <tr>
														    	<td>${customer_index +1}</td>
														        <td>
																	<#if customer.customerName??>
																		${customer.customerName}
																	<#else>
																		--
																	</#if>
																</td>
																<td>
																	<#if customer.customerCodename??>
																		${customer.customerCodename}
																	<#else>
																		--
																	</#if>
																</td>
														        <td>
																	<#if customer.tel??>
																		${customer.tel}
																	<#else>
																		--
																	</#if>										
																</td>
														        <td>
																	<#if customer.email??>
																		${customer.email}
																	<#else>
																		--
																	</#if>	
																</td>
														        <td>
																	<#if customer.address??>
																		${customer.address}
																	<#else>
																		--
																	</#if>	
																</td>
														        <td>
																	<#if customer.createtime??>
																		${customer.createtime?string("yyyy-MM-dd HH:mm:ss")}
																	<#else>
																		--
																	</#if>	
																</td>
														        <td>
														        	<a href="" class="btn btn-danger">编辑</a>
														        	<a href="" class="btn btn-warning">删除</a>
														        </td>
														    </tr>
														</#list>
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