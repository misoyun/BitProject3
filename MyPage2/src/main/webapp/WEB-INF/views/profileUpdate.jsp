<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="updateprofile" method = "post" enctype="multipart/form-data">
	<input type="hidden" name="id" value = "<%=session.getAttribute("id")%>">	
		프로필 사진 업로드
		<input type="file" name="imgsrc"> <br>
		소개
		<input type="text" name="intro"> <br>
		<input type="submit" value="프로필 업데이트">
	</form>
</body>
</html>