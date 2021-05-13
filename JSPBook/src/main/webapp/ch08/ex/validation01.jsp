<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>

<script type="text/javascript">
	function FormCheck(){
		var form = document.loginm;
		var regPwd = /^[form.id.value]*$/;
		
		if(form.id.value==""){
			alert("아이디를 입력해주세요")
			form.id.select();
			return;
		} else if(regPwd.test(form.pwd.value) == true){
			alert("비밀버호는 ID를 포함할 수 없습니다");
			form.pwd.select();
			return;
		}
			
		form.submit();		
	}
</script>

<body>
	<form name="loginm">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="pwd">
		<p> <input type="submit" value="전송" onclick="FormCheck()">
	</form>
</body>
</html>