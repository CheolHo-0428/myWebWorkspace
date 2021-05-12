<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
	<form action="fileupload01_process.jsp" method="post" 
		name="fileForm" enctype="multipart/form-data">
		<p> 이 름 : <input type="text" name="name">
		<p> 제 목 : <input type="text" name="subject">
		<p> 파 일 : <input type="file" name="filename">
		<p><input type="submit" value="전송">	
	</form>
</body>
</html>