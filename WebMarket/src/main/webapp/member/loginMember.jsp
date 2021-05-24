<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
    	rel="stylesheet">
<body>
	<jsp:include page="../menu.jsp"></jsp:include>
	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">로그인</h1>
		</div>
	</div>
	<div class="container" align = "center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<% 
				String error = request.getParameter("error");
				if(error != null){
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>
			<form action="./processLoginMember.jsp" method="post" name="login" class="form-signin">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label>
					<input type="text" name="username" class="form-control" placeholder="ID" required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label>
					<input type="password" name="password" class="form-control" placeholder="PassWord" required>
				</div>
				<input type="submit" value="로그인" class="btn btn btn-lg btn-success btn-block" />
			</form>
		</div>
	</div>
</body>
</html>