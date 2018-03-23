<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<title>修改管理员信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/static/css/after/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/static/js/after/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/after/laydate/laydate.js"></script>
<script src="${pageContext.request.contextPath}/static/js/after/public.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/after/wangEditor.min.js"></script>
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><img alt="个人信息" src="${pageContext.request.contextPath}/static/img/after/个人信息.png"> <em>个人信息</em></span>
    <span class="modular fr"><a href="${pageContext.request.contextPath}/queryManagerInfoServlet?managerid=${Manager.managerid}&permission=${permission_level}" class="pt-link-btn">修改个人信息</a></span>
  </div>
  <form   method="post" >
  <table class="list-style">
   <tr>
    <td style="text-align:right;width:15%;">姓名：</td>
    <td><input type="text" readonly="readonly" class="textBox length-long"  name="realname" value="${Manager.realname}"/></td>
   </tr>
   <tr>
    <td style="text-align:right;width:15%;">账号：</td>
    <td>
     <input type="text" readonly="readonly" class="textBox length-long" name="username" value="${Manager.username}"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;width:15%">邮箱：</td>
    <td>
     <input type="text" readonly="readonly" class="textBox length-long" name="email" value="${Manager.email}"/>
    </td>
   </tr>
    <tr>
    <td style="text-align:right;width: 15%">头像：</td>
    <td>
     <img id="gmg" src="${pageContext.request.contextPath}/static/img/mainimg/${Manager.photo}" width="60" height="60" class="mlr5"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;width:15%;">加入日期：</td>
    <td><input id="pushdate" type="date" readonly="readonly" class="textBox length-long" name="boonday" value="${Manager.boonday}"/></td>
   </tr>
   <tr>
    <td style="text-align:right;width:15%;">最后登录日期：</td>
    <td><input id="lastdate" type="date" readonly="readonly" class="textBox length-long" name="lastlogen" value="${Manager.lastlogen}"/></td>
   </tr>
  </table>
  </form>
 </div>
</body>
</html>