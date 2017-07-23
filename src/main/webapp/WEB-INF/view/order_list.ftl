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
				<h4 style="color:#FFFFFF;margin-top: -1px;margin-bottom: -5px;"></h4>
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
										<h3 class="content-title pull-left">生产单管理</h3>
									</div>
									<div class="description">Overview, Statistics and more</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<div class="col-sm-3">
										<a href="/manage/order/add_order/" class="btn btn-success">新增生产单</a>
									</div>
									<div class="col-sm-9 pull-right" style="text-align:right;">
										<form class="form-inline" role="form" method="GET" action="/manage/order/list/">
										  <div class="form-group">
												<label class="sr-only" for="exampleInputEmail2">机器编号</label>
												<input type="text" class="form-control" id="machineNumber" name="machineNumber"
													 value="<#if condition.machineNumber??>${condition.machineNumber}</#if>"
														placeholder="请输入机器编号">
										  </div>
										  <div class="form-group">
												<label class="sr-only" for="exampleInputPassword2">色号</label>
												<input type="text" class="form-control" id="colorNumber" name="colorNumber"
													value="<#if condition.colorNumber??>${condition.colorNumber}</#if>" placeholder="请输入色号">
													
										  </div>
										  <div class="form-group">
												<label class="sr-only" for="exampleInputPassword2">代号</label>
												<input type="text" class="form-control" id="codeNumber" name="codeNumber" 
													value="<#if condition.codeNumber??>${condition.codeNumber}</#if>" placeholder="请输入代号">
										  </div>
										  <div class="form-group">
												<label class="sr-only" for="exampleInputPassword2">批号</label>
												<input type="text" class="form-control" id="batchNumber" name="batchNumber" 
													value="<#if condition.batchNumber??>${condition.batchNumber}</#if>" placeholder="请输入批号">
										  </div>
										  <div class="row" style="margin-top: 15px;margin-right: 0px;">
										  	   <div class="form-group">
													<label class="sr-only" for="exampleInputPassword2">客户</label>
													<input type="text" class="form-control" id="customer" name="customer" 
														value="<#if condition.customer??>${condition.customer}</#if>" placeholder="请输入客户">
											   </div>
										  	   <div class="form-group">
													<label class="sr-only" for="exampleInputPassword2">原料</label>
													<input type="text" class="form-control" id="material" name="material" 
														value="<#if condition.material??>${condition.material}</#if>" placeholder="请输入原料">
											   </div>
											   <div class="form-group">
													<label class="sr-only" for="exampleInputPassword2">包装</label>
													<input type="text" class="form-control" id="package2" name="package2" 
														value="<#if condition.package2??>${condition.package2}</#if>" placeholder="请输入包装">
											   </div>
											   <button type="submit" class="btn btn-primary">查询</button>
										  </div>
										</form>
									</div>
								</div>
								
								
								<div class="row">
									<div class="col-sm-12">
										<div class="box border blue">
										<div class="box-title">
											<h4><i class="fa fa-bars"></i> <span class="hidden-inline-mobile">生产单列表</span></h4>
										</div>
										<div class="box-body">
											
											<div class="tabbable header-tabs">
												<table class="table table-striped table-bordered table-hover">
													 <thead>
														<tr>
														   <td>#</td>
														   <td>机器编号</td>
														   <td>色号</td>
														   <td>代号</td>
														   <td>批号</td>
														   <td>原料</td>
														   <td>数量</td>
														   <td>客户</td>
														   <td>包装</td>
														   <td>创建时间</td>
														   <td>备注</td>
														   <td>操作</td>
														</tr>
													 </thead>
													 <tbody>
														 <#list list as order>
														    <tr>
														    	<td class="set-middle">${order_index +1}</td>
														        <td class="set-middle">
																	<#if order.machineNumber??>
																		${order.machineNumber}
																	<#else>
																		--
																	</#if>
																</td>
																<td class="set-middle">
																	<#if order.colorNumber??>
																		${order.colorNumber}
																	<#else>
																		--
																	</#if>
																</td>
														        <td class="set-middle">
																	<#if order.codeNumber??>
																		${order.codeNumber}
																	<#else>
																		--
																	</#if>										
																</td>
														        <td class="set-middle">
																	<#if order.batchNumber??>
																		${order.batchNumber}
																	<#else>
																		--
																	</#if>	
																</td>
														        <td class="set-middle">
																	<#if order.material??>
																		${order.material}
																	<#else>
																		--
																	</#if>	
																</td>
																<td class="set-middle">
																	<#if order.number??>
																		${order.number}
																	<#else>
																		--
																	</#if>	
																</td>
																<td class="set-middle">
																	<#if order.customer??>
																		${order.customer}
																	<#else>
																		--
																	</#if>	
																</td>
																<td class="set-middle">
																	<#if order.package2??>
																		${order.package2}
																	<#else>
																		--
																	</#if>	
																</td>
														        <td class="set-middle">
																	<#if order.createtime??>
																		${order.createtime?string("yyyy-MM-dd HH:mm:ss")}
																	<#else>
																		--
																	</#if>	
																</td>
																<td class="set-middle">
																	<#if order.remark??>
																		${order.remark}
																	<#else>
																		--
																	</#if>	
																</td>
														        <td class="set-middle">
														        	<a href="/manage/order/edit_order/${order.id}" class="btn btn-success">编辑</a>
														        	<a data-toggle="modal" data-target="#myModal" class="btn btn-danger">删除</a>
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


<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                  	删除确认
                </h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form" id="customerForm" method="post">
				  <div class="form-group">
					<label for="inputName" class="col-sm-3 control-label">客户姓名 </label>
					<div class="col-sm-8">
					  <input type="text" style="background: lightgray;" class="form-control" id="inputName" name="inputName" placeholder="客户名">
					</div>
				  </div>
				  <div class="form-group">
					<label for="inputCustomerCode" class="col-sm-3 control-label">客户编号</label>
					<div class="col-sm-8">
					  <input type="text" style="background: lightgray;"  class="form-control" id="inputCustomerCode" name="inputCustomerCode"  placeholder="客户代号">
					</div>
				  </div>
				</form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary">删除</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

</body>

</html>