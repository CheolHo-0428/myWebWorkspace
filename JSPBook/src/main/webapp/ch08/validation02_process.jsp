<%@page import="java.util.Enumeration"%>
<%@page import="sun.util.resources.cldr.en.CalendarData_en_UM"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		
		
	%>
	<h2>입력에 성공했습니다.</h2>
	
	<table border="1">
		<tr>
			<th>파라미터 이름</th>
			<th>파라미터 값</th>
		</tr>
		<%
			Enumeration eumlist = request.getParameterNames();
			
			while(eumlist.hasMoreElements()){
				String paramName = (String) eumlist.nextElement();
				String value = request.getParameter(paramName);
				
				out.println("<tr><td>" + paramName + "</td>" + 
					"<td>" + value + "</td>");		
			}
		%>
		
	</table>
	
</body>
</html>