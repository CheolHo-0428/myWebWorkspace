<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		String tagline = "Welcome to Book Market!";
	
		Date day = new Date();
		String am_pm;
		int hour = day.getHours();
		int minute = day.getMinutes();
		int second = day.getSeconds();
		if(hour/12 == 0){
			am_pm = "AM";
		} else {
			am_pm = "PM";
			hour = hour-12;
		}
		String CT = hour + "시 " + minute + "분 " + second + "초 " + am_pm;
	%>
	
	<div class = "container">
		<div class = "text-center">
			<h3><%= tagline %></h3>
			<h6>현재 시각 : <%= CT %></h6>
		</div>
	</div>
	
	
	<footer class = "container">
		<p>&copy; BookMarket</p>
	</footer>
</body>
</html>