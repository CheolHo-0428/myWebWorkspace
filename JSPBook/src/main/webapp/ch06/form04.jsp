<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>From Tag</title>
</head>
<body>
	<h2>회원 가입</h2>
	<form action="form04_process.jsp" name="memeber" method="post">
		<p>아이디 : <input type="text" name="id"> <input type="button" value="아이디 중복 검사">
		<p>비밀번호: <input type="password" name="pwd"> 
		<p>이름 : <input type="text" name="name">
		<p>연락처 :
			<select name="phone">
				<optgroup label="통신사">
					<option value="KT">KT</option>
					<option value="SKT">SKT</option>
					<option value="LGU">LGU</option>
				</optgroup>
			</select>
			<input type="text" name="phone" size=3> - 
			<input type="text" name="phone" size=3> -
			<input type="text" name="phone" size=3>
		<p>성별 : <input type="radio" name="gender" value="남성" checked>남성
				<input type="radio" name="gender" value="여성">여성
		<p>취미 : 독서<input type="checkbox" name="hobby" value="독서" checked>
				운동<input type="checkbox" name="hobby" value="운동">
				영화<input type="checkbox" name="hobby" value="영화">
		<p> 가입 인사<br>
			<textarea rows="5" cols="30" name="comment"></textarea>
		<p><input type="submit" value="가입하기"><input type="reset" value="다시쓰기">
	</form>
</body>
</html>