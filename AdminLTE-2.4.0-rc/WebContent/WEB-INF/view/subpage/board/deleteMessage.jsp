<%@page import="guestbook.service.MessageNotFoundException"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="guestbook.service.DeleteMessageService" %>
<%@ page import="guestbook.service.InvalidPassowrdException" %>
<%
	int messageId = Integer.parseInt(request.getParameter("messageId"));
	String password = request.getParameter("password");
	boolean invalidPassowrd = false;
	boolean messageIdex = false;
	try {
		DeleteMessageService deleteService = 
				DeleteMessageService.getInstance();
		deleteService.deleteMessage(messageId, password);
	} catch(InvalidPassowrdException ex) {
		invalidPassowrd = true;
	} catch(MessageNotFoundException ex) {
		messageIdex = true;
	}
%>
<%  if (invalidPassowrd) { %>
<script>alert("입력한 암호가 올바르지 않습니다. 암호를 확인해주세요."); history.back();</script>
<%  } else if(messageIdex){ %>
<script>alert("잘못된 접근입니다.");location.replace("board.jsp");</script>
<%  } else { %>
<script>alert("메시지를 삭제하였습니다.");location.replace("board.jsp");</script>
<%  }%>


<html>
<head>
	<title>방명록 메시지 삭제함</title>
</head>
<body>

<br/>
<a href="list.jsp">[목록 보기]</a>
</body>
</html>