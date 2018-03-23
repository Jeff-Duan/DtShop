<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<title>会员列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/static/css/after/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/static/js/after/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/after/public.js"></script>
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><img alt="会员列表" src="${pageContext.request.contextPath}/static/img/after/user_01.png"><em>会员列表</em></span>
    
  </div>
  <div class="operate">
   <form action="QueryUserServlet?page=1&rows=10" method="post">
   	
    <input type="text"  name="id" class="textBox length-long" placeholder="输入会员编号"/>
    <input type="submit" value="查询" class="tdBtn"/></a>
    <input type="button" value="返回" class="tdBtn" onclick="javascript:history.back(-1);"/>
   </form>
  </div>
  <table class="list-style Interlaced">
   <tr>
   <th> </th>
    <th>编号</th>
    <th>昵称</th>
    <th>密码</th>
    <th>姓名</th>
    <th>性别</th>
    <th>出生日期</th>
    <th>邮箱</th>
    <th>手机</th>
    <th>头像</th>
    <th>状态</th>
    <th>操作</th>
   </tr>
   
   <c:forEach items="${user.list}" var="user">
   	 <tr>
    <td>
     <span>
     <input type="checkbox" class="middle children-checkbox"/>
     </span>
    </td>
    <td class="center">${user.user_id}</td>
    <td class="center">${user.username}</td>
    <td class="center"> ${user.password}</td>
    <td class="center">${user.realname}</td>
    <td class="center">${user.sex}</td>
    <td class="center">${user.birthday}</td>
    <td class="center">
     <span>${user.email}</span>
    </td>
    <td class="center">${user.telphone}</td>
    <td class="center">
     <img src="${pageContext.request.contextPath}/static/img/after/${user.picture}"width="20" height="20" class="img-circle" />
    </td>
    <td class="center">${user.state}</td>
    <td class="center">
    <a href="${pageContext.request.contextPath}/UserBackServlet?id=${user.user_id}" class="inline-block" title="编辑"><img src="${pageContext.request.contextPath}/static/img/after/icon_edit.gif"/></a>
    </td>
   </tr>
   </c:forEach>
  
  </table>
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
      <!-- Operation -->
	  <div class="BatchOperation fl">
	   
	   

	   
	  </div>
	  <!-- turn page -->
	  <div class="turnPage center fr">
	   <a>共${user.totalPage}页</a>
	   <c:set var="page" value="${user.page}"></c:set>
	   <c:set var="lastpage" value="${user.totalPage}"></c:set>
	   <c:choose>
	   		<c:when test="${page==1}">
	   		<a>上一页</a>
	   		</c:when>
	   		<c:otherwise>
	   			<a href="${pageContext.request.contextPath}/QueryUserServlet?page=<c:out value="${page-1}"/>&rows=10"  >上一页</a>
	   		</c:otherwise>
	   </c:choose>
	   
	   <a>第${user.page}页</a>
	   <c:choose>
	   		<c:when test="${page==lastpage}">
	   		 <a>下一页</a>
	   		</c:when>
	   		<c:otherwise>
	   			 <a href="${pageContext.request.contextPath}/QueryUserServlet?page=<c:out value="${page+1}"/>&rows=10">下一页</a>
	   		</c:otherwise>
	   </c:choose>
	   <a>共${user.total}条</a>
	  </div>
  </div>
 </div>
</body>
</html>