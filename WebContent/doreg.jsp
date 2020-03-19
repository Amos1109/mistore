<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
</head>
<body>

<%
request.setCharacterEncoding("utf-8");
String username=request.getParameter("username");
String password=request.getParameter("password");
String sex=request.getParameter("sex");
String hobby[]=request.getParameterValues("hobby");
String city=request.getParameter("city");
String intro=request.getParameter("intro");
if(username!=null&&password!=null&&sex!=null&&hobby!=null&&intro!=null&&username.length()!=0&&password.length()!=0&&intro.length()!=0){
	out.println("<a href='login.jsp'><h3>注册成功！点击登录</h3></a>");
}
else{
	out.println("<a href='reg.jsp'><h3>注册失败！请返回重新注册</h3></a><br>");
	if(username==null||username.length()==0){
		out.println("<div class='alert alert-danger' role='alert'>用户名未输入！</div><br>");
	}
	if(password==null||password.length()==0){
		out.println("<div class='alert alert-danger' role='alert'>密码未输入！</div><br>");
	}
	if(sex==null){
		out.println("<div class='alert alert-danger' role='alert'>性别未选择！</div><br>");
	}
	if(hobby==null){
		out.println("<div class='alert alert-danger' role='alert'>爱好未选择！</div><br>");
	}
	if(intro==null||intro.length()==0){
		out.println("<div class='alert alert-danger' role='alert'>自我介绍未输入！</div><br>");
	}
	//由于城市有默认选项，可不判断
}

%>
<%@ include  file="pageFooter.jsp"%>
</body>
</html>