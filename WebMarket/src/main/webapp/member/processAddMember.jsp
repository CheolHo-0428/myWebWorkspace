<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="../dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("memberId");
		String pwd = request.getParameter("password");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		String regist_day = dateFormat.format(Calendar.getInstance().getTime());
					
		PreparedStatement pstmt = null;
		String sql = "insert into member values(?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		pstmt.setString(4, gender);
		pstmt.setString(5, birth);
		pstmt.setString(6, email);
		pstmt.setString(7, phone);
		pstmt.setString(8, address);
		pstmt.setString(9, regist_day);
		pstmt.executeUpdate();
		
		if(pstmt != null){
			pstmt.close();
		}
		if(conn != null){
			conn.close();
		}
		
		response.sendRedirect("./welcomeMember.jsp");
	%>
</body>
</html>