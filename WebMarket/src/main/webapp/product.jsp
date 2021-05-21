<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.Product" %>
<%@ page import = "dao.ProductRepository" %>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<%@ page import = "java.sql.*" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
</head>

<!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
    	rel="stylesheet">
    <link href="./resources/css/bootstrap.min.css" />
    
<script type="text/javascript">
	function addToCart(){
		if (confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>    
    	
<body>
	<jsp:include page="menu.jsp"></jsp:include>
		<div class = "jumbotron">
			<div class = "container">
				<h1 class = "display-3">상품 정보</h1>
			</div>
		</div>
		<% 
			String id = request.getParameter("id");
			//ProductRepository dao = new ProductRepository();
			ProductRepository dao = ProductRepository.getInstance();
			Product product = dao.getProductByID(id);
		%>
		<%@ include file="dbconn.jsp" %>
		<% 
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from product where p_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			String p_id = "";
			String p_name = "";
			int p_unitprice = 0;
			String p_description = "";
			String p_category = "";
			String p_manufacturer= "";
			Long p_unitsInStock = null;
			String p_condition = "";
			String p_fileName = "";
			
			while(rs.next()){
			p_id = rs.getString("p_id");
			p_name = rs.getString("p_name");
			p_unitprice = rs.getInt("p_unitprice");
			p_description = rs.getString("p_description");
			p_category = rs.getString("p_category");
			p_manufacturer= rs.getString("p_manufacturer");
			p_unitsInStock = rs.getLong("p_unitsInStock");
			p_condition = rs.getString("p_condition");
			p_fileName = rs.getString("p_fileName");
			};
		%>
		<div class="container">
			<div class="row">
				<div class = "col-md-5">
					<img src="./resources/images/<%=p_fileName%>" 
						alt="<%=p_fileName%>" width="100%">
				</div>
				<div class = "col-md-6">
					<h3><%= p_name%></h3>
					<p><%=p_description %></p>
					<p> <b>상품 코드 : </b><span class="badge badge-danger">
						<%= p_id%></span>
					<p> <b>제조사 : </b><%= p_manufacturer %>
					<p> <b>분류 : </b><%= p_category %>
					<p> <b>재고 수 : </b><%= p_unitsInStock %>개
					<h4><%= p_unitprice %>원</h4>
					<p>
						<form action="./addCart.jsp?id=<%= p_id%>" 
							method="post" name="addForm">
							<a href="#" class="btn btn-info" onclick="addToCart()">상품 주문 &raquo;</a>
							<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
							<a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
						</form>
					</p>
				</div>
			</div>
			<hr>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<% 
		if(rs != null){
			rs.close();
		}
		if (pstmt != null){
			pstmt.close();
		}
		if(conn != null){
			conn.close();
		}
	%>
</body>
</html>