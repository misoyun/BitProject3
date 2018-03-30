<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>답장하기</h1>
	<form action="${pageContext.servletContext.contextPath}/message/insert" method="post">
		<input type="hidden" name="id1" value="${sessionScope.id}">
		<table border=1>
			<tr>
			<td>받는사람<input type="text" name="id2" value="${id2}"></td>
			</tr>
			<tr>
			<td>내용<input type="text" name="content"></td>
			</tr>
		</table>
		<input type="submit" value="전송">
	
	</form>
	<input type="button" onclick = "location.href = '${pageContext.servletContext.contextPath}/message/messageform' " value="이전">
	
</body>
</html>