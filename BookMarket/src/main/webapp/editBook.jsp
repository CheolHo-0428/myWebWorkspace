<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 편집</title>
<script type="text/javascript">
	function deleteConfirm(id){
		if (confirm("해당 상품을 삭제합니다!")==true){
			location.href = "./deleteBook.jsp?id=" + id;
		}
		else {
			return;
		}
	}
</script>


</head>
<!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
    	rel="stylesheet">
    <link href="./resources/css/bootstrap.min.css" />	
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">도서 편집</h1>
		</div>
	</div>
	<div class="container">
		<div class="column" align="left">
			<%@ include file="dbconn.jsp" %>
			<% 
				String edit = request.getParameter("edit");
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from book";
				pstmt = conn.prepareStatement(sql);
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
			<div class = "col-md-10">
				<h3><%=b_category%><%=b_name%></h3><br>
				<div class = "col-md-5">
					<img src="./resources/images/<%=b_filename%>" 
						alt="<%=b_filename%>" width="100%">
				</div><br>
				<p><%=b_description %> </p>
				<p><%=b_author%> | <%=b_publisher%> | <%=b_unitprice%>원</p>
				<p><% 
						if(edit.equals("update")){
					%>
					<a href="./updateBook.jsp?id=<%=b_id%>"
						class="btn btn-success" role = "button"> 수정 &raquo;></a></p>
					<% 
						} else if (edit.equals("delete")) {
					%>
					<a href="#" onclick="deleteConfirm('<%=b_id%>')"
						class="btn btn-danger" role = "button"> 수정 &raquo;></a></p>		
					<%	
						}
					%>
				<br>
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
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>