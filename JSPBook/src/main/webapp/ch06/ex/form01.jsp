<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<form action="form01_process.jsp" name="member" method="post">
		<p>이름 : <input type="text" name="name" placeholder="이름을 입력하세요">
		<p>주소 : <input type="text" name="adr" placeholder="주소를 입력하세요">
		<p>이메일 : <input type="text" name="email" placeholder="이메일을 입력하세요">
		<p><input type="submit" value="전송">
	</form>
</body>
</html>