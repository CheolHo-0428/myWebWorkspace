<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<h3>로그인 페이지</h3>
	<form action="login_process.jsp" name="login" method="post">
		<p>아이디 : <input type="text" name="id" placeholder="아이디를 입력하세요">
		<p>비밀번호 : <input type="password" name="pwd" placeholder="비밀번호를 입력하세요">
		<p><input type="submit" value="로그인"> <input type="reset" value="재입력">
	</form>
</body>
</html>