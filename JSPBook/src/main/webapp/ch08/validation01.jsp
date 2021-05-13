<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>

<script type="text/javascript">
		function CheckForm(){
			alert("아이디 : " + document.loginForm.id.value + "<br>" +
					"비밀번호 : " + document.loginForm.pwd.value);
		}
</script>

<body>
	<form name="loginForm">
		<p> 아이디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="pwd">
		<p> <input type="submit" value="로그인" onclick="CheckForm()">
	</form>

</body>
</html>