<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 등록</title>
</head>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
	rel="stylesheet">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
		<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">도서 등록</h1>
		</div>
	</div>
	<div class="container">
		<form action="./processAddBook.jsp" name="bookMember" 
			method="post" class="form-horizontal" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><b>도서 코드</b></label> 
				<div class="col-sm-3">
					<input type="text" id="bookId" name="bookId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>도서명</b></label> 
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>가격</b></label> 
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>저자</b></label> 
				<div class="col-sm-3">
					<input type="text" name="author" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>출판사</b></label> 
				<div class="col-sm-3">
					<input type="text" name="publisher" class="form-control">
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
					<input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>페이지 수</b></label> 
				<div class="col-sm-3">
					<input type="text" name="totalPages" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>출판일</b></label> 
				<div class="col-sm-3">
					<input type="text" name="releaseDate" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>책 분류</b></label> 
				<div class="col-sm-5">
					<input type="radio" name="condition" value="NewBook" checked> 신규도서
					<input type="radio" name="condition" value="RepairBook"> 중고도서
					<input type="radio" name="condition" value="E-Book"> 전자도서
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>설명</b></label> 
				<div class="col-sm-3">
					<textarea rows="3" cols="50" name="description"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>이미지</b></label> 
				<div class="col-sm-3">
					<input type="file" name="fn" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-offset-2 col-sm-10">
					<input type="submit" value="등록" class="btn btn-primary" onclick="CheckForm()">
				</label>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>