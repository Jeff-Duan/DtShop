<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<title>产品列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/static/css/after/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/static/js/after/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/after/public.js"></script>
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><img alt="商品回收站" src="${pageContext.request.contextPath}/static/img/after/回收站(1).png"> <em>商品回收站</em></span>
  </div>
  <div class="operate">
   <form action="queryRecoverGoodServlet" method="post">
   	手机类型：
    <select id="ss" class="inline-select" name="type" style=" width:20% " >
    	<option value="0" selected = "selected">全部</option>
    	<c:forEach items="${product_type}" var="good">
    		<option value="${good.goodtypeid}">${good.goodstypename}</option>
    	</c:forEach>
    </select>
   <!--  <input type="text" class="textBox length-long" placeholder="输入产品名称..."/> -->
    <input type="submit" value="查询" class="tdBtn"/></a>
   </form>
  </div>
  <table class="list-style Interlaced">
   <tr>
   <th> </th>
    <th>ID</th>
    <th>商品名称</th>
    <th>商品价格</th>
    <th>商品类型</th>
    <th>商品描述</th>
    <th>商品样式</th>
    <th>商品数量</th>
    <th>商品销量</th>
    <th>上架日期</th>
    <th>删除日期</th>
    <th>操作</th>
   </tr>
   
   <c:forEach items="${product}" var="good">
   	 <tr>
    <td>
     <span>
     <input type="checkbox" class="middle children-checkbox"/>
     </span>
    </td>
    <td class="center">
    <span>${good.goodsid}</span>
    </td>
    <td class="center">
      <span>${good.goodsname}</span>
    </td>
    <td class="center">
     <span>
     	<em>￥</em>${good.goodsprice}
     </span>
    </td>
    <td class="center">
     <span>${good.goodtypeid}</span>
    </td>
    <td class="td-name">
     <span class="ellipsis td-name block">${good.goodsinfo}</span>
    </td>
    <td class="center">
     <img src="${pageContext.request.contextPath}/static/img/1503976692754.png" />
    </td>
    <td class="center">
     <span>
      <em>${good.goodcount}</em>
      <i>件</i>
     </span>
    </td>
    <td class="center">
     <span>
      <em>${good.goodssail}</em>
      <i>件</i>
     </span>
    </td>
    <td class="center">
     <span>${good.goodsdate}</span>
    </td>
    <td class="center">
     <span>${good.goodsdeldate}</span>
    </td>
    <td class="center">
     <a href="${pageContext.request.contextPath}/recoverGoodServlet?goodsid=${good.goodsid}" title="恢复" ><img src="${pageContext.request.contextPath}/static/img/after/数据恢复.png"/></a>
     
    </td>
   </tr>
   </c:forEach>
  
  </table>
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
      <!-- Operation -->
	  <div class="BatchOperation fl">
	   <input type="checkbox" id="del"/>
	   <label for="del" class="btnStyle middle">全选</label>
	   <input type="button" value="批量删除" class="btnStyle"/>
	  </div>
	  <!-- turn page -->
	  <div class="turnPage center fr">
	   <a>第一页</a>
	   <a>1</a>
	   <a>最后一页</a>
	  </div>
  </div>
 </div>
</body>
</html>