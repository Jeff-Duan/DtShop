<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<title>后台管理中心主页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/static/css/after/adminStyle.css" rel="stylesheet" type="text/css" />
<style>html,body{width:100%;height:100%;}</style>
<script src="${pageContext.request.contextPath}/static/js/after/jquery.js"></script>
<script src="${pageContext.request.contextPath}/static/js/after/public.js"></script>
</head>

<body>
<div class="wrap start-page">
 <h1><i class="home-icon"></i>欢迎回到DT国际旗下销售管理中心</h1>
 <dl>
  <dt>订单统计信息</dt>
  <dd>
   <ul>
    <li>
     <span>待发货订单：</span>
     <span>${dfhdd}</span>
    </li>
    <li>
     <span>未确认订单：</span>
     <span>${wqrdd}</span>
    </li>
    <li>
     <span>成交订单：</span>
     <span>${ycjdd}</span>
    </li>
   </ul>
  </dd>
 </dl>
 
 <dl>
  <dt>商品统计信息</dt>
  <dd>
   <ul>
    <li>
     <span>商品总种类：</span>
     <span>${spzzl}</span>
    </li>
    
    <li>
     <span>手机类：</span>
     <span>${sjl}</span>
    </li>
    <li>
     <span>电脑类：</span>
     <span>${dnl}</span>
    </li>
    <li>
     <span>路由器类：</span>
     <span>${lyql}</span>
    </li>
    <li>
     <span>其他智能配件类：</span>
     <span>${qtl}</span>
    </li>
   </ul>
  </dd>
 </dl>
 
 <dl>
  <dt>用户统计信息</dt>
  <dd>
   <ul>
    <li>
     <span>注册用户：</span>
     <span>${zcyh}</span>
    </li>
    <li>
     <span>下过单用户：</span>
     <span>${xgdyh}</span>
    </li>
    <li>
     <span>忠实用户：</span>
     <span>${zsyh}</span>
    </li>
    <li>
     <span>未下单用户：</span>
     <span>${wxdyh}</span>
    </li>
   </ul>
  </dd>
 </dl>

 

 
 
</div>
</body>
</html>