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
 	$('#orderForm').bootstrapValidator({
         message:'This value is not valid',
         feedbackIcons: {
         },
         fields: {
             machineNumber: {
                message: 'The username is not valid',
                 validators: {
                     notEmpty: {
                         message: '机器编号不能为空'
                     }
                 }
             },
             colorNumber: {
                 validators: {
                     notEmpty: {
                         message: '色号不能为空'
                     }
                 }
             },
             codeNumber: {
                message: 'The username is not valid',
                 validators: {
                     notEmpty: {
                         message: '代号不能为空'
                     }
                 }
             },
             batchNumber: {
                message: 'The username is not valid',
                 validators: {
                     notEmpty: {
                         message: '批号不能为空'
                     }
                 }
             },
             material: {
                message: 'The username is not valid',
                 validators: {
                     notEmpty: {
                         message: '原料不能为空'
                     }
                 }
             },
             number: {
                message: 'The username is not valid',
                 validators: {
                     notEmpty: {
                         message: '数量不能为空'
                     }
                 }
             },
             customer: {
                message: 'The username is not valid',
                 validators: {
                     notEmpty: {
                         message: '客户不能为空'
                     }
                 }
             },
             package2: {
                message: 'The username is not valid',
                 validators: {
                     notEmpty: {
                         message: '包装不能为空'
                     }
                 }
             }
         }
      }).on('success.form.bv', function(e) { //点击提交之后
        	
            $("#btn-login").attr('disabled', "true");
            $.post("/manage/order/editOrder/", $("#orderForm").serialize())
                .success(function (data) {
                	if (data.code == '0') {
                        $('#successModal').modal('show');
                        $('#successModal').find('.operate-tip').html("编辑生产单操作成功！");
                    } else {
                        $("#btn-login").removeAttr("disabled");
                        $('#failureModal').modal('show');
                        $('#failureModal').find('.operate-tip').html("编辑生产单操作失败！");
                        return false;
                    }
                })
                .error(function () {
                    $('#failureModal').modal('show');
                    $('#failureModal').find('.operate-tip').html("不可预知的异常，无法提交请求！");
                    return false;
                });
                    
    });

 
     $('.btn-login').click(function(){
         $('#orderForm').bootstrapValidator('validate');
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
										<li>生产单管理</li>
									</ul>
									<div class="clearfix">
										<h3 class="content-title pull-left">添加生产单</h3>
									</div>
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
											<form class="form-horizontal" role="form" id="orderForm" method="post">
											  <div class="row">
											 	 <input type="hidden" class="form-control" id="id" name="id"
														  	value="<#if order.id??>${order.id}</#if>">
											  	 <div class="form-group">
														<label for="inputName" class="col-sm-1 col-sm-offset-1 control-label">机器编号 <span style="color:red;">*</span></label>
														<div class="col-sm-4">
														  <input type="text" class="form-control" id="machineNumber" name="machineNumber"
														  	value="<#if order.machineNumber??>${order.machineNumber}</#if>"  placeholder="机器编号">
														</div>
														
														<label for="inputName" class="col-sm-1 control-label">色号 <span style="color:red;">*</span></label>
														<div class="col-sm-4">
														  <input type="text" class="form-control" id="colorNumber" name="colorNumber" 
														  	value="<#if order.colorNumber??>${order.colorNumber}</#if>" placeholder="色号">
														</div>
												  </div>
											  </div>
											 
											 <div class="row">
											  	 <div class="form-group">
														<label for="inputName" class="col-sm-1 col-sm-offset-1 control-label">代号 <span style="color:red;">*</span></label>
														<div class="col-sm-4">
														  <input type="text" class="form-control" id="codeNumber" name="codeNumber"
														  	value="<#if order.codeNumber??>${order.codeNumber}</#if>" placeholder="代号">
														</div>
														
														<label for="inputName" class="col-sm-1 control-label">批号 <span style="color:red;">*</span></label>
														<div class="col-sm-4">
														  <input type="text" class="form-control" id="batchNumber" name="batchNumber"
														  	value="<#if order.batchNumber??>${order.batchNumber}</#if>" placeholder="批号">
														</div>
												  </div>
											  </div>
											  
											  <div class="row">
											  	 <div class="form-group">
														<label for="inputName" class="col-sm-1 col-sm-offset-1 control-label">原料 <span style="color:red;">*</span></label>
														<div class="col-sm-4">
														  <input type="text" class="form-control" id="material" name="material" 
														  	value="<#if order.material??>${order.material}</#if>" placeholder="原料">
														</div>
														
														<label for="inputName" class="col-sm-1 control-label">数量 <span style="color:red;">*</span></label>
														<div class="col-sm-4">
														  <input type="text" class="form-control" id="number" name="number" 
														  	value="<#if order.number??>${order.number}</#if>" placeholder="数量">
														</div>
												  </div>
											  </div>
											  
											  <div class="row">
											  	 <div class="form-group">
														<label for="inputName" class="col-sm-1 col-sm-offset-1 control-label">客户 <span style="color:red;">*</span></label>
														<div class="col-sm-4">
														  <input type="text" class="form-control" id="customer" name="customer"
														  	value="<#if order.customer??>${order.customer}</#if>"  placeholder="客户名">
														</div>
														
														<label for="inputName" class="col-sm-1 control-label">包装 <span style="color:red;">*</span></label>
														<div class="col-sm-4">
														  <input type="text" class="form-control" id="package2" name="package2"
														  	value="<#if order.package2??>${order.package2}</#if>"   placeholder="包装">
														</div>
												  </div>
											  </div>
											 
											  <div class="row">
											  	 <div class="form-group">
														<label for="inputAddress" class="col-sm-1 col-sm-offset-1 control-label">备注 <span style="color:red;"></span></label>
														<div class="col-sm-9">
														  <textarea class="form-control" id="remark" name="remark" placeholder="备注">
														  <#if order.remark??>${order.remark}</#if>
														  </textarea>
														</div>
												  </div>
											  </div>
											  
											  <div class="row">
											  	 <div class="form-group">
														<div class="col-sm-offset-5">
															 <a href="/manage/order/list/" class="btn btn-default">取消</a>
															  <button class="btn btn-primary btn-login">编辑</button>
														</div>
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

	<div class="modal fade" id="successModal" data-backdrop="static" tabindex="-1" role="dialog"
             aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog-or">
                <div class="modal-content panel-success">
                    <div class="modal-header">
                        <h4 id="myModalLabel" contenteditable="true">操作提示</h4>
                    </div>
                    <div class="modal-body warning-info-text">
                        <i class="fa fa-check success-icon"></i>
                        &nbsp;<span class="operate-tip"></span>
                    </div>
                    <div class="modal-footer">
                        <a href="/manage/order/list" class="btn btn-primary">确定</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="failureModal" data-backdrop="static" tabindex="-1" role="dialog"
             aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog-or">
                <div class="modal-content panel-success">
                    <div class="modal-header">
                        <h4 id="myModalLabel" contenteditable="true">操作提示</h4>
                    </div>
                    <div class="modal-body warning-info-text">
                        <i class="fa fa-times failure-icon"></i>
                        &nbsp;<span class="operate-tip"></span>
                    </div>
                    <div class="modal-footer">
                        <a href="/manage/order/list" class="btn btn-primary">确定</a>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>
        
</body>

</html>