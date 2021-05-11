<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Tag</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="form02_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id" size="6"><input type="button" value="아이디 중복 검사">
		<p>비밀번호 : <input type="password" name="pwd">
		<p>이름 : <input type="text" name="name">
		<p>연락처 : 
			<select name="phone">
				<optgroup label="통신사">
					<option value="010">010</option>
					<option value="016">016</option>
					<option value="011">011</option>
					<option value="017">017</option>
				</optgroup>
			</select> -
			<input type = "text" name = "phone" size="4" > -
			<input type = "text" name = "phone" size="4">
		<p>성별 : <input type="radio" name="gender" value="남자" checked>남성
				<input type="radio" name="gender" value="여자">여성
		<p>취미 : 독서<input type="checkbox" name=hobbys value="독서" checked>
				운동<input type="checkbox" nmae=hobbys value="운동">
				영화<input type="checkbox" name=hobbys value="영화">
		<p><input type="submit" value="가입하기"><input type="reset" value="다시 쓰기">
	</form>
</body>
</html>