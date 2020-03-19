<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户注册</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<%@ include  file="pageHeader.jsp"%>
<body style="background: white;">
<form  method="post" action="doreg.jsp">
		<div class="regist">
			<div class="regist_center">
				<div class="regist_top">
					<div class="left fl">会员注册</div>
					<div class="right fr"><a href="index.jsp" target="_self">小米商城</a></div>
					<div class="clear"></div>
					<div class="xian center"></div>
				</div>
				<div class="regist_main center">
					<div class="username">用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;<input class="shurukuang" type="text" name="username"/><span>请不要输入汉字</span></div>
					<div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;<input class="shurukuang" type="password" name="password"/><span>请输入6位以上字符</span></div>
					<div class="username">性&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;<input type="radio" name="sex" value="male" />男
					<input type="radio" name="sex" value="female" />女</div>
					<div class="username">爱&nbsp;&nbsp;&nbsp;&nbsp;好:&nbsp;&nbsp;<input type="checkbox" name="hobby" value="sleep">睡
					<input type="checkbox" name="hobby" value="eat">吃
					<input type="checkbox" name="hobby" value="play">玩
					</div>
					<div class="username" >城&nbsp;&nbsp;&nbsp;&nbsp;市:&nbsp;&nbsp;
					<select name="city">
  						<option value ="杭州">杭州</option>
  						<option value ="绍兴">绍兴</option>
  						<option value="丽水">丽水</option>
  						<option value="宁波">宁波</option>
					</select>
					</div>
					<div class="username">
					自我介绍：
					<textarea rows="4" cols="50" name="intro"></textarea>
					</div>
				</div>
				<div class="regist_submit">
				<input class="submit" type="reset" name="reset" value="重置"><br><br>
					<input class="submit" type="submit" name="submit" value="注册" >
				</div>
				
			</div>
		</div>
		</form>
		<%@ include  file="pageFooter.jsp"%>
</body>
</html>