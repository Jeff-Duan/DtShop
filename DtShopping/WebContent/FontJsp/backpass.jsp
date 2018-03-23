<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--
	作者：王飞
	时间：2017-08-28
	描述：找回密码首页
-->
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font/register.css" />
		<script src="${pageContext.request.contextPath}/static/js/font/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<div class="bod">
			
			<div class="center">
				<img src="${pageContext.request.contextPath}/static/img/fontlogin/yuan.png" />
				<div class="top-header">				
					<h4 class="titlea">重置密码</h4>
				</div>
				<form class="regist" method="post" action="${pageContext.request.contextPath}/BackPassServlet">
					<div class="pho-stp">
						<h4 class="pho-email">请输入注册的电子邮箱</h4>
						<input name="email" class="email-login" type="text" placeholder="请输入邮箱账号" />
						<h4 class="pho-email1">验证码</h4>
						<input name="validate" class="pho-yan" type="text" placeholder="请输入验证码" />
						<span class="span"> <img id="validate"
						src="/DtShopping/ValidateServlet" onclick="fresh()">
					</span>
					</div>		
					<input type="submit"  class="pho-button" value="找回密码" />
				</form>
			</div>
		</div>
		<div class="bootom-header">
			<span class="font-font">制作团队:DREAM TEAM (DT)</span>
		</div>
	</body>
	<script type="text/javascript">
	function fresh() {
		var timetampv = new Date().getTime();
		$("#validate").attr("src",
				'/DtShopping/ValidateServlet?random' + timetampv)
	}
	</script>

</html>