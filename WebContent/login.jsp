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
	<h3 class="page-title">登录</h3>
    <form action="judge_login.jsp" method="post">
        <div class="form-container">
            <div class="form-group">
              <label >账号</label>
              <input type="text" class="form-control" placeholder="请输入用户名" name="user_id">
            </div>
            <div class="form-group">
                 <label >密码</label>
                 <input type="password" class="form-control"  placeholder="请输入密码" name="user_pwd">
            </div>
            <button type="submit" class="btn btn-primary btn-block">登录</button>
        </div>
    </form>
    <br/>
   	<div class="col-md-2 column">
	</div> 
   	<div align="center">
    <div class="row clearfix" >
		<div class="col-md-8 column">
			<div class="jumbotron" >
				<h1>
					你好, 道友!
				</h1>
				<p>
					This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.
				</p>
				<p>
					 <a class="btn btn-primary btn-large" href="#">关于我们</a>
				</p>
			</div>
		</div>
		
	</div>
	</div>
	<div class="col-md-2column">		
	</div>
</body>
</html> 


