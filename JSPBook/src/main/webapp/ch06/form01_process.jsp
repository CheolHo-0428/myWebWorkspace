<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String[] phone = request.getParameterValues("phone");
		String gender = request.getParameter("gender");
		String [] hobby = request.getParameterValues("hobby");
		
		Date day = new Date();
		String am_pm;
		int hour = day.getHours();
		int minute = day.getMinutes();
		int second = day.getSeconds();
		
		if(hour/12==0){
			am_pm = "AM";
		} else {
			am_pm="PM";
			hour -= 12;
		}
	%>
	<h2>가입 정보</h2>
	<p>아이디 : <%=id %>
	<p>비밀번호 : <%=pwd %>
	<p>이름 : <%= name %>
	<p>연락처 : 
		<% 
			String number ="";
			for(String num : phone){
				number += num += "-";
			}
			number = number.replaceAll("-$", "");
			out.println(number);
		%>
	<p>성별 : <%= gender %>
	<p>취미 : 
		<% 
			String value="";
			for(String ho : hobby){
				value += ho += ",";
			}
			value = value.replaceAll(",$", "");
			out.println(value);
		%>
	
</body>
</html>