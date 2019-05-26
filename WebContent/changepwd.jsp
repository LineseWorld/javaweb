 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改密码</title>
<style> *{
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
    background-color: #ffff0f;
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
#shuru{
	position: relative;
    background-color: #f1f1f1;
    height: 390px;

    left: 0p;
}
/* 响应式布局 - 小于 600 px 时改为上下布局 */
@media screen and (max-width: 600px) {
    .column {
        width: 100%;
    }
}

/* 底部样式 */
.footer {
  background-color: #f1f1f1;
  padding: 10px;
}
#inputt{
			    border: 2px solid #4caf50;
			    width: 200px;;
			    height: 35px;
			    position: relative;
			    top: 50px;
    			left: 320px;
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
	            <p><%=user.getUser_describe() %></p>
	        </div>
	    </div>
	</div>

	<div class="topnav">
		<a href="index1.jsp">首页</a>
	    <a href="mysave.jsp">收藏</a>
	    <a href="myanswer.jsp">回答</a>	
	</div>
	<form action="checkchange.jsp" method="post">
	<div id="shuru">
	   <input id="inputt" type="password" name="old_pwd" placeholder=" 旧密码">
	   <br>
	   <br>
	   <br>
	   <input id="inputt" type="password" name="new_pwd" placeholder=" 新密码">
	   <br>
	   <br>
	   <br>
	   <input id="inputt" type="password" name="again_pwd" placeholder=" 确认密码">
	</div>
	    <button id="rcorners2" type="submit" >确认修改</button>
	</form>
	<form action="user.jsp"><span>
	    <button id="rcorners1" >取消修改</button></span>
	</form>
</div>
</body>
</html>