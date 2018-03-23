<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>产品列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/static/css/after/adminStyle.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/static/css/after/mycss.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/static/js/after/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/after/laydate/laydate.js"></script>
<script src="${pageContext.request.contextPath}/static/js/after/public.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/after/wangEditor.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/after/Validform_v5.3.2_min.js"></script>
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><img alt="添加商品类型" src="${pageContext.request.contextPath}/static/img/after/添加(1).png"> <em>添加产品</em></span>
 <%--    <span class="modular fr"><a href="${pageContext.request.contextPath}/queryGoodServlet" class="pt-link-btn">商品列表</a></span>  --%>
  </div>
  <form action="/DtShopping/addGoodTypeServlet"  method="post" id="addtype">
  <table class="list-style">
   <tr>
    <td style="text-align:right;width:15%;">商品类型名称：</td>
    <td><input type="text" class="textBox length-long"  name="goodstypename"  datatype="s1-20" errormsg="最少2个字符，最多20个字符"/></td>
   </tr>
    <tr>
    <td style="text-align:right;"></td>
    <td><input id="mybtn" type="submit" value="提交"  /></td>
   </tr>
  </table>
  </form>
 </div>
 		<script type="text/javascript">
			$("#addtype").Validform({
				tiptype: 3
			});
		</script>
</body>
</html>