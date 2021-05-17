<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page errorPage = "exceptionNoBookId.jsp" %>
<jsp:useBean id="bookRepo" class="dao.BookRepository" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 상세 정보</title>
</head>
<!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
    	rel="stylesheet">
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">도서 상세 정보</h1>
		</div>
	</div>
	<% 
		response.setIntHeader("Refresh", 100);
		String id = request.getParameter("id");
		BookRepository dao = BookRepository.getBookRepositroy();
		Book book = dao.getBookById(id);
	%>
	
	<div class="container">
		<div class="row" align="left">
			<div class = "col-md-4">
				<img src="./resources/images/<%=book.getFilename()%>" alt="<%=book.getFilename()%>"
						width="100%">
			</div>
			<div class = "col-md-6">
				<h3><%=book.getCategory()%><%=book.getName()%></h3>
				<p><%=book.getDescription() %> </p>
				<p><b>도서코드</b> : <span class="badge badge-danger">
						<%=book.getBookId()%></span>
				<p><b>책 분류</b> : <%=book.getCondition() %>
				<p><b>출판사</b> : <%=book.getPublisher() %>
				<p><b>저자</b> : <%=book.getAuthor() %>		
				<p><b>재고수</b> : <%=book.getUnitsInStock() %>권
				<p><b>총 페이지수</b> : <%=book.getTotalPages() %>p
				<p><b>출판일</b> : <%=book.getReleaseDate() %>
				<h3><%= book.getUnitPrice()%>원</h3>
				<p>
					<a href="#" class="btn btn-info">도서 주문 &raquo;></a>
					<a href="./books.jsp" class="btn btn-secondary">도서 목록 &raquo;></a>
				</p>
			</div>			
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>