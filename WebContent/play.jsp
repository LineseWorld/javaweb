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
    	top: -113px;
	}
	p.two:hover {background:#e8e8e8;}
	#menu{
		    position: fixed;
		    left: 180px;
		    top: 60px;
		    width: 140px;
		    height: 600px;
		    background: white;
		    border-radius: 5px;
		    z-index: 1000;
	}
	#content{
	position: relative;
    left: 335px;
    top: 60px;
    width: 800px;
    	background-color: #ff000000;
	}
	#question{
		border-radius: 5px;
		background-color: #ffffff
	}
	#tb1{
		    position: relative;
    		left: 10px;
	}
	#title{
		text-align:center;
	}
	#menu_bution{
		text-align:center;
		font-size: 18px;
		border-radius: 5px;
	}
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
		<div id="serach">
	     		<input type="text" class="form-control" placeholder="Search for..." style="width:400px">
	  	</div>
	  	<button id="serach_button" type="button" class="btn btn-info">搜索</button>
	  	
	  	
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
			    <p class="two"><a class="two" href="regist.jsp">注册</a></p>
			  </div>
			</div>
		   <% } %>
	</div>
	
	<div id="menu">
		<p id="menu_bution" class="p2"><a href="index1.jsp" class="three">问题大厅</a></p>
		<p id="menu_bution" class="p2"><a href="index1.jsp" class="three">我的回答</a></p>
		
		<p id="menu_bution" class="p2"><a href="index1.jsp" class="three">提问问题</a></p>
		<p id="menu_bution" class="p2"><a href="index1.jsp" class="three">关于我们</a></p>
		<p id="menu_bution" class="p2"><a href="index1.jsp" class="three">提问问题</a></p>	
	</div>
	<div id="content">
		<div id="question">
			<table id="tb1">
					<tr>
					  <th rowspan="2"><a href = "user.jsp"><img  src="img/default.png" width =50 height=50 class="img-circle"/></a></th>
					  <td><b>回答者姓名</b></td>
					</tr>
					<tr>
					  <td>此人很懒，只会提问问题</td>
					</tr>
				</table>
			<h4 id="title"><b>标题</b></h4>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
		</div>
		
		<div id="question">
			<table id="tb1">
					<tr>
					  <th rowspan="2"><a href = "user.jsp"><img  src="img/default.png" width =50 height=50 class="img-circle"/></a></th>
					  <td><b>回答者姓名</b></td>
					</tr>
					<tr>
					  <td>此人很懒，只会提问问题</td>
					</tr>
				</table>
			<h4 id="title"><b>标题</b></h4>
			<p>内容</p>
		</div>
		
		<div id="question">
			<table id="tb1">
					<tr>
					  <th rowspan="2"><a href = "user.jsp"><img  src="img/default.png" width =50 height=50 class="img-circle"/></a></th>
					  <td><b>回答者姓名</b></td>
					</tr>
					<tr>
					  <td>此人很懒，只会提问问题</td>
					</tr>
				</table>
			<h4 id="title"><b>标题</b></h4>
			<p>内容</p>
		</div>
		
		<div id="question">
			<table id="tb1">
					<tr>
					  <th rowspan="2"><a href = "user.jsp"><img  src="img/default.png" width =50 height=50 class="img-circle"/></a></th>
					  <td><b>回答者姓名</b></td>
					</tr>
					<tr>
					  <td>此人很懒，只会提问问题</td>
					</tr>
				</table>
			<h4 id="title"><b>标题</b></h4>
			<p>内容</p>
		</div>
		
		<div id="question">
			<table id="tb1">
					<tr>
					  <th rowspan="2"><a href = "user.jsp"><img  src="img/default.png" width =50 height=50 class="img-circle"/></a></th>
					  <td><b>回答者姓名</b></td>
					</tr>
					<tr>
					  <td>此人很懒，只会提问问题</td>
					</tr>
				</table>
			<h4 id="title"><b>标题</b></h4>
			<p>内容</p>
		</div>
		
		<div id="question">
			<table id="tb1">
					<tr>
					  <th rowspan="2"><a href = "user.jsp"><img  src="img/default.png" width =50 height=50 class="img-circle"/></a></th>
					  <td><b>回答者姓名</b></td>
					</tr>
					<tr>
					  <td>此人很懒，只会提问问题</td>
					</tr>
				</table>
			<h4 id="title"><b>标题</b></h4>
			<p>内容</p>
		</div>
		
		<div id="question">
			<table id="tb1">
					<tr>
					  <th rowspan="2"><a href = "user.jsp"><img  src="img/default.png" width =50 height=50 class="img-circle"/></a></th>
					  <td><b>回答者姓名</b></td>
					</tr>
					<tr>
					  <td>此人很懒，只会提问问题</td>
					</tr>
				</table>
			<h4 id="title"><b>标题</b></h4>
			<p>内容</p>
		</div>
		
		<div id="question">
			<table id="tb1">
					<tr>
					  <th rowspan="2"><a href = "user.jsp"><img  src="img/default.png" width =50 height=50 class="img-circle"/></a></th>
					  <td><b>回答者姓名</b></td>
					</tr>
					<tr>
					  <td>此人很懒，只会提问问题</td>
					</tr>
				</table>
			<h4 id="title"><b>标题</b></h4>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
		</div>
		
		<div id="question">
			<table id="tb1">
					<tr>
					  <th rowspan="2"><a href = "user.jsp"><img  src="img/default.png" width =50 height=50 class="img-circle"/></a></th>
					  <td><b>回答者姓名</b></td>
					</tr>
					<tr>
					  <td>此人很懒，只会提问问题</td>
					</tr>
				</table>
			<h4 id="title"><b>标题</b></h4>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
		</div>
		
		<div id="question">
			<table id="tb1">
					<tr>
					  <th rowspan="2"><a href = "user.jsp"><img  src="img/default.png" width =50 height=50 class="img-circle"/></a></th>
					  <td><b>回答者姓名</b></td>
					</tr>
					<tr>
					  <td>此人很懒，只会提问问题</td>
					</tr>
				</table>
			<h4 id="title"><b>标题</b></h4>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
		</div>
		
		<div id="question">
			<table id="tb1">
					<tr>
					  <th rowspan="2"><a href = "user.jsp"><img  src="img/default.png" width =50 height=50 class="img-circle"/></a></th>
					  <td><b>回答者姓名</b></td>
					</tr>
					<tr>
					  <td>此人很懒，只会提问问题</td>
					</tr>
				</table>
			<h4 id="title"><b>标题</b></h4>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
			<p>内aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa容</p>
		</div>
		
		
		
		
		
		
		
		
	</div>
	

	
</body>
</html>