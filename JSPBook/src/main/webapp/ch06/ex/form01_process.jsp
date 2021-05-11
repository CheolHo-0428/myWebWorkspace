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
	<table border="1">
		<tr>
			<th>파라미터 이름</th>
			<th>파라미터 값</th>
		</tr>
		<% 
			request.setCharacterEncoding("utf-8");
			Enumeration enumList = request.getParameterNames();
			
			while(enumList.hasMoreElements()){
				String name = (String) enumList.nextElement();
				out.println("<tr><td>" + name + "</td>");
				
				String value = request.getParameter(name);
				out.println("<td>" + value + "</td></tr>");
			}
		%>
	</table>
</body>
</html>