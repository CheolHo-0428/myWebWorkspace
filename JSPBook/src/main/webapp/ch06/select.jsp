<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="select_process.jsp" method="post">
			<p><select name="city" size="5">
				<optgroup label="서울특별시">
					<option value="서초구">서초구</option>
					<option value="강남구">강남구</option>
					<option value="송파구">송파구</option>
				</optgroup>
				<optgroup label="경기도">
					<option value="성남시">성남시</option>
					<option value="수원시">수원시</option>
					<option value="용인시">용인시</option>
				</optgroup>
			</select>
			<p><input type="submit" value="전송">
		</form>
</body>
</html>