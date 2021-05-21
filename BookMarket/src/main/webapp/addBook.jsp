<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 등록</title>
</head>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
	rel="stylesheet">
<link href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message">

	<jsp:include page="menu.jsp"></jsp:include>
	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3"><fmt:message key="title" /></h1>
		</div>
	</div>
	<div class="container">
		
		<div class="text-right">
			<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">Logout</a>
		</div>
	
		<form action="./processAddBook.jsp" name="bookMember" 
			method="post" class="form-horizontal" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="bookId" /></label> 
				<div class="col-sm-3">
					<input type="text" id="bookId" name="bookId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="name" /></label> 
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitPrice" /></label> 
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="author" /></label> 
				<div class="col-sm-3">
					<input type="text" name="author" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="publisher" /></label> 
				<div class="col-sm-3">
					<input type="text" name="publisher" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="category" /></label> 
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitsInStock" /></label> 
				<div class="col-sm-3">
					<input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="totalPages" /></label> 
				<div class="col-sm-3">
					<input type="text" name="totalPages" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="releaseDate" /></label> 
				<div class="col-sm-3">
					<input type="text" name="releaseDate" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="condition" /></label> 
				<div class="col-sm-5">
					<input type="radio" name="condition" value="신규 도서" checked> <fmt:message key="condition_New" />
					<input type="radio" name="condition" value="중고 도서"> <fmt:message key="condition_Old" />
					<input type="radio" name="condition" value="전자 도서"> <fmt:message key="condition_Refurbished" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="description" /></label> 
				<div class="col-sm-3">
					<textarea rows="3" cols="50" name="description"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="bookImage" /></label> 
				<div class="col-sm-3">
					<input type="file" name="fn" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button" value="<fmt:message key="button" />" class="btn btn-primary" onclick="CheckForm()">
				</div>
			</div>
		</form>
	</div>
	</fmt:bundle>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>