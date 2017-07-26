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
										<a href="/manage/customer/add_customer/" class="btn btn-success">新增客户信息</a>
									</div>
									<div class="col-sm-9 pull-right" style="text-align:right;">
										<form class="form-inline" role="form" method="GET" action="/manage/customer/list/">
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
														   <td>#</td>
														   <td>客户姓名</td>
														   <td>客户编号</td>
														   <td>联系方式</td>
														   <td>联系邮箱</td>
														   <td>居住地址</td>
														   <td>创建时间</td>
														   <td>操作</td>
														</tr>
													 </thead>
													 <tbody>
														  
														 <#list pageInfo.list as customer>
														    <tr>
														    	<td class="set-middle">${customer_index +1}</td>
														        <td class="set-middle">
																	<#if customer.customerName??>
																		${customer.customerName}
																	<#else>
																		--
																	</#if>
																</td>
																<td class="set-middle">
																	<#if customer.customerCodename??>
																		${customer.customerCodename}
																	<#else>
																		--
																	</#if>
																</td>
														        <td class="set-middle">
																	<#if customer.tel??>
																		${customer.tel}
																	<#else>
																		--
																	</#if>										
																</td>
														        <td class="set-middle">
																	<#if customer.email??>
																		${customer.email}
																	<#else>
																		--
																	</#if>	
																</td>
														        <td class="set-middle">
																	<#if customer.address??>
																		${customer.address}
																	<#else>
																		--
																	</#if>	
																</td>
														        <td class="set-middle">
																	<#if customer.createtime??>
																		${customer.createtime?string("yyyy-MM-dd HH:mm:ss")}
																	<#else>
																		--
																	</#if>	
																</td>
														        <td class="set-middle">
														        	<a href="/manage/customer/edit_customer/${customer.id}" class="btn btn-success">编辑</a>
														        	<a data-toggle="modal" data-target="#myModal" class="btn btn-danger">删除</a>
														        </td>
														    </tr>
														</#list>
													 </tbody>
												</table>
											</div>
										</div>
										
									<div class="row">
									   <div id="forum_pagination" class="forum_pagination">  
        <div class="forum_pagination_page">  
            <#if page??>  
                <span class="myspan007">${page.currentPage}/${page.pageCount}</span>  
                <a class="mya001" href="${projectIp+page.pageUrl}1.html">首页</a>  
                  
                <#if ((page.pageCount) <= 11) >  
                    <#list 1..(page.pageCount) as index_page>  
                        <#if (page.currentPage) == index_page >  
                            <a class="mya001 mya004" href="${projectIp+page.pageUrl}${index_page}.html">${index_page}</a>  
                            <#else>  
                            <a class="mya001" href="${projectIp+page.pageUrl}${index_page}.html">${index_page}</a>  
                        </#if>  
                    </#list>  
                      
                <#elseif ((page.pageCount) > 11)>  
                    <#if (((page.currentPage)+5) > (page.pageCount))>  
                              
                        <#list (10-page.pageCount+page.currentPage)..1 as index_page>  
                            <a class="mya001" href="${projectIp+page.pageUrl}${page.currentPage - index_page}.html">${page.currentPage - index_page}</a>  
                        </#list>  
                        <a class="mya001 mya004" href="${projectIp+page.pageUrl}${page.currentPage}.html">${page.currentPage}</a>  
                          
                        <#if ((page.pageCount-page.currentPage) > 0)>  
                            <#list 1..(page.pageCount-page.currentPage) as index_page>  
                                <a class="mya001" href="${projectIp+page.pageUrl}${page.currentPage + index_page}.html">${page.currentPage + index_page}</a>  
                            </#list>  
                        </#if>  
                          
                    <#elseif (((page.currentPage)-5) > 1)>  
                              
                        <#list 5..1 as index_page>  
                            <a class="mya001" href="${projectIp+page.pageUrl}${page.currentPage - index_page}.html">${page.currentPage - index_page}</a>  
                        </#list>  
                          
                        <a class="mya001 mya004" href="${projectIp+page.pageUrl}${page.currentPage}.html">${page.currentPage}</a>  
                          
                        <#list 1..5 as index_page>  
                            <#if ((page.currentPage) + index_page  <= (page.pageCount))>  
                                <a class="mya001" href="${projectIp+page.pageUrl}${page.currentPage + index_page}.html">${page.currentPage + index_page}</a>  
                            </#if>  
                        </#list>  
                    <#else>     
                      
                        <#list 1..11 as index_page>  
                            <#if (page.currentPage) == index_page>  
                                <a class="mya001 mya004" href="${projectIp+page.pageUrl}${page.currentPage}.html">${page.currentPage}</a>  
                                  
                                <#else>  
                                    <a class="mya001" href="${projectIp+page.pageUrl}${index_page}.html">${index_page}</a>  
                                  
                            </#if>  
                          
                        </#list>  
                                  
                              
                    </#if>  
                          
                          
                </#if>  
                <a class="mya001" href="${projectIp+page.pageUrl+page.pageCount}.html">末页</a>  
            </#if>  
        </div>  
    </div>  
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