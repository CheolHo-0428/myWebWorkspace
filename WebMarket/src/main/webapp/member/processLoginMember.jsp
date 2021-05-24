<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
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
		String id = request.getParameter("username");
		String pwd = request.getParameter("password");
				
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from member where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		while(rs.next()){
			String m_id = rs.getString("id");
			String m_pwd = rs.getString("password");
			
			if(id.equals(m_id) && pwd.equals(m_pwd)){
				session.setAttribute("userID", id);
				response.sendRedirect("../welcome.jsp");
			} else {
				response.sendRedirect("../login_failed.jsp");
			}
		}	
	%>
</body>
</html>