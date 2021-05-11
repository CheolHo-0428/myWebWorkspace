<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		Enumeration enumList = request.getParameterNames();
		
		while(enumList.hasMoreElements()){
			String name = (String) enumList.nextElement();
			String value = request.getParameter(name);
			out.println("<p>" + name + " : " + value);
		}
	%>
</body>
</html>