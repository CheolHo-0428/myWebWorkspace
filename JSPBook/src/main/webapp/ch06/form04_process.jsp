<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Tag Process</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		Date day = new Date();
		String date = day.toLocaleString();
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String comment = request.getParameter("comment");
		String[] phone = request.getParameterValues("phone");
		String[] hobbys = request.getParameterValues("hobby");
		
		String number="";
		if(phone != null){
			for(int i=1; i<4; i++){
				number += phone[i] += "-";
			}
		} else {
			number = "정보가 기입되지 않았습니다.";
		}
		number = number.replaceAll("-$", "");
		
		String ho="";
		if(hobbys != null){
			for(String hobby : hobbys){
				ho += hobby += ", ";
			}
		} else {
			ho = "정보가 기입되지 않았습니다.";
		}
		ho = ho.replaceAll(", $", "");
	%>
	<h2>가입 정보</h2>
	<p>가입 날짜 : <%=date %>
	<p>아이디 : <%=id %>
	<p>비밀번호 : <%=pwd %>
	<p>이름 : <%= name %>
	<p>연락처 : <%=phone[0]%> <%=number%>
	<p>성별 : <%=gender%>
	<p>취미 : <%=ho%>
	<p>가입 인사 : <%= comment %>
	<p><a href="form04_back.jsp">가입정보 다시 입력하기</a>
</body>
</html>