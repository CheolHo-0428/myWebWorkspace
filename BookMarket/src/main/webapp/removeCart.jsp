<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.BookRepository" %>
<%@ page import="dto.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		String id = request.getParameter("id");
		if(id == null || id.trim().equals("")){
			response.sendRedirect("books.jsp");
			return;
		}
		
		BookRepository dao = BookRepository.getBookRepositroy();
		
		Book book = dao.getBookById(id);
		if(book == null){
			response.sendRedirect("exceptionNoBookId.jsp");
		}
		
		ArrayList<Book> cartList = (ArrayList<Book>) session.getAttribute("cartlist");
		Book booksQnt = new Book();
		for(int i=0; i<cartList.size(); i++){
			booksQnt = cartList.get(i);
			if (booksQnt.getBookId().equals(id)){
				cartList.remove(booksQnt);
			}
		}
	
		response.sendRedirect("cart.jsp");
	%>

</body>
</html>