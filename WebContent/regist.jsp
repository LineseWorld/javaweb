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
    <h3 class="page-title">注册</h3>
    <form action="judge_regist.jsp" method="post">
        <div class="form-container">
            <div class="form-group">
              <label >账号</label>
              <input type="text" class="form-control"  placeholder="创建账号" name="user_id">
            </div>
            <div class="form-group">
              <label >昵称</label>
              <input type="text" class="form-control"  placeholder="创建昵称" name="user_name">
            </div>
            <div class="form-group">
                 <label >输入密码</label>
                 <input type="password" class="form-control"  placeholder="请输入密码" name="user_pwd">
            </div>
               <div class="form-group">
                 <label >确认密码</label>
                 <input type="password" class="form-control"  placeholder="再次输入密码" name="user_pwd2">
            </div>
            <button type="submit" class="btn btn-primary btn-block">立即注册</button>
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