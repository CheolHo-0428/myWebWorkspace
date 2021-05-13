<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>validation02</title>
</head>

<script type="text/javascript">
	function CheckForm(){
		var form = document.loginMember
		if(form.id.value == ""){
			alert("아이디를 입력하세요");
			form.id.focus();
			return false;
		} else if(form.pwd.value == "") {
			alert("비밀번호를 입력하세요");
			form.pwd.focus();
			return false;
		}
		form.submit();
	}

</script>

<body>
	<form action="validation02_process.jsp" method="post" name="loginMember">
		<p> 아 이 디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="pwd">
		<p> <input type="submit" value="로그인" onclick="CheckForm()">
	</form>
</body>
</html>