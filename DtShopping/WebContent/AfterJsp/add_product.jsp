<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
    <span class="modular fl"><img alt="添加商品" src="${pageContext.request.contextPath}/static/img/after/添加(1).png"> <em>添加产品</em></span>
 <%--    <span class="modular fr"><a href="${pageContext.request.contextPath}/queryGoodServlet" class="pt-link-btn">商品列表</a></span>  --%>
  </div>
  <form action="/DtShopping/addGoodServlet"  method="post" id="uploadForm">
  <table class="list-style">
   <tr>
    <td style="text-align:right;width:15%;">商品名称：</td>
    <td><input type="text" class="textBox length-long"  name="goodsname" datatype="s2-20" errormsg="商品名称最少2个字符，最多20个字符"/></td>
   </tr>
   <tr>
    <td style="text-align:right;width:15%;">商品分类：</td>
    <td>
    <select id="ss" class="inline-select" name="goodstypeid" style=" width:32% " datatype="*" errormsg="请选择类型" >
   		 <option value="">--请选择类型--</option>
    	<c:forEach items="${product_type}" var="good">
    		<option value="${good.goodtypeid}">${good.goodstypename}</option>
    	</c:forEach>
    </select>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;width: 15%">商品价格：</td>
    <td>
     <input type="text" class="textBox length-long" name="goodsprice" datatype="n" errormsg="价格必须是数字"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;width: 15%">库存：</td>
    <td> 
     <input type="text" class="textBox length-long" name="goodcount" datatype="n" errormsg="库存必须是数字"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;width: 15%">商品销量：</td>
    <td> 
     <input type="text" class="textBox length-long" name="goodsail" datatype="n" errormsg="销量必须是数字"/>
    </td>
   </tr>
    <tr>
    <td style="text-align:right;width: 15%">商品缩图片：</td>
    <td>
    <img id="gmg" src="${pageContext.request.contextPath}/static/img/after/default.png" width="60" height="60"/>
     <input type="file" id="suoluetu"   name="goodmg"/>
     <input id="btn" type="button" value="上传"  />
     <!-- <label for="suoluetu" class="labelBtnAdd">+</label> -->
     
    </td>
   </tr>

   <tr>
    <td style="text-align:right;width:15%;">上架日期：</td>
    <td><input id="pushdate" type="date" class="textBox length-long" name="gooddate"  value="" datatype="/^\d{4}(\-|\/|\.)\d{1,2}\1\d{1,2}$/" errormsg="请选择上架日期"/></td>
   </tr>
   
   
    <tr>
	<!--  <td style="text-align:right;width:15%;"></td> -->
    <td><input  id="desc" type="hidden" name="desc" class="textBox length-long"  value="" datatype="s10-200" errormsg="最少10个字符，最多200个字符"/></td>
   </tr>
   
   <tr>
    <td style="text-align:right;">商品描述：</td>
    <td>    
    <div id="editor" name="editor">
        
    </div>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input id="mybtn" type="submit" value="发布新商品" /></td>
   </tr>
  </table>
  </form>
 </div>
 <script type="text/javascript">
	$("#uploadForm").Validform({
		tiptype: 3
	});
</script>
</body>
	<script type="text/javascript">
		!function() {
			laydate({
				elem: '#pushdate'
			})
		}();
	</script>
	 <script type="text/javascript">
        var E = window.wangEditor
        var editor = new E('#editor')
        // 或者 var editor = new E( document.getElementById('#editor') )
        editor.create()
        
        document.getElementById("editor").addEventListener('focusout', function () {
        // 读取 html
        /* alert(editor.txt.text()); */
        document.getElementById("desc").value=editor.txt.text();
    }, false)

    </script>
    
    <script type="text/javascript">
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
</script>


</html>