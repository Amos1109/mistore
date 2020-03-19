<%@page import="com.hyt.model.Item"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.hyt.model.Cart"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.hyt.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>我的购物车</title>
    <script language="javascript">
	    function delcfm() {
	        if (!confirm("确认要删除？")) {
	            window.event.returnValue = false;
	        }
	    }
	    
	   
	     
   </script>
</head>
<body>
<%@ include  file="pageHeader.jsp"%>
<div class="banner_x center">
			
			
			<div class="wdgwc fl ml40">我的购物车</div>
			<div class="wxts fl ml20">温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</div>
			<div class="clear"></div>
		</div>
		<div class="xiantiao"></div>
		<div class="gwcxqbj">
			<div class="gwcxd center">
				<div class="top2 center">
					<div class="sub_top fl">
						<input type="checkbox" value="quanxuan" class="quanxuan" />全选
					</div>
					<div class="sub_top fl">商品名称</div>
					<div class="sub_top fl">单价</div>
					<div class="sub_top fl">数量</div>
					<div class="sub_top fl">小计</div>
					<div class="sub_top fr">操作</div>
					<div class="clear"></div>
				</div>
				 <% 
				   //首先判断session中是否有购物车对象
				   if(request.getSession().getAttribute("cart")!=null)
				   {
				%>
				<!-- 循环的开始 -->
				     <% 
				         Cart cart=(Cart)request.getSession().getAttribute("cart");
				     HashMap<Item,Integer>goods=cart.getGoods();
				     Set<Item> item=goods.keySet();
				         Set<Item> items = goods.keySet();
				         Iterator<Item> it = items.iterator();
				         
				         while(it.hasNext())
				         {
				        	 Item i = it.next();
				     %> 
				<div class="content2 center">
					<div class="sub_content fl ">
						<input type="checkbox" value="quanxuan" class="quanxuan" />
					</div>
					<div class="sub_content fl"><img src="image/<%=i.getImgPath()%>" style="width: 80px;height: 80px"></div>
					<div class="sub_content fl ft20"><%=i.getName() %></div>
					<div class="sub_content fl "><%=i.getPrice() %></div>
					<div class="sub_content fl">
						<%=goods.get(i) %>
					</div>
					<div class="sub_content fl"><%=i.getPrice()*goods.get(i)%></div>
					<div class="sub_content fl"><a href="CartServlet?action=delete&id=<%=i.getId()%>" onclick="delcfm();">×</a></div>
					<div class="clear"></div>
				</div>
				<%
				         }
				%>
			</div>
			<div class="jiesuandan mt20 center">
				<div class="tishi fl ml20">
					<ul>
						<li><a href="liebiao.html">继续购物</a></li>
						<li>|</li>
						<li>共<span><%=cart.getTotalNumber() %></span>件商品，有效<span><%=cart.getTotalNumber() %></span>件</li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="jiesuan fr">
					<div class="jiesuanjiage fl">合计（不含运费）：<span><%=cart.getTotalPrice() %>元</span></div>
					<div class="jsanniu fr"><input class="jsan" type="submit" name="jiesuan"  value="去结算"/></div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			                             <% 
				   }
				     %>
		</div>
</body>
</html>