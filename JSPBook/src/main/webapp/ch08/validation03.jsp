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
		var form = document.loginMember;
		if(form.id.value.length<4 || form.id.value.length>12){
			alert("아이디를 4~12자 이내로 입력해주세요");
			form.id.select();
			return;
		} else if(form.pwd.value<4){
			alert("비밀번호를 4자 이상 입력해주세요.")
			form.pwd.select();
			return;
		}
		form.submit();
	}
</script>



<body>
	<form name="loginMember">
		<p>아 이 디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="pwd">
		<p> <input type="submit" value="로그인" onclick="CheckForm()">
	</form>
</body>
</html>