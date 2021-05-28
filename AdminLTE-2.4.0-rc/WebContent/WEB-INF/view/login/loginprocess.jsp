<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String email = request.getParameter("Email");
	String pass = request.getParameter("password");
	if ((email != null && email.equals("hanguk@naver.com"))
			&& (pass != null && pass.equals("1234"))){
		session.setAttribute("Email", email);
		session.setMaxInactiveInterval(60*60);
		response.sendRedirect("../main/index.jsp");
	}else{
		out.println("<script>alert('로그인에 실패하였습니다!');history.back();</script>");
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>