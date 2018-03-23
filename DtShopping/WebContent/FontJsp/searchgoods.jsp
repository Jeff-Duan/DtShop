<%@page import="utils.PageModel"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="/DtShopping/static/css/font/bootstrap1.css" />
		<link rel="stylesheet" href="/DtShopping/static/css/font/searchno.css" />
		<script type="text/javascript" src="/DtShopping/static/js/font/jquery-3.2.1.min.js" ></script>
		<script type="text/javascript" src="/DtShopping/static/js/font/bootstrap.min.js" ></script>
		<script type="text/javascript" src="/DtShopping/static/js/font/main.js" ></script>
		
	</head>
	
<body>
<%@ include file="Header.jsp" %>
	<%
		PageModel pageModel=(PageModel)request.getAttribute("pageModel");
		String zhi=(String)request.getAttribute("zhi");
	%>
	<div id="searchkuang">
			<div style="padding-left: 65px;"><a href="/DtShopping/MainServlet">首页&nbsp;</a>><a href="/DtShopping/searchServlet?mohuzhi=<%=zhi%>">&nbsp;全部结果&nbsp;</a>>&nbsp;<%=zhi%></div>
			<div id="searchmu">
				<ul class="w1">
					<li class="fenlei" style="width: 55px;">分类：</li>
					<li>全部</li>
					<li>手机</li>
					<li>平板</li>
					<li>笔记本</li>
					<li>路由器</li>
					<li>盒子</li>
					<li>电视</li>
					<li>单反</li>
					<li id="more1" style="width: 45px;">更多∨</li>
				</ul>	
			</div>
			<div id="xiala1" hidden="hidden">
				<ul>
					<li>手机贴膜</li>
					<li>保护套/保护壳</li>
					<li>耳机</li>
					<li>VR眼镜</li>
					<li>移动电源</li>
					<li>美图</li>
					<li>音响</li>
					<li>iWatch</li>
					<li>智能手环</li>
					<li>智能手表</li>
					<li>手机支架</li>
					<li>数据线</li>
					<li>录音笔</li>
					<li>家用电池</li>
					<li>拍立得</li>
				</ul>
			</div>
			<div id="searchmu1">
				<ul class="w1">
					<li class="fenlei" style="width: 55px;">品牌：</li>
					<li>全部</li>
					<li>华为</li>
					<li>360</li>
					<li>苹果</li>
					<li>小米</li>
					<li>一加</li>
					<li>三星</li>
					<li>vivo</li>
					<li id="more2" style="width: 45px;">更多∨</li>
				</ul>	
			</div>
			<div id="xiala2" hidden="hidden" >
				<ul>
					<li>ZTE中兴</li>
					<li>金立</li>
					<li>酷派</li>
					<li>荣耀</li>
					<li>锤子</li>
					<li>美图</li>
					<li>oppo</li>
					<li>魅族</li>
					<li>HTC</li>
					<li>诺基亚</li>
					<li>索尼</li>
					<li>摩托罗拉</li>
					<li>AGM</li>
					<li>乐视</li>
					<li>联想</li>
					<li>夏普</li>
					<li>黑莓</li>
					<li>飞利浦</li>
					<li>天语</li>
					<li>8848</li>
				</ul>
			</div>
			<div id="searchmu1">
				<ul class="w1">
					<li class="fenlei" style="width: 55px;">尺寸：</li>
					<li>全部</li>
					<li>3.0英寸及以下</li>
					<li>4.5-3.1英寸</li>
					<li>5.0-4.6英寸</li>
					<li>5.5-5.1英寸</li>
					<li>5.6英寸及以上</li>
					<li>其他</li>
					<li></li>
					<!-- <li id="more3" style="width: 45px;">更多∨</li> -->
				</ul>	
			</div>
			<!-- <div id="xiala3" hidden="hidden"></div> -->
			
			<div id="goodsdisplay">
				<div id="goodspaly-header">
				<ul id="ulone">
					<li style="width: 50px;">推荐</li>
					<li class="ulone-ge">新品</li>
					<li class="ulone-ge">价格&nbsp;↑</li>
					<li class="ulone-ge">热评</li>
				</ul>
				<ul id="ultwo">
					<li style="width: 100px;"><input type="checkbox"/>查看评价</li>
					<li><input type="checkbox"/>仅显示特惠商品</li>
					<li style="width:119px ;"><input type="checkbox"/>仅显示有货商品</li>
				</ul>
				</div>
				
				<div id="goodspaly-big">
					<div id="zhanshi">
						<ul>
							<%for(int i=0;i<pageModel.getList().size();i++){
								HashMap hsMap=(HashMap)pageModel.getList().get(i);
							%>
								<li>
									<img src="/DtShopping/static/img/mainimg/<%=hsMap.get("goodsimg")%>" alt="通用的占位符缩略图"/>
									<%=hsMap.get("goodsname")%>
									<p style="color:orangered"><%=hsMap.get("goodsprice")%>元</p>
								</li>
							<%
								}
							%>
						</ul>
					</div>
					<div id="fenbtn">
					第<select  id="page"  style="height: 30px;width: 50px;">
						<option><%=pageModel.getPage()%></option>
					</select>页
					<button type="button" id="fbtn1"
						class="btn btn-default" 
						aria-label="Left Align"> 
						<img src="/DtShopping/static/img/mainimg/j3.jpg" style="height:12px" />
					</button>
					<button type="button" id="fbtn2"
						class="btn btn-default" 
						aria-label="Left Align"> 
						<img src="/DtShopping/static/img/mainimg/j4.jpg" style="height:12px" />	
					</button>
					<span>共有-<%=pageModel.getTotalPage() %>-页</span>
					</div>
				</div>
			</div>
		</div>
			 <!--热门栏-->
		<div id="photolan1">
			<div id="bao">
				热门<span style="color: red;">推荐</span>
				<button type="button" id="phbtn1"
					class="btn btn-default" 
					aria-label="Left Align"> 
					<img src="/DtShopping/static/img/mainimg/j3.jpg" style="height:12px" />
				</button>
				<button type="button" id="phbtn2"
					class="btn btn-default" 
					aria-label="Left Align"> 
					<img src="/DtShopping/static/img/mainimg/j4.jpg" style="height:12px" />	
				</button>			
			</div>
			<div id="hot">
			<%
				List list1=(List)request.getAttribute("hotgoods");
			%>
    			<div class="mobanlian" id="qq" >
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(0)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(0)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(0)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
   				<div id="ww" class="mobanlian" >
       				<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(1)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(1)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(1)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
    			<div id="ee" class="mobanlian">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(2)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(2)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(2)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
    			<div  id="rr" class="mobanlian">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(3)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(3)).get("goodsname")%>
               				<p><%=((HashMap)list1.get(3)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
				<div id="tt" class="mobanlian">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(4)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(4)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(4)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
    			<div id="yy" class="mobanlian" hidden="hidden">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(5)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(5)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(5)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
    			<div id="uu" class="mobanlian" hidden="hidden">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(6)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(6)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(6)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
    			<div id="ii" class="mobanlian" hidden="hidden">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(7)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(7)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(7)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
    			<div id="oo" class="mobanlian" hidden="hidden">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(8)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(8)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(8)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
    			<div id="pp" class="mobanlian" hidden="hidden">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(9)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(9)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(9)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
			</div>
			<input id="zhi" type="hidden" value=<%=zhi%>>
		</div>
	<%@ include file="Footer.jsp" %>
	<script>
			$(document).ready(function(){
				$("#fbtn1").on("click",function(){
					var page=$("#page").val();
					var mohuzhi=$("#zhi").val();
					if(page>1){
						location.href = "searchServlet?a=1&page=<%=pageModel.getPage()%>&mohuzhi="+mohuzhi;
					}
				})
				
				$("#fbtn2").on("click",function(){
					var page=$("#page").val();
					var mohuzhi=$("#zhi").val();
					if(page<<%=pageModel.getTotalPage() %>){
						location.href = "searchServlet?a=0&page=<%=pageModel.getPage()%>&mohuzhi="+mohuzhi;
					}
					
				})
				
			})
		</script>
</body>
</html>