<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="UploadServlet" method="post" enctype="multipart/form-data">
		学号:<input name="uid"><br/>
		姓名:<input name="uname"><br/>
		上传照片:<input type="file" name="user_img"/><br/>
		<input type="submit" value="上传">
	</form>
</body>
</html>