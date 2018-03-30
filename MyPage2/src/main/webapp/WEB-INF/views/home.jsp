<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>!!HOLO!!</title>
  <style> .menuList {list-style:none;
    margin:0;
    padding:0;}
    .menuList > li {
    margin: 10 10 10 10;
    padding: 10 10 10 10;
    border : 0;
    float: left;
}
.clear { clear: both }
</style>



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


    <!-- Bootstrap core CSS -->
    <link href="${pageContext.servletContext.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Custom fonts for this template -->
    <link href="${pageContext.servletContext.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.servletContext.contextPath}/resources/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.servletContext.contextPath}/resources/https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="${pageContext.servletContext.contextPath}/resources/css_/landing-page.min.css" rel="stylesheet">
 
</head>
<body>
 <script src = "${pageContext.servletContext.contextPath}/resources/js/bootstrap.js"></script>
 <script type= "text/javascript" src = "${pageContext.servletContext.contextPath}/resources/vendor/jquery/jquery.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script type="text/javascript">
         if("${msg}" != ""){
            
             self.window.alert("${msg}");
         }
              
               
</script>
<script type="text/javascript" language="javascript">
   function frm(){
      document.getElementById("frm").submit();
   }
   
   function nwindow(){
      var input;
      input = prompt("친구의 ID를 입력해주세요..");
      
      $('#ipt').val(input);
      frm();
   }
   $(document).ready(function(){
      document.getElementById("firend_view").submit();
   })
</script>  

      	   
<div class="bd-example">
<div class="pos-f-t">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-dark p-4">
      <h4 class="text-white">
     
   	 <c:set var="id"	 value="${sessionScope.id}"/>
      	<c:choose>
      		<c:when test="${empty id}">
      			<input class="btn btn-primary" type = "button" onclick = "location.href = '${pageContext.servletContext.contextPath}/user/login' " value = "로그인">
				<input class="btn btn-primary" type = "button" onclick = "location.href = '${pageContext.servletContext.contextPath}/user/joinform' " value = "회원가입">
			</c:when>
			<c:otherwise>
      			<input class="btn btn-primary" type = "button" onclick = "location.href = '${pageContext.servletContext.contextPath}/user/logout' " value = "로그아웃">
      		   <input class="btn btn-primary" type = "button" onclick = "nwindow()" value = "친구추가">
            <form action = "${pageContext.servletContext.contextPath}/friend/add" method = "post" id="frm">
               <input type="hidden" id="ipt" name = "input">
               </form>
      			
				<input class="btn btn-primary" type = "button" onclick = "location.href = '${pageContext.servletContext.contextPath}/message/messageform' " value = "메세지함">
      		</c:otherwise>
      	</c:choose>	
           </h4>
    </div>
  </div>
  <nav class="navbar navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </nav>
</div>
</div>
   
    
	
    <!-- Masthead -->
    
    <header class="masthead text-white text-center">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-xl-9 mx-auto">
            <h1 class="mb-5">HOLO 페이지에 오신 여러분을 환영합니다!!!</h1>
          </div>
          <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
            <form action = "${pageContext.servletContext.contextPath}/board/find" method = "post">
              <div class="form-row">
                <div class="col-12 col-md-9 mb-2 mb-md-0">
                  <input type="text" name="hashTag" class="form-control form-control-lg" placeholder="다른 사람들의 취미를 알아보세요!">
                </div>
                <div class="col-12 col-md-3">
                  <button type="submit" class="btn btn-block btn-lg btn-primary">검색!</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </header>

<div>
<nav class = "container" >
<div class="menuList">

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
			</form>
		</div>
	</div>




<div class="menuList">
		<div class="wrap-contact100"  >

				<span class="contact100-form-title">
					HOLO POST
				</span>
	 		<c:set var="id"	 value="${sessionScope.id}"/> 
			<c:forEach items="${list}" var="list">
			<div class="wrap-input100 validate-input">
				${list.nickName}<p>
				${list.content}<p>
				#${list.hashTag}
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
	
<div  style="position: absolute; top:700px; left: 1000px;">
 <div >
       <div class="row">
          <table class="table table-striped" style="text-align:center; solid #ddddddd">
             <thead>
                <tr>
                   <th class="navbar-brand"> 친구 목록 </th>
                   <c:forEach var ="vo" items="${friendVAL}">
                      <tr>
                         <td>${vo.friend}</td>
                         <td>   
                            <form action = "${pageContext.servletContext.contextPath}/friend/delete" method = "post">
                              <input type="hidden" name="deleteid_" value="${vo.friend}">
                              <button type="submit" class="btn btn-block btn-lg btn-primary">친구삭제</button>
                              </form>
                         </td>
                         
                      </tr>
                   </c:forEach>
                </tr>
             </thead>
          </table>
       </div>
    </div>
</div>
</nav>
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
    
    
	
    
<!-- 
	<body>
    <div id="boardList_" align="left">
	
	<table width="510" border="1">
		<c:forEach var="vo" items="${list}">
			<tr>
				<td><a href="${pageContext.servletContext.contextPath}/board/detail/${vo.no}" >닉네임 : ${vo.nickName}</a></td>
				<td>시간 : ${vo.time}</td>
				<td><a href="${pageContext.request.contextPath}/board/update/${vo.id }">수정</a>
					<a href="${pageContext.request.contextPath}/board/delete/${vo.id }">삭제</a>
				</td>
			</tr>
			<tr>
				<td colspan="4">내용 : ${vo.content}</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	<div id="friendList_"align="right">
	<table width="510" border="1">
		<tr>
		<td></td>
		</tr>
	
	
	</table>
	
	</div>
    </body>
-->
    <!-- Footer -->
    <footer class="footer bg-light">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
            <ul class="list-inline mb-2">
              <li class="list-inline-item">
                <a href="#">About</a>
              </li>
              <li class="list-inline-item">&sdot;</li>
              <li class="list-inline-item">
                <a href="#">Contact</a>
              </li>
              <li class="list-inline-item">&sdot;</li>
              <li class="list-inline-item">
                <a href="#">Terms of Use</a>
              </li>
              <li class="list-inline-item">&sdot;</li>
              <li class="list-inline-item">
                <a href="#">Privacy Policy</a>
              </li>
            </ul>
            <p class="text-muted small mb-4 mb-lg-0">&copy; The HOLO Project by 1조 2018. All Rights Reserved.</p>
          </div>
          <div class="col-lg-6 h-100 text-center text-lg-right my-auto">
            <ul class="list-inline mb-0">
              <li class="list-inline-item mr-3">
                <a href="#">
                  <i class="fa fa-facebook fa-2x fa-fw"></i>
                </a>
              </li>
              <li class="list-inline-item mr-3">
                <a href="#">
                  <i class="fa fa-twitter fa-2x fa-fw"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-instagram fa-2x fa-fw"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>

</body>
</html>