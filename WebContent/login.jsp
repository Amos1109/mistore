<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户登录</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
</head>
<body>
		<!-- login -->
		<div class="top center">
			<div class="logo center">
				<a href="index.jsp" target="_blank"><img src="image/mistore_logo.png" alt=""></a>
			</div>
		</div>
		<form  method="post" action="LoginServlet" class="form center">
		<div class="login">
			<div class="login_center">
				<div class="login_top">
					<div class="left fl">会员登录</div>
					<div class="right fr">您还不是我们的会员？<a href="register.jsp" target="_self">立即注册</a></div>
					<div class="clear"></div>
					<div class="xian center"></div>
				</div>
				<div class="login_main center">
					<div class="username">用户名:&nbsp;<input class="shurukuang" type="text" name="username" placeholder="请输入你的用户名"/></div>
					<div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;<input class="shurukuang" type="password" name="password" placeholder="请输入你的密码"/></div>
				<div class="username"><input name="vericode" placeholder="验证码" value="" style="width: 60px">&nbsp;&nbsp;
      <img id="vericodeImg" src="ImageCodeServlet">&nbsp;&nbsp;
      <a id="kanbuq" href="javascript:changeImg();">看不清，换一张</a><br><br></div>
				</div>
				<div class="login_submit">
					<input class="submit" type="submit" name="submit" value="立即登录" >
				</div>
				
			</div>
		</div>
		</form>
		<script type="text/javascript">
//点击更新验证码

     function changeImg() {
          //需要让每次请求的url都发生变化。否则服务器会认为访问的时一张图片，就不会刷新请求了
          //每次url一样，服务器会认为访问的url是同一张图片，没变化啊
    	 $("#vericodeImg").attr("src","ImageCodeServlet?"+Math.random());
      }

  </script>
		<%@ include  file="pageFooter.jsp"%>
</body>
</html>