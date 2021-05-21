<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.BookRepository" %>
<%@ page import = "dto.Book" %>
<%@ page import = "com.oreilly.servlet.*" %>
<%@ page import = "com.oreilly.servlet.multipart.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String path = "C:\\myJavaDev\\myWebWorkspace\\BookMarket\\src\\main\\webapp\\resources\\images";
		int maxSize = 5 * 1024 * 1024;
		String encType = "utf-8";
		
		MultipartRequest multi = new MultipartRequest(request, path, 
				maxSize, encType, new DefaultFileRenamePolicy());
	
		String bookId = multi.getParameter("bookId");
		String name = multi.getParameter("name");
		Integer unitPrice = Integer.valueOf(multi.getParameter("unitPrice"));
		String author = multi.getParameter("author");
		String description = multi.getParameter("description");
		String publisher = multi.getParameter("publisher");
		String category = multi.getParameter("category");
		long unitsInStock = Long.valueOf(multi.getParameter("unitsInStock"));
		Integer totalPages = Integer.valueOf(multi.getParameter("totalPages"));
		String releaseDate = multi.getParameter("releaseDate");
		String condition = multi.getParameter("condition");
		
		Enumeration eumList = multi.getFileNames();
		String paramName = (String) eumList.nextElement();
		String fileName = multi.getFilesystemName(paramName);
		
		PreparedStatement pstmt = null;
		
		String sql = "insert into book values(?,?,?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, bookId);
		pstmt.setString(2, name);
		pstmt.setInt(3, unitPrice);
		pstmt.setString(4, author);
		pstmt.setString(5, publisher);
		pstmt.setString(6, description);
		pstmt.setString(7, category);
		pstmt.setLong(8, unitsInStock);
		pstmt.setInt(9, totalPages);
		pstmt.setString(10, releaseDate);
		pstmt.setString(11, condition);
		pstmt.setString(12, fileName);
		pstmt.executeUpdate();
		
		if(pstmt != null){
			pstmt.close();
		}
		if(conn != null){
			conn.close();
		}
		
		response.sendRedirect("books.jsp");
	%>
</body>
</html>