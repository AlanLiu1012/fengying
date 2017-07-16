<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<head> 

<#include "/fragments/layout.ftl"/>

<style type="text/css">
	body { background: url(air2u-manage/resources/static_/img/bg-login.jpg) !important; }
</style>
		
<script>
  $(document).ready(function() {
 	$('#loginForm').bootstrapValidator({
         message:'This value is not valid',
         feedbackIcons: {
             valid: 'glyphicon glyphicon-ok',
             invalid: 'glyphicon glyphicon-remove',
             validating: 'glyphicon glyphicon-refresh'
         },
         fields: {
             username: {
                message: 'The username is not valid',
                 validators: {
                     notEmpty: {
                         message: 'The username is required.'
                     }
                 }
             },
             password: {
                 validators: {
                     notEmpty: {
                         message: 'The password is required.'
                     }
                 }
             }
         }
      }).on('success.form.bv', function(e) { //点击提交之后
        	$("#loginForm").data('bootstrapValidator').destroy();
            $("#loginForm").attr("action","/air2u-manage/user/user_login/");
            $("#loginForm").submit();
    });

 
     $('.btn-login').click(function(){
         $('#loginForm').bootstrapValidator('validate');
     });
    });
</script>


</head>

<body class="login">	
	<section id="page">
		<header>
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<div id="logo" style="margin-top:60px;">
							<h2>苏州丰盈工程塑胶有限公司</h2>
						</div>
					</div>
				</div>
			</div>
		</header>
		<section id="login" class="visible">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<div class="login-box-plain">
							<h2 class="bigintro">用户登录</h2>
							<div class="divide-40"></div>
							<form role="form" id="loginForm" method="post" class="form-horizontal">
							  <div class="form-group">
								<label for="exampleInputEmail1">用户账号</label>
								<i class="fa fa-envelope"></i>
								<input type="text" class="form-control" name="username" id="username" placeholder="请输入账号">
							  </div>
							  <div class="form-group" id="loginForm" method="post" class="form-horizontal"> 
								<label for="exampleInputPassword1">用户密码</label>
								<i class="fa fa-lock"></i>
								<input type="password" class="form-control" name="password" id="password" placeholder="请输入密码">
							  </div>
							  <div class="form-actions">
								<button class="btn btn-primary btn-login">登录</button>
							  </div>
							</form>
							<div class="divide-20"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
			
	</section>
	
	<script>
		jQuery(document).ready(function() {		
			App.setPage("login");  //Set current page
			App.init(); //Initialise plugins and elements
		});
	</script>
	<script type="text/javascript">
		function swapScreen(id) {
			jQuery('.visible').removeClass('visible animated fadeInUp');
			jQuery('#'+id).addClass('visible animated fadeInUp');
		}
	</script>
</body>
</html>