<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
    	rel="stylesheet">
    <link href="./resources/css/bootstrap.min.css" />
    <script src="./resources/js/validation.js"></script>
<body>
	<jsp:include page="../menu.jsp"></jsp:include>
		<div class = "jumbotron">
		<div class = "container">
			<h1>회원정보 수정완료</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-success">회원 정보 수정이 완료 되었습니다. 재로그인 해주세요.</h2>
	</div>
	<div class="container">
		<p> <a href="./loginMember.jsp" class="btn btn-success"> &laquo; 로그인</a>
	</div>

</body>
</html>