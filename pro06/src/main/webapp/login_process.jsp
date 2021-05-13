<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>
	<h4>로그인 결과</h4>
	<% 
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
	
		if(id.equals("관리자") && pwd.equals("1234")){
			out.println("로그인 되셨습니다");
		} else {
			out.println("아이디 또는 비밀번호가 잘못 입력되셨습니다." + "<br>");
			%>
			<a href="./login.jsp">로그페이지 돌아가기</a>
	<%			
		}
	%>
	
</body>
</html>