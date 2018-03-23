<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
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
<script src="${pageContext.request.contextPath}/static/js/after/echarts.js"></script>
</head>
<%HashMap map=(HashMap)session.getAttribute("all"); %>
<body>
<div class="wrap start-page">
 <h1><i class="home-icon"></i>欢迎回到DT国际旗下销售管理中心</h1>
 <dl>
  <%-- <dd>
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
  </dd> --%>
  <div id="main" style="width: 80%;height:170px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '用户统计信息'
            },
            tooltip: {},
            legend: {
                data:['数量']
            },
            xAxis: {
                data: ["待发货订单","未确认订单","成交订单"]
            },
            yAxis: {},
            series: {
                name: '数量',
                type: 'bar',
                itemStyle:{
                    normal:{
                        color:'#1C86EE'
                    }
                }
            }
            
            
        };

        option.series['data']=[4,0,0]; 
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
       
        $.ajax({
            type: "POST",
            url:"/DtShopping/CountAllServlet",
            async: true,
            success: function(msg) {
            	alert(msg);
            	var mess = $.parseJSON(msg);
            	alert("mess.zchy");
                if (mess!=null) {
                	  
                        }
                        else {
                            alert("修改失败！");
                        } 
              
            }
            
        });
        
    </script>
 </dl>
 
 <dl>
 <%--  <dt>商品统计信息</dt>
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
  </dd> --%>
  <div id="main2" style="width: 80%;height:170px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main2'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '商品统计信息'
            },
            tooltip: {},
            legend: {
                data:['数量']
            },
            xAxis: {
                data: ["手机类","电脑类","路由器类","其他智能配件类"]
            },
            yAxis: {},
            series: {
                name: '数量',
                type: 'bar',
                itemStyle:{
                    normal:{
                        color:'#1C86EE'
                    }
                }
            }
            
            
        };

        option.series['data']=[68,22,2,13]
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
       
        $.ajax({
            type: "POST",
            url:"/DtShopping/CountAllServlet",
            async: true,
            success: function(msg) {
            	var mess = $.parseJSON(msg);
            	alert("mess.zchy");
                if (mess!=null) {
                	  
                        }
                        else {
                            alert("修改失败！");
                        } 
              
            }
            
        });
        
    </script>
 </dl>
 
 <dl>
  <%-- <dt>用户统计信息</dt>
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
  </dd> --%>
  <div id="main3" style="width: 80%;height:170px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main3'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '用户统计信息'
            },
            tooltip: {},
            legend: {
                data:['数量']
            },
            xAxis: {
                data: ["注册用户","下过单用户","忠实用户","未下单用户"]
            },
            yAxis: {},
            series: {
                name: '数量',
                type: 'bar',
                itemStyle:{
                    normal:{
                        color:'#1C86EE'
                    }
                }
            }
            
            
        };

        option.series['data']=[1,2,3,4]; 
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
       
        $.ajax({
            type: "POST",
            url:"/DtShopping/CountAllServlet",
            async: true,
            success: function(msg) {
            	alert(msg);
            	var mess = $.parseJSON(msg);
            	alert("mess.zchy");
                if (mess!=null) {
                	  
                        }
                        else {
                            alert("修改失败！");
                        } 
              
            }
            
        });
        
    </script>
 </dl>

 

 
 
</div>
</body>
</html>