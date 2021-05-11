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
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(id.equals("관리자") && pwd.equals("1234") ){ %>
			<jsp:forward page="success.jsp">
				<jsp:param value="<%=id%>" name="ids"/>
			</jsp:forward>
			response.sendRedirect("success.jsp");
		<%	
		} else {
			response.sendRedirect("failed.jsp");
		}
	%>
</body>
</html>