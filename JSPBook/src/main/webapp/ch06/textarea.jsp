<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<form action="textarea_process.jsp" method="post">
		<p><textarea name = "comment" rows="3" cols="30" maxlength="30"></textarea>
		<p><input type="submit" value="전송"> <input type="reset" value="취소">
	</form>
</body>
</html>