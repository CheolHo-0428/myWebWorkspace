<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Book"%>
<%@ page import = "dao.BookRepository"%>
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
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">도서 목록</h1>
		</div>
	</div>
	
	<% 
		response.setIntHeader("Refresh", 3);
		BookRepository dao = BookRepository.getBookRepositroy();
		ArrayList<Book> listOfBooks = dao.getAllBooks();
	%>
	<div class="container">
		<div class="column" align="left">
			<% for(int i=0; i<listOfBooks.size(); i++){
				Book book = listOfBooks.get(i);
			%>
			<div class = "col-md-10">
				<h3><%=book.getCategory()%><%=book.getName()%></h3><br>
				<p><%=book.getDescription() %> </p>
				<p><%=book.getAuthor()%> | <%=book.getPublisher()%> | <%=book.getUnitPrice()%>원</p>
				<p><a href="./book.jsp?id=<%=book.getBookId()%>"
						class="btn btn-secondary" role = "button">상세 정보 &raquo;></a></p>
				<br>
			</div>
			<% 
				}
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>