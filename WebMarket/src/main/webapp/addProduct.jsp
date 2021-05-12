<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.ProductRepository" %>
<jsp:useBean id="addProduct" class="dao.ProductRepository" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
    	rel="stylesheet">
    <script src="./resources/js/validation.js"></script>	
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">상품 등록</h1>
		</div>
	</div>
	<div class="container">
		<form action="./processAddProduct.jsp" name="newProduct" method="post" class="form-horizontal">
			<div class="form-group row">
				<label class="col-sm-2"><b>상품 코드</b></label> 
				<div class="col-sm-3">
					<input type="text" name="productId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>상품명</b></label>
				<div class="col-sm-2">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>가격</b></label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>상세 정보</b></label>
				<div class="col-sm-5">
					<textarea rows="2" cols="50" name="description" class="form-control">
					</textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>제조사</b></label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>분류</b></label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>재고 수</b></label>
				<div class="col-sm-3">
					<input type="text" name="unitsInStock" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>상태</b></label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New"> 신규 제품 
					<input type="radio" name="condition" value="Old"> 중고 제품 
					<input type="radio" name="condition" value="Refurbished"> 리퍼 제품
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-offset-2 col-sm-10">
					<input type="submit" value="등록" class="btn btn-primary">
				</label>
			</div>
		</form>	
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>