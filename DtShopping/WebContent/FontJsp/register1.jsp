<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<!--
	作者：王飞、孙雷
	时间：2017-08-28
	描述：注册末页
-->
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title></title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/font/register3.css" />
<script
	src="${pageContext.request.contextPath}/static/js/font/jquery-3.2.1.min.js"
	type="text/javascript" charset="utf-8"></script>
<script
	src="${pageContext.request.contextPath}/static/js/font/layer/layer.js"></script>

</head>

<body>
	<%
		String name = (String) request.getParameter("email");
	%>
	<div class="bod">

		<div class="center">
			<img
				src="${pageContext.request.contextPath}/static/img/fontlogin/yuan.png" />
			<div class="top-header">

				<h4 class="titlea">注册DT账号</h4>
			</div>
			<div class="pho-stp">
				<p>
					<span class="regis-as">你注册的邮箱账号为:&nbsp</span> <span
						style="color: #ff8040"><%=name%></span>
				</p>
				<p>
					<span class="regis-as1">请设置您的密码</span>
				</p>
				<input id="password1" class="email-login" type="password"
					placeholder="请输入密码" /> <input id="password2" class="email-login"
					type="password" placeholder="请再次输入密码" />
			</div>
			<input type="button" class="pho-button" value="提交" onclick="reg()" />
			<a href="${pageContext.request.contextPath}/FontJsp/register.jsp"><input
				type="button" class="pho-button1" value="返回" /></a>
		</div>
	</div>
	<div class="bootom-header">
		<span class="font-font">制作团队:DREAM TEAM (DT)</span>
	</div>
</body>
<script type="text/javascript">
	function reg() {
				$.ajax({
					url : "/DtShopping/RegisterServlet1",
					type : "post",
					dataType : "text",
					async : false,
					data : {
						password1 : $("#password1").val(),
						password2 : $("#password2").val()
					},
					success : function(result) {
						var message = $.parseJSON(result);
						if (message.code == 200) {
							layer.alert(message.msg, {
								icon : 6,
								skin : 'layer-ext-moon'
							});
							window.setTimeout("window.location.href='/DtShopping/FontJsp/login.jsp'",1200);
						} else {
							layer.alert(message.msg, {
								icon : 5,
								skin : 'layer-ext-moon'
							});
						}
					},
					error : function(data) {
						alert("连接失败");
					}
				});
	};

	/* 	 var message = ${msg};
	 alert(message)
	 if(message==200){ 
	 layer.alert('恭喜你，注册成功', {
	 icon: 6,
	 skin: 'layui-layer-lan' 
	 }); 
	 return false
	 } 
	 else{ 
	 layer.alert('注册失败',{
	 icon: 5,
	 skin: 'layui-layer-molv'
	 }); 	 
	 }  */
</script>

</html>