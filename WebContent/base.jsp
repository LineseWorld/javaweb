<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.LoginDao" %>
<%@ page import="Info.UserInfo" %>
<!DOCTYPE html>
<html>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<head>
<meta charset="UTF-8">
<title>base</title>
<style>
	#top1{
		    width: 100%;
		    
		    height: 50px;
		    background: #fffefe;
		    color: black;
		    position: fixed;
		    top: 0px;
		    left: 0px;
		    z-index: 999;
		    
	}
	#brand{
		position: relative;
    	left: 140px;
    	
	}
	#serach{
		position: relative;
    	left: 400px;
    	top: -77px;
    	
	}
	#tag1{
		position: relative;
	    left: 240px;
	    top: -43px;
	    font-size: x-large;
	}
	a.one:hover{
		text-decoration:none;
		color:#ffcc00;
	}
	a.two:hover{
		text-decoration:none;
	}
	a.three{
	text-align:center;
	}
	a.three:hover{
		text-decoration:none;
		
	}
	#serach_button{
		position: relative;
    	left: 810px;
    	top: -114px;
	}
	.dropdown {
	  position: relative;
	  display: inline-block;
	}
	.dropdown-content {
	  display: none;
	  position: absolute;
	  background-color: white;
	  min-width: 100px;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  padding: 12px 16px;
	}
	.dropdown:hover .dropdown-content {
	  display: block;
	}
	#tag2{
		position: relative;
	    left: 1075px;
    	top: -148px;	
    }
	p.two:hover {background:#e8e8e8;}
	p.p2:hover{
		background:#66ff66;
	}

	

	
</style>
<body style="background-image:url('img/bg.jpg');background-repeat:no-repeat;background-attachment:fixed;">
	<% UserInfo user =  (UserInfo)session.getAttribute("user"); %>
	<div id="top1">
		
		<div id="brand"><a href ="index1.jsp"><img src="img/brand.png" width=100 height=50></a></div>
		<div id="tag1">
	     		<a class="one" href ="index1.jsp">首页</a>
	  	</div>
	  	<form action="search.jsp" method="post">
		<div id="serach">
	     		<input type="text" class="form-control" placeholder="搜索问题..." style="width:400px" name="searchquestion">
	  	</div>
	  	<button id="serach_button" type="submit" class="btn btn-info">搜索</button>
	  	</form>
	  	
	  	<%  if(user!=null){ 
	  		String img_src="img/"+user.getUser_img_url();
	  	%>	
		  	<div id="tag2" class="dropdown">
			  <span><img  src=<%=img_src %> width =40 height=40 /></span>
			  <div class="dropdown-content">
			    <p class="two"><a class="two" href="user.jsp">个人主页</a>
			    </p>
			    <p class="two">
			    <a class="two" href="logout.jsp">注销</a>
			    </p>
			  </div>
			</div>
		 <% }else{ %>
			<div id="tag2" class="dropdown">
			  <span><img  src="img/default.png" width =40 height=40 /></span>
			  <div class="dropdown-content">
			    <p class="two" ><a class="two" href="login.jsp">登录</a>
			    </p>
			    <p class="two">
			    <a class="two" href="regist.jsp">注册</a>
			    </p>
			  </div>
			</div>
		   <% } %>
	</div>
	
</body>
</html>