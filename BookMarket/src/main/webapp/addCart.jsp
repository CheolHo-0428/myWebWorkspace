<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.BookRepository" %>
<%@ page import="dto.Book"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		String id = request.getParameter("id");
		if (id == null || id.trim().equals("")){
			response.sendRedirect("books.jsp");
			return;
		}
		
		BookRepository dao = BookRepository.getBookRepositroy();
		
		Book book = dao.getBookById(id);
		if(book == null){
			response.sendRedirect("exceptionNoBookId.jsp");
		}
		
		ArrayList<Book>bookList = dao.getAllBooks();
		Book books = new Book();
		for(int i=0; i<bookList.size(); i++){
			books = bookList.get(i);
			if(books.getBookId().equals(id)){
				break;
			}
		}
		
		ArrayList<Book> list = (ArrayList<Book>) session.getAttribute("cartlist");
		if(list==null){
			list = new ArrayList<Book>();
			session.setAttribute("cartlist", list);
		}
		
		int cnt = 0;
		Book booksQnt = new Book();
		
		for(int i=0; i<list.size(); i++){
			booksQnt = list.get(i);
			if(booksQnt.getBookId().equals(id)){
				cnt++;
				int orderQuantity = booksQnt.getQuantity() + 1;
				booksQnt.setQuantity(orderQuantity);
			}
		}
		
		if(cnt == 0) {
			books.setQuantity(1);
			list.add(books);
		}
		
		response.sendRedirect("book.jsp?id=" + id);
	%>


</body>
</html>