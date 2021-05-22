<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>browser 변수 값 설정
	<c:set var="browser" value="${'abc'}"></c:set>
	<p><c:out value="${browser}" />
	
	<p>browser 변수 값 제거 후
	<c:remove var="browser"/>
	<p><c:out value="${browser}" />	
</body>
</html>