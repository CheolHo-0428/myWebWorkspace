<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<p> 설정된 세션의 속성 값[1] : <%= session.getAttribute("userID") %>
	<P> 설정된 세션의 속성 값[2] : <%= session.getAttribute("userPWD") %>
</body>
</html>