<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<head> 
<#include "/fragments/layout.ftl"/>

</head>

<script>
  $(document).ready(function() {
 	$('#customerForm').bootstrapValidator({
         message:'This value is not valid',
         feedbackIcons: {
         },
         fields: {
             inputName: {
                message: 'The username is not valid',
                 validators: {
                     notEmpty: {
                         message: '客户姓名不能为空'
                     }
                 }
             },
             inputCustomerCode: {
                 validators: {
                     notEmpty: {
                         message: '客户编号不能为空'
                     }
                 }
             },
             inputTel: {
                message: 'The username is not valid',
                 validators: {
                     notEmpty: {
                         message: '联系方式不能为空'
                     }
                 }
             },
             inputEmail: {
                message: 'The username is not valid',
                 validators: {
                     notEmpty: {
                         message: '联系邮箱不能为空'
                     }
                 }
             },
             inputAddress: {
                message: 'The username is not valid',
                 validators: {
                     notEmpty: {
                         message: '居住地址不能为空'
                     }
                 }
             }
         }
      }).on('success.form.bv', function(e) { //点击提交之后
        	$("#customerForm").data('bootstrapValidator').destroy();
            $("#customerForm").attr("action","/manage/customer/editCustomer/");
            $("#customerForm").submit();
    });

 
     $('.btn-submit').click(function(){
         $('#customerForm').bootstrapValidator('validate');
     });
    });
</script>

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
										<li>客户信息管理</li>
									</ul>
									<div class="clearfix">
										<h3 class="content-title pull-left">编辑客户信息</h3>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-10 col-md-offset-1">
								<div class="box border blue">
									<div class="box-title">
										<h4><i class="fa fa-bars"></i> <span class="hidden-inline-mobile">编辑</span></h4>
									</div>
									<div class="box-body">
										<h3 class="form-title"></h3>
											<form class="form-horizontal" role="form" id="customerForm" method="post">
											  <div class="form-group">
												<label for="inputName" class="col-sm-2 control-label">客户姓名 <span style="color:red;">*</span></label>
												<div class="col-sm-8">
												 <input type="hidden" class="form-control" id="inputId" name="inputId" value="${customer.id}">
												  <input type="text" class="form-control" id="inputName" name="inputName" placeholder="客户名" value="${customer.customerName}">
												</div>
											  </div>
											  <div class="form-group">
												<label for="inputCustomerCode" class="col-sm-2 control-label">客户编号 <span style="color:red;">*</span></label>
												<div class="col-sm-8">
												  <input type="text" class="form-control" id="inputCustomerCode" name="inputCustomerCode"  placeholder="客户代号" value="${customer.customerCodename}">
												</div>
											  </div>
											  <div class="form-group">
												<label for="inputTel" class="col-sm-2 control-label">联系电话 <span style="color:red;">*</span></label>
												<div class="col-sm-8">
												  <input type="number" class="form-control" id="inputTel" name="inputTel" placeholder="联系电话" value="${customer.tel}">
												</div>
											  </div>
											  <div class="form-group">
												<label for="inputEmail" class="col-sm-2 control-label">联系邮箱 <span style="color:red;">*</span></label>
												<div class="col-sm-8">
												  <input type="email" class="form-control" id="inputEmail" name="inputEmail" placeholder="邮箱" value="${customer.email}">
												</div>
											  </div>
											  <div class="form-group">
												<label for="inputAddress" class="col-sm-2 control-label">居住地址 <span style="color:red;">*</span></label>
												<div class="col-sm-8">
												  <textarea class="form-control" id="inputAddress" name="inputAddress" placeholder="地址">${customer.address}</textarea>
												</div>
											  </div>
											  <div class="form-group">
												<div class="col-sm-offset-4 col-sm-8">
												  <a href="/manage/customer/list/" class="btn btn-default">取消</a>
												  <button class="btn btn-primary btn-submit">编辑</button>
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