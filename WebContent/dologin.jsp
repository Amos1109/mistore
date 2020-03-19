<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String username=request.getParameter("username");
String password=request.getParameter("password");
if(username!=null&&password!=null){
	if("18164308".equals(username)&&"18164308".equals(password)){
		session.setAttribute("username", username);
		request.getRequestDispatcher("index.jsp").forward(request,response);
	}else{
		response.sendRedirect("login.jsp");
	}
}
else{
	response.sendRedirect("login.jsp");
}

%>
</body>
</html>