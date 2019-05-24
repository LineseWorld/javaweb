<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>


<link rel="stylesheet" href="css/login.css">
<head>
<meta charset="UTF-8">
<title>用户注册</title>
</head>
<body>

	<%@ include file = "base.jsp" %>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
    <h3 class="page-title" style="color:white;">注册</h3>
    <form action="judge_regist.jsp" method="post">
        <div class="form-container">
            <div class="form-group">
              <label style="color:white;">账号</label>
              <input type="text" class="form-control"  placeholder="创建账号" name="user_id">
            </div>
            <div class="form-group">
              <label style="color:white;">昵称</label>
              <input type="text" class="form-control"  placeholder="创建昵称" name="user_name">
            </div>
            <div class="form-group">
                 <label style="color:white;">输入密码</label>
                 <input type="password" class="form-control"  placeholder="请输入密码" name="user_pwd">
            </div>
               <div class="form-group">
                 <label style="color:white;">确认密码</label>
                 <input type="password" class="form-control"  placeholder="再次输入密码" name="user_pwd2">
            </div>
            <button type="submit" class="btn btn-primary btn-block">立即注册</button>
        </div>
    </form>
	<br/>
   	
</body>
</html>