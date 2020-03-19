<%@page import="com.hyt.model.Item"%>
<%@page import="com.hyt.model.itemsDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.hyt.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>

    <style type="text/css">
    .shuliang{
        width: 70px;
    height: 35px;
    border: 2px solid #ccc;
    text-align: center;
    font-size: 16px;
    color: #ff6700;
    }
    </style>
<title>商品详情</title>
</head>
<body>
<%@ include  file="pageHeader.jsp"%>
          <% 
          itemsDAO itemsDAO=new itemsDAO();
          Item item=itemsDAO.getitemsById(Integer.parseInt(request.getParameter("id")));
             if(item!=null)
             {
          %>
<!-- xiangqing -->
	<div class="xiangqing">
		<div class="neirong w">
			<div class="xiaomi6 fl"><%=item.getName() %></div>
			<nav class="fr">
				<li><a href="">概述</a></li>
				<li>|</li>
				<li><a href="">变焦双摄</a></li>
				<li>|</li>
				<li><a href="">设计</a></li>
				<li>|</li>
				<li><a href="">参数</a></li>
				<li>|</li>
				<li><a href="">F码通道</a></li>
				<li>|</li>
				<li><a href="">用户评价</a></li>
				<div class="clear"></div>
			</nav>
			<div class="clear"></div>
		</div>	
	</div>
	
	<div class="jieshao mt20 w">
		<div class="left fl"><img src="image/<%= item.getBimgPath()%>" style="width: 560px;height: 560px"></div>
		<div class="right fr">
			<div class="h3 ml20 mt20"><%=item.getName() %></div>
			<div class="jianjie mr40 ml20 mt10"><%=item.getBdesc() %></div>
			<div class="jiage ml20 mt10"><%=item.getPrice() %></div>
			
			<div class="ft20 ml20 mt20">选择颜色</div>
			<div class="xzbb ml20 mt10">
				<div class="banben">
					<a>
						<span class="yuandian"></span>
						<span class="yanse">亮黑色</span>
					</a>
				</div>
				
			</div>
			<div class="ft20 ml20 mt20">选择数量</div>
			<div class="xzbb mt20 ml20">
				<input class="shuliang" type="number" id="number" value="1" step="1" min="1" >
				</div>
			<div class="xiadan ml20 mt20">
					<input class="jrgwc"  type="button" name="jrgwc" value="立即选购" />
					<input class="jrgwc" id="btn" type="button" name="jrgwc" value="加入购物车" />
			</div>
			<script type="text/javascript">

$(function() {
	var btn=$("#btn");
	btn.click(function(){
		var number=$("#number").val();
		$.ajax({
			url:'CartServlet',
			datatype:'text',
			type:'post',
			data:{
				'id':<%=item.getId()%>,
				'action':'add',
				'num':number
			},
			success:function(){
					alert("成功添加了"+number+"件商品！")
					 setTimeout(function(){ $("#shoppingPocket").load(location.href+" #shoppingPocket"); }, 100);
			}
		})
	})
})
    </script>
		</div>
		<div class="clear"></div>
		     <% 
            }
          %>
	</div>

<%@ include  file="pageFooter.jsp"%>
</body>
</html>