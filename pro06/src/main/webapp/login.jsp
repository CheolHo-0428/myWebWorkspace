<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<h4>로그인 페이지</h4>
	<form action="login_process.jsp" method="post" name="loginMember">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="pwd">
		<p> <input type="submit" value="로그인">
	</form>
</body>
</html>