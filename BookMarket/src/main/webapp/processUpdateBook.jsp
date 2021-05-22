<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ include file="dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		String realFolder ="C:\\myJavaDev\\myWebWorkspace\\BookMarket\\src\\main\\webapp\\resources\\images";
		String encType = "utf-8";
		int maxSize = 1024 * 1024 * 5;
		
		MultipartRequest multi = new MultipartRequest(request, realFolder, 
			maxSize, encType, new DefaultFileRenamePolicy());
		
		String bookId = multi.getParameter("bookId");
		String name = multi.getParameter("name");
		String unitPrice = multi.getParameter("unitPrice");
		String author = multi.getParameter("author");
		String publisher = multi.getParameter("publisher");
		String description = multi.getParameter("description");
		String category = multi.getParameter("category");
		String unitsinstock = multi.getParameter("unitsinstock");
		String totalpages = multi.getParameter("totalpages");
		String releasedate = multi.getParameter("releasedate");
		String condition = multi.getParameter("condition");
		
		Integer price;
		long stock;
		Integer pages;
		
		if(unitPrice.isEmpty()){
			price = 0;
		} else {
			price = Integer.valueOf(unitPrice);
		}
		
		if(unitsinstock.isEmpty()){
			stock = 0;
		} else {
			stock = Long.valueOf(unitsinstock);
		}
		
		if(totalpages.isEmpty()){
			pages = 0;
		} else {
			pages = Integer.valueOf(totalpages);
		}
	
		Enumeration files = multi.getFileNames();
		String fname = (String) files.nextElement();
		String filename = multi.getFilesystemName(fname);
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from book where b_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, bookId);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			if(filename != null){
				sql = "update book set b_name=?, b_unitprice=?, b_author=?, b_publisher=?, b_description=?, b_category=?, b_unitsinstock=?, b_totalpages=?, b_releasedate=?, b_condition=?, b_filename=? where b_id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, name);
				pstmt.setInt(2, price);
				pstmt.setString(3, author);
				pstmt.setString(4, publisher);
				pstmt.setString(5, description);
				pstmt.setString(6, category);
				pstmt.setLong(7, stock);
				pstmt.setInt(8, pages);
				pstmt.setString(9, releasedate);
				pstmt.setString(10, condition);
				pstmt.setString(11, filename);
				pstmt.setString(12, bookId);
				pstmt.executeUpdate();
			}
			else{
				sql = "update book set b_name=?, b_unitprice=?, b_author=?, b_publisher=?, b_description=?, b_category=?, b_unitsinstock=?, b_totalpages=?, b_releasedate=?, b_condition=? where b_id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, name);
				pstmt.setInt(2, price);
				pstmt.setString(3, author);
				pstmt.setString(4, publisher);
				pstmt.setString(5, description);
				pstmt.setString(6, category);
				pstmt.setLong(7, stock);
				pstmt.setInt(8, pages);
				pstmt.setString(9, releasedate);
				pstmt.setString(10, condition);
				pstmt.setString(11, bookId);
				pstmt.executeUpdate();
			}
		}
		
		if(rs != null){
			rs.close();
		}
		if(pstmt != null){
			pstmt.close();
		}
		if(conn != null){
			conn.close();
		}
		
		response.sendRedirect("./editBook.jsp?edit=update");
	%>
</body>
</html>