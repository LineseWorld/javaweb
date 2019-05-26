<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.LoginDao" %>
<%@ page import="Info.UserInfo" %>
<!DOCTYPE html>
<html>
<head>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>

</head>
<link href="css/play.css" rel="stylesheet" type="text/css" />


<body >
	
<script>
var flag = false;
function changeImage()
{
	element=document.getElementById('myimage')
	if (flag)
	{
		element.src="img/save.jpg";
		flag = false;
	}
	else
	{
		element.src="img/saved.jpg";
		flag = true;
	}
}
</script>
<img id="myimage" onclick="changeImage()" src="img/save.jpg" width="100" height="180">
<p>点击灯泡就可以打开或关闭这盏灯</p>	

	
</body>
</html>