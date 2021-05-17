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
	<h2>------세션을 삭제하기 전------</h2>
	
	<% 
		Enumeration eumList = session.getAttributeNames();
		int i = 0;
		
		while(eumList.hasMoreElements()){
			i++;
			String name = (String) eumList.nextElement();
			String value = (String) session.getAttribute(name);
			
			out.println("<p>설정된 세션 이름[" + i + "] : " + name);
			out.println("<p>설정된 세션 값[" + i + "] : " + value);
		}
		
		session.invalidate(); %>
		
		<h2>------세션을 삭제 후------</h2>
	<% 
		if(request.isRequestedSessionIdValid()==false){
			out.println("세션이 유효하지 않습니다.");
		}
	%>
</body>
</html>