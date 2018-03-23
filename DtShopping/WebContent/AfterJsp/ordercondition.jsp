<%@ page language="java"  import="java.util.*" import="model.Order" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>订单列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/static/css/after/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/static/js/after/jquery.js"></script>
<script src="${pageContext.request.contextPath}/static/js/after/public.js"></script>
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="order"></i><em>订单列表</em></span>
  </div>
  
  <table class="list-style Interlaced">
   <tr>
    <th>订单编号</th>
    <th>收件人</th>
    <th>商品名</th>
    <th>订单数量</th>
    <th>订单金额</th>
    <th>付款状态</th>
    <th>订单状态</th>
    
   </tr>
   <%
		 Order order=(Order)request.getAttribute("order");
      %>
   <tr>
    <td class="center">${requestScope.order.order_id}</td>
    <td class="center">
     ${requestScope.order.reman}
    </td>
    <td class="center">
     ${requestScope.order.commname}
    </td>
    <td class="center">
     ${requestScope.order.count}
    </td>
    <td class="center">
     ${requestScope.order.ordermoney}
    </td>
    <td class="center">
     ${requestScope.order.paystatus}
    </td>
   <td class="center">
     ${requestScope.order.orderstatus}
    </td>
   </tr>

  </table>
 
 </div>
</body>
</html>