<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注销页面</title>
</head>
<body>
	 <%
       response.setHeader("refresh","3;URL=login.jsp");
       session.invalidate();//注销
     %>
     <h3>你已经成功退出本系统,3秒后会跳转到首页</h3>
     <h3>如果没有跳转请点击<a href="login.jsp">这里</a></h3>
</body>
</html>