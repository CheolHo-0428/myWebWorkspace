<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.ProductRepository" %>
<%@ page import="dto.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String productId = request.getParameter("productId");
		String name = request.getParameter("name");
		String unitPrice = request.getParameter("unitPrice");
		String description = request.getParameter("description");
		String manufacturer = request.getParameter("manufacturer");
		String category = request.getParameter("category");
		String unitsInStock = request.getParameter("unitsInStock");
		String condition = request.getParameter("condition");
		Integer price;
		long stock;
		
		if(unitPrice.isEmpty()){
			price=0;
		} else {
			price = Integer.valueOf(unitPrice);
		}
		
		if(unitsInStock.isEmpty()){
			stock = 0L;
		} else{
			stock = Long.valueOf(unitsInStock);
		}
		
		//ProductRepository dao = new ProductRepository();
		ProductRepository dao = ProductRepository.getInstance();
		Product newProduct = new Product(productId, name, price);
		newProduct.setDescription(description);
		newProduct.setManufacturer(manufacturer);
		newProduct.setCategory(category);
		newProduct.setUnitsInStock(stock);
		newProduct.setCondition(condition);
		
		dao.addProduct(newProduct);
		
		response.sendRedirect("products.jsp");
	%>
</body>
</html>