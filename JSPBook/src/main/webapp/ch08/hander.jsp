<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hander</title>
</head>

<script type="text/javascript">
	function checkForm(){
		var form = document.getElementById("frm");
		alert("이름은 " + form.name.value + "입니다");
	}
</script>

<body>
	<form id="frm">
		<p> 이름 : <input type="text" name="name">
		<p> <input type="submit" value="전송" onclick="checkForm()">
	</form>
</body>
</html>