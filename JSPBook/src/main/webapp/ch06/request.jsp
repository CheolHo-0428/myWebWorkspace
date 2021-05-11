<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="request_process.jsp" method="post">
		<p>당신의 취미를 선택하세요
		<p>
			<input type="checkbox" name="hobby" value="축구">축구
			<input type="checkbox" name="hobby" value="야구">야구
			<input type="checkbox" name="hobby" value="농구">농구
		<p> <input type="submit" value="전송">
	</form>
</body>
</html>