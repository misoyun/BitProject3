<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel = "stylesheet" type = "text/css" href = "${pageContext.servletContext.contextPath}/resources/css/bootstrap.css">
<title>Insert title here</title>
</head>
<body>
<div class = "container">
		<div class = "col-lg-4"></div>
		<div class = "col-lg-4">
			<div class ="jumbotron" style="padding-top:20px">
				<form action = "${pageContext.servletContext.contextPath}/user/logincheck" method = "post">
					<h3 style = "text-align : center;"> 로그인 </h3>
						<div class ="form-group">
							<input type = "text" class = "form-control" placeholder="ID" name = "id" maxlength = "30"> 		
						</div>
						<div class = "form-group">
							<input type = "password" class = "form-control" placeholder = "PW" name = "pw" maxlength = "30">
 						</div>
 						<input type = "submit" class ="btn btn-primary form-control" value = "로그인"><br><br>
 		</form>
 		<button value ="btn" class ="btn btn-primary form-control" onclick = "location.href='${pageContext.servletContext.contextPath}/user/joinform'" maxlength = "30"> 회원가입</button>				
 				
			</div>
		</div>
			
	</div>
	
</body>
</html>