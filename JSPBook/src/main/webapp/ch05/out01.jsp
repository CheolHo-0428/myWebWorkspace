<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<%
		Date day = new Date();
		String date = day.toLocaleString();
	
		out.println("오늘의 날짜 및 시각" + "<br>");
		out.println(java.util.Calendar.getInstance().getTime());
	%>
</body>
</html>