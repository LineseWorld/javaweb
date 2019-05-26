 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户主页</title>
<style>  *{
    box-sizing: border-box;
}

.body{
    margin-top: 5%;
    margin-right:20%;
    margin-left:20%;
}
#all{
	 margin-top: 5%;
    margin-right:20%;
    margin-left:20%;
}
/* 头部样式 */
.header {
    background-color: #f1f1f1;
    padding: 20px;
}
.col {
    float: left;
    padding: 10px;
}
.col.side {
    width: 25%;
}
.col.middle {
    width: 50%;
}
.r:after {
    content: "";
    display: table;
    clear: both;
}
/* 导航条 */
.topnav {
    overflow: hidden;
    background-color: #333;
}

/* 导航链接 */
.topnav a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/* 链接 - 修改颜色 */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}

/* 创建三个相等的列 */
.column {
    text-indent:50px;
    float: left;
    width: 50%;
    background-color: #f1f1f1;
    height: 500px;
}
 
/* 列后清除浮动 */
.row:after {
    content: "";
    display: table;
    clear: both;
}
#rcorners1{
    top: -65px;
    border-radius: 50px;
    background: #ddd;
    padding: 15px;
    position: relative;
    left: -40px;
    height: 100%;
    float: right; 
} 
#rcorners2 {
    border-radius: 50px;
    background: #ddd;
    padding: 14px;
    position: relative;
    left: -20px;
    top: -65px;
    height: 100%;
    float: right;
}
#rrow{
	background-color: #f1f1f1;
}
#inputt{
			   border: 2px solid #4caf50;
    width: 200px;
    height: 30px;
    position: relative;
    top: 0;
    left: 35px;
    border-radius: 5px;
}
#inputt2{
	border: 2px solid #4caf50;
    width: 400px;
    height: 30px;
    position: relative;
    top: 0;
    left: 35px;
    border-radius: 5px;
		}
</style>
</head>
	<%@ include file="base.jsp" %>
	
<body>
<% 
	String user_img_src="img/"+user.getUser_img_url();
%>
<div id="all">
<div class="header">
    <div class="r">    
	        <div class="col">
	            <img src=<%=user_img_src %> width="100px" height="100px">
	        </div>
	        <div class="col">
	            <h2><%=user.getUser_name() %></h2>
	            <p><%=user.getUser_id() %></p>
	        </div>
	    </div>
	</div>

	<div class="topnav">
	    <a href="index1.jsp">首页</a>
	    <a href="mysave.jsp">收藏</a>
	    <a href="myanswer.jsp">回答</a>
	</div>
	<form action="UploadServlet" method="post" enctype="multipart/form-data">
	<div id="rrow">
	    <div class="column" >
	        <h1>修改资料</h1><br>
	        <h3>用户名:</h3>
				<input id="inputt" type="text"  value=<%=user.getUser_name() %> name="user_name"><br>
	        <h3>性别:</h3>
	       		<input id="inputt" type="text"  value=<%=user.getUser_sex() %> name="user_sex"><br>
	       	<h3>个性描述：</h3>
	       		<input id="inputt2" type="text"  value=<%=user.getUser_describe() %> name="user_describe"><br>
	    </div>
	    <div class="column">
	    	<p>目前头像</p>
			<div>
				<img src=<%=user_img_src %> width="250px" height="250px"><br>	
			</div>
			<br>
			<br>
				<p>上传头像</p>
			<div>
					<input type="file" name="user_img" style="position: relative;left:50px;"/><br/>
			</div>
		</div>
	</div>
		<span><button id="rcorners2">确认</button></span>
	</form>
	<form action="user.jsp"><span>
	    <button id="rcorners1" >取消</button></span>
	</form>
</div>
</body>
</html>