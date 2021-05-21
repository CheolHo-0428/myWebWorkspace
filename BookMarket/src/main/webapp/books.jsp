<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Book"%>
<%@ page import = "dao.BookRepository"%>
<%@ page import = "com.oreilly.servlet.*" %>
<%@ page import = "com.oreilly.servlet.multipart.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.sql.*" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 목록</title>
</head>
<!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
    	rel="stylesheet">
    <link href="./resources/css/bootstrap.min.css" />	
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">도서 목록</h1>
		</div>
	</div>
	
	<% 
		response.setIntHeader("Refresh", 100);
		BookRepository dao = BookRepository.getBookRepositroy();
		ArrayList<Book> listOfBooks = dao.getAllBooks();
	%>
	<div class="container">
		<div class="column" align="left">
			<%@ include file="dbconn.jsp" %>
			<% 
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from book";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
					String b_id = rs.getString("b_id");
					String b_name = rs.getString("b_name");
					int b_unitprice = rs.getInt("b_unitprice");
					String b_author = rs.getString("b_author");
					String b_publisher = rs.getString("b_publisher");
					String b_description = rs.getString("b_description");
					String b_category = rs.getString("b_category");
					long b_unitsinstock = rs.getLong("b_unitsinstock");
					int b_totalpages = rs.getInt("b_totalpages");
					String b_releasedate = rs.getString("b_releasedate");
					String b_condition = rs.getString("b_condition");
					String b_filename = rs.getString("b_filename");
					
					
			%>
			<div class = "col-md-10">
				<h3><%=b_category%><%=b_name%></h3><br>
				<div class = "col-md-5">
					<img src="./resources/images/<%=b_filename%>" 
						alt="<%=b_filename%>" width="100%">
				</div><br>
				<p><%=b_description %> </p>
				<p><%=b_author%> | <%=b_publisher%> | <%=b_unitprice%>원</p>
				<p><a href="./book.jsp?id=<%=b_id%>"
						class="btn btn-secondary" role = "button">상세 정보 &raquo;></a></p>
				<br>
			</div>
			<% 
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
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>