<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		String sessionId = (String) session.getAttribute("userID");
		//out.println(sessionId);
	%>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class = "navbar-header">
				<a class = "navbar-brand" href="<c:url value="/welcome.jsp"/>">Home</a>
			</div>
			<div>
				<ul class="navbar-nav mr-auto">
						<% 
							if(session.getAttribute("userID") == null){
						%>
							<li class="nav-itme"><a class="nav-link" href="<c:url value="/member/loginMember.jsp"/>">로그인</a></li>
							<li class="nav-itme"><a class="nav-link" href="<c:url value="/member/addMember.jsp"/>">회원가입</a></li>
						<% 
							} else {
						%>
							<li style="padding-top: 7px; color:white">[<%=sessionId%> 님]</li>
							<li class="nav-itme"><a class="nav-link" href="<c:url value="/member/logoutMember.jsp"/>">로그아웃</a></li>
							<li class="nav-itme"><a class="nav-link" href="<c:url value="/member/updateMember.jsp?userId="/><%=sessionId%>">회원수정</a></li>
						<% 
							}
						%>
					<li class="nav-itme"><a class="nav-link" href="<c:url value="/products.jsp"/>">상품목록</a></li>
					<li class="nav-itme"><a class="nav-link" href="<c:url value="/addProduct.jsp"/>">상품등록</a></li>
					<li class="nav-itme"><a class="nav-link" href="<c:url value="/editProduct.jsp?edit=update"/>">상품수정</a></li>
					<li class="nav-itme"><a class="nav-link" href="<c:url value="/editProduct.jsp?edit=delete"/>">상품삭제</a></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>