<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>



<link rel="stylesheet" href="css/login.css">

<head>
<meta charset="UTF-8">
<title>登陆</title>
</head>
<body>
	<%@ include file="base.jsp" %>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div style="z-index:10000;" >
	<h3 class="page-title" style="color:white;">登录</h3>
    <form action="judge_login.jsp" method="post">
        <div class="form-container">
            <div class="form-group">
              <label style="color:white;">账号</label>
              <input style="z-index:10000;" type="text" class="form-control" placeholder="请输入用户名" name="user_id">
            </div>
            <div class="form-group">
                 <label style="color:white;">密码</label>
                 <input type="password" class="form-control"  placeholder="请输入密码" name="user_pwd">
            </div>
            <button type="submit" class="btn btn-primary btn-block">登录</button>
        </div>
    </form>
    </div>

   	
</body>
</html> 


