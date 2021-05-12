<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.BookRepository" %>
<%@ page import = "dto.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String bookId = request.getParameter("bookId");
		String name = request.getParameter("name");
		Integer unitPrice = Integer.valueOf(request.getParameter("unitPrice"));
		String author = request.getParameter("author");
		String description = request.getParameter("description");
		String publisher = request.getParameter("publisher");
		String category = request.getParameter("category");
		long unitsInStock = Long.valueOf(request.getParameter("unitsInStock"));
		long totalPages = Long.valueOf(request.getParameter("totalPages"));
		String releaseDate = request.getParameter("releaseDate");
		String condition = request.getParameter("condition");
		
		BookRepository dao = BookRepository.getBookRepositroy();
		Book book = new Book();
		book.setBookId(bookId);
		book.setName(name);
		book.setUnitPrice(unitPrice);
		book.setAuthor(author);
		book.setDescription(description);
		book.setPublisher(publisher);
		book.setCategory(category);
		book.setUnitsInStock(unitsInStock);
		book.setTotalPages(totalPages);
		book.setReleaseDate(releaseDate);
		book.setCondition(condition);
		
		dao.addBook(book);
		
		response.sendRedirect("./books.jsp");
	%>
</body>
</html>