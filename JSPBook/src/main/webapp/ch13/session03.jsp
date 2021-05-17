<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<h2>----세션을 삭제하기 전-----</h2>
	
	<% 
		String id = (String) session.getAttribute("userID");
		String pwd =(String) session.getAttribute("userPWD");
	%>	
	
	<p> 설정된 세션 이름 userID : <%=id %>
	<p> 설정된 세션 값 userPWD : <%=pwd %>	
		
	<% 	
		session.removeAttribute("userID");
	
		String id1 = (String) session.getAttribute("userID");
		String pwd1 =(String) session.getAttribute("userPWD");
	%>
	
	<h2>----세션을 삭제 후-----</h2>
	
	<p> 설정된 세션 이름 userID : <%=id1 %>
	<p> 설정된 세션 값 userPWD : <%=pwd1 %>

</body>
</html>