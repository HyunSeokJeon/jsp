<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="util.Cookies"%>
<%
	Cookies cookies = new Cookies(request);
	if (!cookies.exists("Authorization")){
		response.sendRedirect("../login/login.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>