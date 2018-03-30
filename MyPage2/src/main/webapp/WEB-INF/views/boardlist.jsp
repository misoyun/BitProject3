<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BOARD LIST</title>
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css_board/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css_board/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css_board/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css_board/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css_board/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css_board/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css_board/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css_board/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css_board/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css_board/css/main.css">
<!--===============================================================================================-->
</head>
<body>

<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form"  action = "${pageContext.servletContext.contextPath}/board/write" method ="post">
			<input type="hidden" name="id" value="${sessionScope.id}">
				<span class="contact100-form-title">
					Write Post
				</span>

			<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<textarea class="input100" name="content" placeholder="content"></textarea>
				</div>

			<div class="wrap-input100 validate-input" data-validate="Hashtag is required">
					<input class="input100" id="hashTag" type="text" name="hashTag" placeholder="#">
					<label class="label-input100" for="hashTag">
						<span class="lnr lnr-user"></span>
					</label>
				</div>
				
				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
			<!--  		<input type="submit" value="UPLOAD"> -->
			 	<button type="submit" class="contact100-form-btn" value="submit">UPLOAD</button>	
					</div>
				</div>
				
				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
		 	<button type="reset" class="contact100-form-btn" value="reset">RESET</button>	
					</div>
				</div>
				
				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
		 	<button type="button" onclick="location.href='${pageContext.servletContext.contextPath}/board/list';" class="contact100-form-btn" value="list">LIST</button>	
					</div>
				</div>
				
				
			</form>
		</div>
	</div>




<div class="container-contact100">
		<div class="wrap-contact100">
				<span class="contact100-form-title">
					HOLO POST
				</span>
	 		<c:set var="id"	 value="${sessionScope.id}"/> 
			<c:forEach items="${list}" var="list">
			<div class="wrap-input100 validate-input">
				${list.nickName}<p>
				${list.content}<p>
			</div>

			<div class="wrap-input100 validate-input" data-validate="Hashtag is required">
				<input class="input100" id="hashTag" type="text" name="hashTag" placeholder="#">
					${list.hashTag}<p>
					<label class="label-input100" for="hashTag">
						<span class="lnr lnr-user"></span>
					</label>
				</div>
			<c:set var="post_id" value="${list.id}"/>
			<c:choose>
      		<c:when test="${id eq post_id}">
      		<div class= "nav navbar-default">
      			<form action = "${pageContext.servletContext.contextPath}/board/updateform" method="POST">
      			<input type="hidden" name="updateboard" value="${list.no}">
      			<input class="btn btn-primary" type = "submit"  value = "MODIFY">
      			</form>
      			<pre> </pre>
      			<form action = "${pageContext.servletContext.contextPath}/board/delete" method="GET">
    			<input type ="hidden" name = "deleteboardid" value = "${list.no}">
				<input class="btn btn-primary" type = "submit" value = "DELETE">
			</form>
			</div>
			</c:when>
			<c:otherwise>
      		</c:otherwise>
      	</c:choose>		
				
			</c:forEach>	
				
				
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>




</body>
</html>