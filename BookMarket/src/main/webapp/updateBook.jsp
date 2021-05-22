<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 수정</title>
</head>
<!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
    	rel="stylesheet">
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">도서 수정</h1>
		</div>
	</div>
	<%@ include file="dbconn.jsp" %>
	<% 
		String id = request.getParameter("id");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from book where b_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		while(rs.next()){
			String b_id = rs.getString("b_id");
			String b_name = rs.getString("b_name");
			int b_unitprice = rs.getInt("b_unitprice");
			String b_author = rs.getString("b_author");
			String b_publisher = rs.getString("b_publisher");
			String b_description = rs.getString("b_description");
			String b_category = rs.getString("b_category");
			long b_unitsinstock = rs.getLong("b_unitsinstock");
			int b_totalpages = rs.getInt("b_totalpages");
			String b_releasedate = rs.getString("b_releasedate");
			String b_condition = rs.getString("b_condition");
			String b_filename = rs.getString("b_filename");	
	%>
		<div class="container">
			<div class="row">
				<div class="col-md-5">
				 	<img alt="<%=b_filename%>" src="./resources/images/<%=b_filename%>" width="100%">
				</div>
				<form action="./processUpdateBook.jsp" name="newBook" 
					class="form-horizontal" method="post" enctype="multipart/form-data">
					<div class="form-group row">
						<label class="col-sm-3">도서코드</label>
						<div class="col-sm-5">
							<input type="text" name="bookId" id="bookId" class="form-control"
								value="<%=b_id %>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">도서명</label>
						<div class="col-sm-5">
							<input type="text" name="name" id="name" class="form-control"
								value="<%=b_name %>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">가격</label>
						<div class="col-sm-5">
							<input type="text" name="unitPrice" id="unitPrice" class="form-control"
								value="<%=b_unitprice%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">저자</label>
						<div class="col-sm-5">
							<input type="text" name="author" id="author" class="form-control"
								value="<%=b_author%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">출판사</label>
						<div class="col-sm-5">
							<input type="text" name="publisher" id="publisher" class="form-control"
								value="<%=b_publisher%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">설명</label>
						<div class="col-sm-5">
							<textarea rows="5" cols="50" name="description" class="form-control">
								<%=b_description%>
							</textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">분류</label>
						<div class="col-sm-5">
							<input type="text" name="category" id="category" class="form-control"
								value="<%=b_category%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">재고 수</label>
						<div class="col-sm-5">
							<input type="text" name="unitsinstock" id="unitsinstock" class="form-control"
								value="<%=b_unitsinstock%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">페이지 수</label>
						<div class="col-sm-5">
							<input type="text" name="totalpages" id="totalpages" class="form-control"
								value="<%=b_totalpages%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">출판일</label>
						<div class="col-sm-5">
							<input type="text" name="releasedate" id="releasedate" class="form-control"
								value="<%=b_releasedate%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">상태</label>
						<div class="col-sm-3">
							<input type="radio" name="condition" value="신규 도서">신규 도서
							<input type="radio" name="condition" value="중고 도서">중고 도서
							<input type="radio" name="condition" value="전자 도서">전자 도서
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3">이미지</label>
						<div class="col-sm-5">
							<input type="file" name="image" class="form-control"/>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-3">
							<input type="submit" value="등록" 
								class="btn btn-primary"/>
						</div>
					</div>
				</form>
			</div>
		</div>
	<% 
		}
		
		if(rs != null){
			rs.close();
		}
		if(pstmt != null){
			pstmt.close();
		}
		if(conn != null){
			conn.close();
		}
	%>
</body>
</html>