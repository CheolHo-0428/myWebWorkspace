<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.BookRepository" %>
<%@ page import = "dto.Book" %>
<%@ page import = "com.oreilly.servlet.*" %>
<%@ page import = "com.oreilly.servlet.multipart.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>
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
		long totalPages = Long.valueOf(multi.getParameter("totalPages"));
		String releaseDate = multi.getParameter("releaseDate");
		String condition = multi.getParameter("condition");
		
		Enumeration eumList = multi.getFileNames();
		String paramName = (String) eumList.nextElement();
		String fileName = multi.getFilesystemName(paramName);
		
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
		book.setFilename(fileName);
		
		dao.addBook(book);
		
		response.sendRedirect("./books.jsp");
	%>
</body>
</html>