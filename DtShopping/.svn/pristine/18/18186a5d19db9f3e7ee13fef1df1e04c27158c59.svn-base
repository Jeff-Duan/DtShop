<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="/DtShopping/static/css/font/bootstrap1.css" />
		<link rel="stylesheet" href="/DtShopping/static/css/font/maincss.css" />
		<link rel="stylesheet" href="/DtShopping/static/css/font/geren.css" />
		<script type="text/javascript" src="/DtShopping/static/js/font/jquery-3.2.1.min.js" ></script>
		<script type="text/javascript" src="/DtShopping/static/js/font/bootstrap.min.js" ></script>
		<script type="text/javascript" src="/DtShopping/static/js/font/main.js" ></script>
	</head>
	<body>
		<%@ include file="Header.jsp" %>
		<div id="bbig">
			<%@ include file="grleftlan.jsp" %>
			<div id="gr-rightlan" style="margin-left: 15px;">
				<div id="gr-touxianglan">
					<div id="touxiang">
						<img src="/DtShopping/static/img/after/<%=user.getPicture() %>" alt="头像" class="img-circle" height="165px">
					</div>
					<div id="gr-namelan">
					<%
					user=(User)session.getAttribute("user");
				%>
						<p style="font-size: 28px;font-family: 'blackadder itc';"><%=user.getUsername()%></p>
						<p style="color: darkgray; font-size: 16px;margin-top: 20px;">DT商城欢迎你</p>
						<a href="/DtShopping/FontJsp/grchange.jsp"><p style="color: red; font-size: 14px;margin-top: 17px;">修改个人信息></p></a>
					</div>
				</div>
				<div id="gr-message">
					<ul>
						<li>昵称：<%=user.getUsername()%></li>
						<li>生日：<%=user.getBirthday()%></li>
						<li>邮箱：<%=user.getEmail() %></li>
						<li>姓名：<%=user.getRealname()%></li>
						<li>手机：<%=user.getTelphone() %></li>
						<li>性别：
					<%
						if(user.getSex().equals("1")){
					%>
						男士
					<%
						}else{
					%>
						女士
					<% 
					}
					%>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>

