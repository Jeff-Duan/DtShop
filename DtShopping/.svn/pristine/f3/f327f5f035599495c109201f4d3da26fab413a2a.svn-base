<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--
    	作者：王飞、孙雷
    	时间：2017-08-28
    	描述：前台登录
    -->
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title></title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/font/FontLogin.css" />
<script src="${pageContext.request.contextPath}/static/js/font/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/font/layer/layer.js"></script>

<script type="text/javascript">
			$(document).ready(function(){
				$("#header1").on("click",function(){
					$("#account-login1").show();
					$("#account-login2").hide();
				})
				$("#header2").on("click",function(){
					$("#account-login2").show();
					$("#account-login1").hide();
				})
							
				$("#account-login1").show();
				$("#account-login2").hide();
				
			})
		</script>
</head>
<body>
	<div class="head-logo">
		<div class="head-logo-a">
			<img
				src="${pageContext.request.contextPath}/static/img/fontlogin/yuan.png" />
		</div>
	</div>
	<div class="middle-p"
		style="background-image: url('${pageContext.request.contextPath}/static/img/fontlogin/1.jpg');">
		<div class="middle-login">
			<div class="middle-header">
				<div class="middle-nav">
					<a class="a-a" id="header1" href="javascript:void(0)">账号登录</a>
					<span class="line"></span>
					<a class="a-a" id="header2" href="javascript:void(0)">手机登录</a>
				</div>
				<div class="account-login" id="account-login1">
					<div class="login-area">
							<input id = "email" name="email" class="account-wri" type="email" placeholder="邮箱" />
							<input id = "password" name="password" class="pwd-wri" type="password" placeholder="密码" />
							<input class="button-sumbit" id="llogin" type="button" onclick="login()" value="立即登录"/>
					</div>
					<div class="login-other">
						<a class="out-link" href="register.jsp">注册DT账号</a>
						<span>|</span>
						<a class="out-link" href="index.html">忘记密码？</a>
					</div>
					<div class="bootom-area">
						<legend align="center" class="oth_type_txt">其他方式登录</legend>
						<div class="other-ogin">
						<a href=""><img
							src="${pageContext.request.contextPath}/static/img/fontlogin/qq.png" /></a>
						<a href=""><img
							src="${pageContext.request.contextPath}/static/img/fontlogin/wechat.png" /></a>
						<a href=""><img
							src="${pageContext.request.contextPath}/static/img/fontlogin/pay.png" /></a>
						</div>
					</div>
				</div>
				<div class="account-login" id="account-login2" hidden="hidden">
					<div class="login-area">
						<form id="login-input">
							<input id="pho" class="account-wri" type="text" placeholder="手机号" />			
							<input id="code" class="pwd-wri1" type="text" placeholder="验证码" />
							<input id="btnSendCode" class="pwd-wri2" type="button" value="获取验证码" onclick="sendMessage()" />
							<input class="button-sumbit" id="codelogin" type="button" value="短信登录" onclick="lol()" />
						</form>
					</div>
					<div class="login-other">
						<a class="out-link" href="register.jsp">注册DT账号</a>
						<span>|</span>
						<a class="out-link" href="index.html">忘记密码？</a>
					</div>
					<div class="bootom-area">
						<legend class="oth_type_txt">其他方式登录</legend>
						<div class="other-ogin">
							<a href=""><img
								src="${pageContext.request.contextPath}/static/img/fontlogin/qq.png" /></a>
							<a href=""><img
								src="${pageContext.request.contextPath}/static/img/fontlogin/wechat.png" /></a>
							<a href=""><img
								src="${pageContext.request.contextPath}/static/img/fontlogin/pay.png" /></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		
		<div class="bootom-header">
			<span class="font-font">制作团队:DREAM TEAM (DT)</span>
		</div>
	</body>
</body>
<script type="text/javascript">

$("#email").blur(function(){
	$.ajax({
		url : "/DtShopping/QueryEmailServlet",
		type : "post",
		dataType : "text",
		async : false,
		data : {email:$("#email").val()
		},
		success : function(result) {
			var message = $.parseJSON(result);
			if(message.code==250){				
				$("#llogin").attr("disabled", "true");
				$("#llogin").val( "邮箱未注册");
			}else{
				$("#llogin").removeAttr("disabled");//启用按钮
				$("#llogin").val("立即登录");
			}
		},
		error : function(data) {
			alert("连接失败");
		}
	});
});

$("#pho").blur(function(){
	$.ajax({
		url : "/DtShopping/QueryPhoneServlet",
		type : "post",
		dataType : "text",
		async : false,
		data : {pho:$("#pho").val()
		},
		success : function(result) {
			var message = $.parseJSON(result);
			if(message.code==250){				
				$("#btnSendCode").attr("disabled", "true");
				$("#btnSendCode").val( "手机号码有误");
			}else{
				$("#btnSendCode").removeAttr("disabled");//启用按钮
				$("#btnSendCode").val("发送验证码");
			}
		},
		error : function(data) {
			alert("连接失败");
		}
	});
});
 

var InterValObj; //timer变量，控制时间
var count = 30; //间隔函数，1秒执行
var curCount;//当前剩余秒数
function sendMessage() {
curCount = count;

//设置button效果，开始计时
	$("#btnSendCode").attr("disabled", "true");
	$("#btnSendCode").val( + curCount + "秒后再获取");
	InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
	$.ajax({	
		url : "/DtShopping/CaptchaMsgServlet",
		type : "post",
		dataType : "text",
		async : false,
		data : {pho:$("#pho").val()		
		},
		success : function() {
		},
		error : function(data) {
			alert("连接失败");
		}
	});
	
}
//timer处理函数
function SetRemainTime() {
	if (curCount == 0) {                
		window.clearInterval(InterValObj);//停止计时器
		$("#btnSendCode").removeAttr("disabled");//启用按钮
		$("#btnSendCode").val("重新发送验证码");

	}
	else {
		curCount--;
		$("#btnSendCode").val( + curCount + "秒再获取");
	}
}

function lol() {
	$.ajax({
		url : "/DtShopping/CodeServlet",
		type : "post",
		dataType : "text",
		async : false,
		data : {pho:$("#pho").val(),
			code:$("#code").val()
		},
		success : function(result) {
			var message = $.parseJSON(result);
			if(message.code==200){
				window.location.href='/DtShopping/MainServlet';
			}else{
				layer.tips(message.msg, '#code');
			}
		},
		error : function(data) {
			alert("连接失败");
		}
	});
};

</script>
<script type="text/javascript">
function login(){
	$.ajax({
		url : "/DtShopping/LoginServlet",
		type : "post",
		dataType : "text",
		async : false,
		data : {
			email:$("#email").val(),
			password:$("#password").val()
		},
		success : function(result) {
			var message = $.parseJSON(result);
			 if(message.code==200){
				 layer.alert(message.msg, {
			            icon: 6,
			            skin: 'layer-ext-moon' 
			        });
				window.setTimeout("window.location.href='/DtShopping/MainServlet'",1000);
			} else{
				layer.alert(message.msg, {
		            icon: 5,
		            skin: 'layer-ext-moon' 
		        });
			}
		},
		error : function(data) {
			alert("连接失败");
		}
			
	});};

		 

</script>
</html>