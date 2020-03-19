<%@page import="com.hyt.model.itemsDAO"%>
<%@page import="com.hyt.model.Item"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>小米商城</title>
</head>
<body>
<%@ include  file="pageHeader.jsp"%>
	<!-- start danpin -->
		<div class="danpin center">
			
			<div class="biaoti center">小米明星单品</div>
			<div class="main center">
			<%
			itemsDAO itemsDAO=new itemsDAO();
			ArrayList<Item>list=itemsDAO.getAllitems();
			if (list != null && list.size() > 0) {
				for (int i = 0; i < list.size(); i++) {
					Item item = list.get(i);
			%>
			<!-- 循环开始 -->
				<div class="mingxing fl">
					<div class="sub_mingxing"><a href="details.jsp?id=<%=item.getId()%>"><img src="image/<%=item.getImgPath() %>" alt=""></a></div>
					<div class="pinpai"><a href="details.jsp?id=<%=item.getId()%>"><%=item.getName() %></a></div>
					<div class="youhui"><%=item.getDesc() %></div>
					<div class="jiage">￥<%=item.getPrice() %></div>
				</div>
				<!-- 循环结束 -->
				<%
			}
			}
		%>
				<div class="clear"></div>
			</div>
		</div>
				<!-- start banner_y -->
		<div class="center">

			<div class="sub_banner center">
				<div class="sidebar fl">
					<div class="fl"><a href=""><img src="image/hjh_01.gif"></a></div>
					<div class="fl"><a href=""><img src="image/hjh_02.gif"></a></div>
					<div class="fl"><a href=""><img src="image/hjh_03.gif"></a></div>
					<div class="fl"><a href=""><img src="image/hjh_04.gif"></a></div>
					<div class="fl"><a href=""><img src="image/hjh_05.gif"></a></div>
					<div class="fl"><a href=""><img src="image/hjh_06.gif"></a></div>
					<div class="clear"></div>
				</div>
				<div class="datu fl"><a href=""><img src="image/hongmi4x.png" alt=""></a></div>
				<div class="datu fl"><a href=""><img src="image/xiaomi5.jpg" alt=""></a></div>
				<div class="datu fr"><a href=""><img src="image/pinghengche.jpg" alt=""></a></div>
				<div class="clear"></div>
	
	
			</div>
			</div>
		<div class="peijian w">
			<div class="biaoti center">配件</div>
			<div class="main center">
				<div class="content">
					<div class="remen fl"><a href=""><img src="image/peijian1.jpg"></a>
					</div>
					<div class="remen fl">
						<div class="xinpin"><span>新品</span></div>
						<div class="tu"><a href=""><img src="image/peijian2.jpg"></a></div>
						<div class="miaoshu"><a href="">小米6 硅胶保护套</a></div>
						<div class="jiage">49元</div>
						<div class="pingjia">372人评价</div>
						<div class="piao">
							<a href="">
								<span>发货速度很快！很配小米6！</span>
								<span>来至于mi狼牙的评价</span>
							</a>
						</div>
					</div>
					<div class="remen fl">
						<div class="xinpin"><span style="background:#fff"></span></div>
						<div class="tu"><a href=""><img src="image/peijian3.jpg"></a></div>
						<div class="miaoshu"><a href="">小米手机4c 小米4c 智能</a></div>
						<div class="jiage">29元</div>
						<div class="pingjia">372人评价</div>
					</div>
					<div class="remen fl">
						<div class="xinpin"><span style="background:red">享6折</span></div>
						<div class="tu"><a href=""><img src="image/peijian4.jpg"></a></div>
						<div class="miaoshu"><a href="">红米NOTE 4X 红米note4X</a></div>
						<div class="jiage">19元</div>
						<div class="pingjia">372人评价</div>
						<div class="piao">
							<a href="">
								<span>发货速度很快！很配小米6！</span>
								<span>来至于mi狼牙的评价</span>
							</a>
						</div>
					</div>
					<div class="remen fl">
						<div class="xinpin"><span style="background:#fff"></span></div>
						<div class="tu"><a href=""><img src="image/peijian5.jpg"></a></div>
						<div class="miaoshu"><a href="">小米支架式自拍杆</a></div>
						<div class="jiage">89元</div>
						<div class="pingjia">372人评价</div>
						<div class="piao">
							<a href="">
								<span>发货速度很快！很配小米6！</span>
								<span>来至于mi狼牙的评价</span>
							</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="content">
					<div class="remen fl"><a href=""><img src="image/peijian6.png"></a>
					</div>
					<div class="remen fl">
						<div class="xinpin"><span style="background:#fff"></span></div>
						<div class="tu"><a href=""><img src="image/peijian7.jpg"></a></div>
						<div class="miaoshu"><a href="">小米指环支架</a></div>
						<div class="jiage">19元</div>
						<div class="pingjia">372人评价</div>
						<div class="piao">
							<a href="">
								<span>发货速度很快！很配小米6！</span>
								<span>来至于mi狼牙的评价</span>
							</a>
						</div>
					</div>
					<div class="remen fl">
						<div class="xinpin"><span style="background:#fff"></span></div>
						<div class="tu"><a href=""><img src="image/peijian8.jpg"></a></div>
						<div class="miaoshu"><a href="">米家随身风扇</a></div>
						<div class="jiage">19.9元</div>
						<div class="pingjia">372人评价</div>
					</div>
					<div class="remen fl">
						<div class="xinpin"><span style="background:#fff"></span></div>
						<div class="tu"><a href=""><img src="image/peijian9.jpg"></a></div>
						<div class="miaoshu"><a href="">红米4X 高透软胶保护套</a></div>
						<div class="jiage">59元</div>
						<div class="pingjia">775人评价</div>
					</div>
					<div class="remenlast fr">
						<div class="hongmi"><a href=""><img src="image/hongmin4.png" alt=""></a></div>
						<div class="liulangengduo"><a href=""><img src="image/liulangengduo.png" alt=""></a></div>					
					</div>
					<div class="clear"></div>
				</div>				
			</div>
		</div>
		<%@ include  file="pageFooter.jsp"%>
</body>
</html>