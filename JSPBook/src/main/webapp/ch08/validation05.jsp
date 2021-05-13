<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>validation</title>
</head>

<script type="text/javascript">
	function CheckForm(){
		var id = document.loginMember.id.value;
		var pwd = document.loginMember.pwd.value;
		var name = document.loginMember.name.value;
		var phone = document.loginMember.phone1.vlaue + "-"
					document.loginMember.phone2.vlaue + "-"
					document.loginMember.phone3.vlaue;
		var email = document.loginMember.email.value;
		
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		var regExpName = /^[가-힣]*$/;
		var regExpPasswd = /^[0-9]*$/;
		var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		
		if(!regExpId.test(id)){
			alert("아이디는 숫자로 시작할 수 없습니다.");
			document.loginMember.id.select();
			return;
		} else if(!regExpName.test(name)){
			alert("이름은 한글만 입력 가능합니다.");
			document.loginMember.name.select();
			return;
		} else if(!regExpPasswd.test(pwd)){
			alert("비밀번호는 숫자만 가능합니다.");
			document.loginMember.pwd.select();
			return;
		} else if(!regExpPhone.test(phone)){
			alert("연락처 입력을 확인 해주세요.")
			return;
		} 
		
		form.submit();
	}
</script>

<body>
	<h3>회원 가입</h3>
	<form action="validation_process05.jsp" method="post" name="loginMember">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호: <input type="password" name="pwd">
		<p>이름 : <input type="text" name="name">
		<p>
			연락처 : 
			<select name="phone1">
				<option value="010">010</option>
				<option value="016">016</option>
				<option value="011">011</option>
				<option value="017">017</option>
			</select>-
			<input type="text" name="phone2" size="4">-
			<input type="text" name="phone3" size="4">
		<p> 이메일 : <input type="text" name="email">
		<p> <input type="submit" value="가입하기" onclick="CheckForm()">
	</form>

</body>
</html>