<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String[] fruits = request.getParameterValues("fruit");
	%>
	<h2>선택한 과일</h2>
	
	<% 
		String value = "";
	
		if(fruits != null){
			for(String fruit : fruits){
				value += fruit += ", " ;
			}
		} 
		value = value.replaceAll(", $", "");
	%>
	
	<h4><%=value%></h4>
</body>
</html>