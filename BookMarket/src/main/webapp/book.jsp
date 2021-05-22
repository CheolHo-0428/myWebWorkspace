<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page errorPage = "exceptionNoBookId.jsp" %>
<%@ include file="dbconn.jsp" %>
<jsp:useBean id="bookRepo" class="dao.BookRepository" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 상세 정보</title>
<script type="text/javascript">
	function addToCart(){
		if(confirm("도서를 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>

</head>
<!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
    	rel="stylesheet">
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">도서 상세 정보</h1>
		</div>
	</div>
	<% 
		response.setIntHeader("Refresh", 100);
		String id = request.getParameter("id");
		BookRepository dao = BookRepository.getBookRepositroy();
		Book book = dao.getBookById(id);
		
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
		<div class="row" align="left">
			<div class = "col-md-4">
				<img src="./resources/images/<%=b_filename%>" alt="<%=b_filename%>"
						width="100%">
			</div>
			<div class = "col-md-6">
				<h3><%=b_category%><%=b_name%></h3>
				<p><%=b_description %> </p>
				<p><b>도서코드</b> : <span class="badge badge-danger">
						<%=b_id%></span>
				<p><b>책 분류</b> : <%=b_condition %>
				<p><b>출판사</b> : <%=b_publisher %>
				<p><b>저자</b> : <%=b_author %>		
				<p><b>재고수</b> : <%=b_unitsinstock %>권
				<p><b>총 페이지수</b> : <%=b_totalpages %>p
				<p><b>출판일</b> : <%=b_releasedate %>
				<h3><%= b_unitprice%>원</h3>
				<p>
					<form name="addForm" action="./addCart.jsp?id=<%=b_id%>" method="post" >
						<a href="#" class="btn btn-info" onclick="addToCart()">도서 주문 &raquo;></a>
						<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
						<a href="./books.jsp" class="btn btn-secondary">도서 목록 &raquo;></a>
					</form>
				</p>
			</div>			
		</div>
	</div>
	<% 
		}
	%>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>