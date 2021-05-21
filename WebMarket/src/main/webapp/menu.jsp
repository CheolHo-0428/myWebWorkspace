<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class = "navbar-header">
				<a class = "navbar-brand" href="./welcome.jsp">Home</a>
			</div>
			<div>
				<ul class="navbar-nav mr-auto">
					<li class="nav-itme"><a class="nav-link" href="./products.jsp">상품 목록</a>
					<li class="nav-itme"><a class="nav-link" href="./addProduct.jsp">상품 등록</a>
					<li class="nav-itme"><a class="nav-link" href="./editProduct.jsp?edit=update">상품 수정</a>
					<li class="nav-itme"><a class="nav-link" href="./editProduct.jsp?edit=delete">상품 삭제</a>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>