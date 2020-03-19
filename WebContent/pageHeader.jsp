<%@page import="com.hyt.model.Cart"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="com.hyt.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<!-- start header -->
<header>
			<div class="top center" style="background: #333">
				<div class="left fl">
					<ul>
						<li><a href="index.jsp" >小米商城</a></li>
						<li>|</li>
						<li><a href="liebiao.html">MIUI</a></li>
						<li>|</li>
						<li><a href="liebiao.html">米聊</a></li>
						<li>|</li>
						<li><a href="liebiao.html">游戏</a></li>
						<li>|</li>
						<li><a href="liebiao.html">多看阅读</a></li>
						<li>|</li>
						<li><a href="liebiao.html">云服务</a></li>
						<li>|</li>
						<li><a href="liebiao.html">金融</a></li>
						<li>|</li>
						<li><a href="liebiao.html">小米商城移动版</a></li>
						<li>|</li>
						<li><a href="">问题反馈</a></li>
						<li>|</li>
						<li><a href="">Select Region</a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="right fr">
					<div class="gouwuche fr"  id="shoppingPocket"><a href="
					                                    <%
							if(session.getAttribute("username")==null)
							{
								out.print("login.jsp");
							}
							else
							{
								out.print("cart.jsp");
							}%>
					">购物车 <% 
				   //首先判断session中是否有购物车对象
				   if(request.getSession().getAttribute("cart")!=null)
				   {
						%>
                    <%
                   Cart cart = (Cart)request.getSession().getAttribute("cart");
                     %>
                   <span>(<%=cart.getTotalNumber()%></span>)</a>
                    <%} %>
					</div>
					<div class="fr">
						<ul>
							<li>
<c:out value="${username}" default="<a href='login.jsp'>登录</a>" escapeXml = "false"></c:out>
							</li>
							<li>|</li>
							<li><a href="reg.jsp"  >注册</a></li>
							<li>|</li>
							<li><a href="">消息通知</a></li>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</header>
	<!--end header -->

<!-- start banner_x -->
		<div class="banner_x center">
			<a href="index.jsp" ><div class="logo fl"></div></a>
			<a href=""><div class="ad_top fl"></div></a>
			<div class="nav fl">
				<ul>
					<li><a href="liebiao.html" >小米手机</a></li>
					<li><a href="">红米</a></li>
					<li><a href="">平板·笔记本</a></li>
					<li><a href="">电视</a></li>
					<li><a href="">盒子·影音</a></li>
					<li><a href="">路由器</a></li>
					<li><a href="">智能硬件</a></li>
					<li><a href="">服务</a></li>
					<li><a href="">社区</a></li>
				</ul>
			</div>
			<div class="search fr">
				<form action="" method="post">
					<div class="text fl">
						<input type="text" class="shuru"  placeholder="小米6&nbsp;小米MIX现货">
					</div>
					<div class="submit fl">
						<input type="submit" class="sousuo" value="搜索"/>
					</div>
					<div class="clear"></div>
				</form>
				<div class="clear"></div>
			</div>
		</div>
<!-- end banner_x -->

	
	<!-- end banner -->
</body>
</html>