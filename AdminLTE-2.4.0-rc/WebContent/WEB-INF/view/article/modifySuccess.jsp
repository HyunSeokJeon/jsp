<%@ page contentType="text/html; charset=utf-8"%>


<!DOCTYPE html>
<html>
<head>
<title>게시글 수정</title>
</head>
<body>


<br>
${ctxPath = pageContext.request.contextPath ; ''}
</body>
<script type="text/javascript">
	let goList = confirm("게시글을 수정했습니다.\n 확인하시겠습니까??");
	if(!goList){
		location.href=`${ctxPath}/article/list.do`;
	}else{
		location.href=`${ctxPath}/article/read.do?no=${modReq.articleNumber}`
	}
</script>
</html>