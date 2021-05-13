<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String path = "c:\\upload";
		int maxSize = 5 * 1024 * 1024;
		String encType = "utf-8";
	
		MultipartRequest multi = new MultipartRequest(request, path, 
				maxSize, encType, new DefaultFileRenamePolicy());
		
		Enumeration filenum = multi.getFileNames();
		String paramName = (String) filenum.nextElement();
		String originName = multi.getOriginalFileName(paramName);
		String saveName = multi.getFilesystemName(paramName);
		String contentType = multi.getContentType(paramName);
		File fileSize = multi.getFile(paramName);
		long Size = fileSize.length();
		
		
		out.println("요청 파라미터 이름:" + paramName + "<br>");
		out.println("실제 파일 이름: " + originName + "<br>");
		out.println("저장 파일 이름: " + saveName + "<br>");
		out.println("파일 크기 : " + Size);
	%>
</body>
</html>