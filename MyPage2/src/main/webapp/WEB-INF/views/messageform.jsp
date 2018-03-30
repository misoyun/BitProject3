<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>현재${id}의 메세지함 </h1>
	<table border="1">
		<c:forEach var="vo" items="${list}">
			
			<tr>
				<td>받는사람 ${vo.id1 }</td>
				<td>시간 <fmt:formatDate value= "${vo.time}" pattern="yy년MM월dd일 E요일 a hh:mm"/>
				 </td>
				<td>보낸사람 ${vo.id2}</td>
				<td><a href="${pageContext.servletContext.contextPath}/message/delete/${vo.no_}">삭제</a></td>
				<td><a href="${pageContext.servletContext.contextPath}/message//msginsertform/${vo.id2}">답장</a></td>
				
			</tr>
			<tr>
				<td colspan="4">내용 : ${vo.content}</td>
			</tr>
		</c:forEach>
	</table>
	<input type="button" onclick = "location.href = '${pageContext.servletContext.contextPath}/' " value="이전">
	
</body>
</html>