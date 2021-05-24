<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="../dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
    	rel="stylesheet">
    <link href="../resources/css/bootstrap.min.css" />
<script type="text/javascript" src="../resources/js/validation.js"></script>

<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("userId");	
	
		out.println(id);
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		while(rs.next()){
			String m_id = rs.getString("id");
			String m_pwd = rs.getString("password");
			String m_name = rs.getString("name");
			String m_gender = rs.getString("gender");
			String m_birth = rs.getString("birth");
			String m_mail = rs.getString("mail");
			String m_phone = rs.getString("phone");
			String m_address = rs.getString("address");
			String m_regist_day = rs.getString("regist_day");
	%>
	
	<jsp:include page="../menu.jsp" />
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">회원정보 수정</h1>
		</div>
	</div>
	<div class="col-md-7" style="padding-left:400px">
		<form action="./processUpdateMember.jsp" name="updateMember" id="updateMember" method="post" class="form-horizontal">
			<div class="form-group row" align="left">
				<label class="col-sm-3">아이디</label>
				<div class="col-sm-3">
					<input type="text" name="memberId" class="form-control" value="<%=m_id%>">
				</div>
			</div>
			<div class="form-group row" align="left">
				<label class="col-sm-3">비밀번호</label>
				<div class="col-sm-3">
					<input type="password" name="password" class="form-control">
				</div>
			</div>
			<div class="form-group row" align="left">
				<label class="col-sm-3">비밀번호 확인</label>
				<div class="col-sm-3">
					<input type="password" name="password_confirm" class="form-control">
				</div>
			</div>
			<div class="form-group row" align="left">
				<label class="col-sm-3">성명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control" value="<%=m_name%>">
				</div>
			</div>
			<div class="form-group row" align="left">
				<label class="col-sm-3">성별</label>
				<div class="col-sm-3">
					<input type="radio" name="gender" value="남자">남자 
						&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="gender" value="여자">여자
				</div>
			</div>
			<div class="form-group row" align="left">
				<label class="col-sm-3">생년월일</label>
				<div class="col-sm-3">
					<input type="text" name="birth" class="form-control" value="<%=m_birth%>">
				</div>
			</div>
			<div class="form-group row" align="left">
				<label class="col-sm-3">이메일</label>
				<div class="col-sm-3">
					<input type="text" name="mail" class="form-control" value="<%=m_mail%>">
				</div>
			</div>
			<div class="form-group row" align="left">
				<label class="col-sm-3">전화번호</label>
				<div class="col-sm-3">
					<input type="text" name="phone" class="form-control" value="<%=m_phone%>">
				</div>
			</div>
			<div class="form-group row" align="left">
				<label class="col-sm-3">주소</label>
				<div class="col-sm-5">
					<input type="text" name="address" class="form-control" value="<%=m_address%>">
				</div>
			</div>
			<div class="form-group row" align="left">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="button" class="btn btn-primary" value="수정완료" onclick="memberConfirm()">
					<input type="reset" class="btn btn-danger" value="다시작성하기">
				</div>
			</div>		
		</form>
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