<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = "****************";
		String name = request.getParameter("name");
		String[] phone = request.getParameterValues("phone");
		String email = request.getParameter("email");
		 
		String number="";
		for(String num : phone){
			number += num += "-";
		}
		number = number.replaceAll("-$", "");
	%>
	<h2>회원 정보</h2>
	<p>아이디 : <%=id %>
	<p>비밀번호 : <%=pwd %>
	<p>이름 : <%=name %>
	<p>전화번호 : <%=number %>
	<p>이메일: <%=email %> 
</body>
</html>