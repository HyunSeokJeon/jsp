<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String repassword = request.getParameter("repassword");
	
	int updateCount = 0;
	
	if(password.equals(repassword)){
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = null;
		PreparedStatement pstmt = null;
		try{
			
			String jdbcDriver = "jdbc:apache:commons:dbcp:chap14";
			String query = "select * from MEMBER order by MEMBERID";
			conn = DriverManager.getConnection(jdbcDriver);
			pstmt = conn.prepareStatement(
					"insert into MEMBER values (?, ?, ?, ?)"
					);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			
			pstmt.executeUpdate();
			out.println("<script>alert('회원가입이 완료되었습니다.');location.href='./login.jsp';</script>");
		} finally{
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
	}else{
		out.println("<script>alert('비밀번호가 다릅니다!');history.back();</script>");
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