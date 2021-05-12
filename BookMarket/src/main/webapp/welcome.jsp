<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<% 
		response.setIntHeader("Refresh", 5);
		String greeting = "도서 웹 쇼핑몰";
		//String tagline = "Welcome to Book Market!"; 
	%>
	<!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
    	rel="stylesheet">
<body>
	<%@ include file="menu.jsp" %>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">
					<%= greeting %>
			</h1>
		</div>
	</div>
	
	
	
	<%@ include file="footer.jsp" %>
</body>
</html>