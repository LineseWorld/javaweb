<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<head>
<meta charset="UTF-8">
<title>base</title>
</head>
<body>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-11 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">道乎</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="请输入問題"/>
						</div> <button type="submit" class="btn btn-default">搜索</button>
					</form>
					<%  if(session.getAttribute("sessionid")==null){ %>
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a href="login.jsp">登陆</a>
						</li>
						<li >
							 <a href="regist.jsp" >注册</a>
							
						</li>
					</ul>
					<% }else{ %>
					<ul class="nav navbar-nav navbar-right">
						<li>
						<%String user_name = request.getSession().getAttribute("sessionname").toString();%>  您好，<a href="user.jsp"><%=user_name %></a>
						</li>
						<li >
							 <a href="logout.jsp" >注销</a>
						</li>
					</ul>
					<% } %>
				</div>
			</nav>
		</div>
		<div class="col-md-1 column">
			<a href = "#"><img  src="img/default.png" width =50 heoght=50 /></a>
		</div>
	</div>
</div>
</body>
</html>