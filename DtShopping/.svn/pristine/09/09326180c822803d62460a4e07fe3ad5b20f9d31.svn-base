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
    <span class="modular fl"><img alt="修改管理员" src="${pageContext.request.contextPath}/static/img/after/修改用户信息.png"> <em>修改管理员信息</em></span>
   <%--  <span class="modular fr"><a href="${pageContext.request.contextPath}/queryManagerServlet?permission=${Manager.permission}" class="pt-link-btn">管理员列表</a></span> --%>
  </div>
  <form action="/DtShopping/updataManagerServlet"  method="post" id="uploadForm">
  <table class="list-style">
   <tr>
    <td style="text-align:right;width:15%;">管理员编号：</td>
    <td><input type="text" readonly="readonly" class="textBox length-long"  name="managerid"  value="${Manager.managerid}"/></td>
   </tr>
   <tr>
    <td style="text-align:right;width:15%;">管理员姓名：</td>
    <td><input type="text" readonly="readonly" class="textBox length-long"  name="realname" value="${Manager.realname}"/></td>
   </tr>
   <tr>
    <td style="text-align:right;width:15%;">管理员账号：</td>
    <td>
     <input type="text" readonly="readonly" class="textBox length-long" name="username" value="${Manager.username}"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;width:15%">管理员邮箱：</td>
    <td>
     <input type="text" readonly="readonly" class="textBox length-long" name="email" value="${Manager.email}"/>
    </td>
   </tr>
    <tr>
    <td style="text-align:right;width: 15%">管理员头像：</td>
    <td>
     <img id="gmg" src="${pageContext.request.contextPath}/static/img/mainimg/${Manager.photo}" width="60" height="60" class="mlr5"/>
    <!--  <input type="file" id="suoluetu"   name="goodmg"/>
     <input id="btn" type="button" value="上传"  /> -->
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
    <tr>
    <td style="text-align:right;width:15%">管理员级别：</td>
    <td> 
     	<select name="pp">
     	<option value="0">请选择</option>
     	<option value="2">订单管理员</option>
     	<option value="3">商品管理员</option>
     	<option value="4">用户管理员</option>
     	</select>
    </td>
   </tr>
    <tr>
    <td style="text-align:right;width:15%">管理员状态：</td>
    <td> 
     <select name="sta">
     	<option value="2">请选择</option>
     	<option value="1">正常</option>
     	<option value="0">冻结</option>
     </select>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input id="mybtn" type="submit" value="修改管理员" /></td>
   </tr>
  </table>
  </form>
 </div>
</body>
<!-- 	<script type="text/javascript">
		!function() {
			laydate({
				elem: '#pushdate'
			})
		}();
	</script>  
	<script type="text/javascript">
		!function() {
			laydate({
				elem: '#lastdate'
			})
		}();
	</script>  -->
<!--      <script type="text/javascript">
	$(document).ready(function(){
		$("#btn").click(function(){
			//传入一个非query对象
			var data = new FormData($("#uploadForm")[0]); 
		    $.ajax({
		        type:'POST',
		        url:"/DtShopping/uploadImagesServlet",
		        cache: false,
		        data: data,
		        contentType: false,  
		        processData: false,
		        async: true,
		        success: function(data){
		        	var im=$.parseJSON(data);
		        	$("#gmg").attr("src",im.url);
		        },
		        error: function(){
		            alert("error");
		        }
		    });
		});
	});
</script> -->
</html>