<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/index1.css">
<head>
<meta charset="UTF-8">
<title>我的回答</title>
<!-- 使用CSS样式来控制div布局 -->
        <style type="text/css">
            /*定义全局的div布局*/
            div#global{
                /*设置宽度，设置百分比可以根据浏览器自适应宽度*/
                width: 80%;
                /*设置高度，950px是设置是实体高度，不能自适应的*/
                height: 800px;
                margin:0 auto;
                /*设置背景颜色，方便区分布局*/
                background-color: silver; 
            }
            /*定义头部布局，前面的div可以不用写，#号前面默认有个id，凡事定义了id的标签，都可以用#号来表示*/
          /*   #heading{
                width: 100%;
                height: 100px;
                background-color: #BB80F7;
            } */
            #content_menu{
                width: 20%;
                height: 700px;
                background-color: #C5E9F3;
                /*定义浮动，不定义的话，界面会乱*/
                float: left;
            }
            #content_body{
                width: 80%;
                height: 700px;
                background-color: #E5E5E5;
                float: right; 
            }
            #floor{
                /*删除浮动，不然会被其他的浮动给遮住*/
                clear: both;
                height: 100px;
                background-color: #8080FF;
            }
            #floor2{
                /*删除浮动，不然会被其他的浮动给遮住*/
                clear: both;
                height: 100px;
                margin:0 auto;
                background-color: #E5E5E5;
            }
                    <style type="text/css">
    

            #nav_sub_page {
                text-align: center;
                width: 80%;
            }

            #nav_sub_page ul {
                display: inline-block;
                margin: 10px 20px;
                padding: 0px;
            }

            #nav_sub_page ul li {
                display: inline;
            }

            #nav_sub_page ul li a {
                display: inline-block;
                width: 25px;
                height: 25px;
            }
        </style>

</head>
<body bgcolor="black">
<%@ include file="base.jsp" %>
<%
	if(user==null){
		out.print("<script>alert('你还未等录，请登陆后回答!');window.location.href='login.jsp'</script>");
	}
%>
 <!-- 在这里控制全局的页面，定义div的id是"global" -->
        <div id="global">
          <!--   <div id="heading">我是头部的布局</div> -->
            <div id="content_menu">
				<ul class="nav nav-pills nav-stacked" >
				  <li role="presentation"><a href="index1.jsp">问答大厅</a></li>
				  <li role="presentation" class="active"><a href="myanswer.jsp">我的回答</a></li>
				  <li role="presentation"><a href="myquestion.jsp">我的提问</a></li>
				  <li role="presentation"><a href="offerquestion.jsp">提问问题</a></li>
				  <li role="presentation"><a href="mysave.jsp">我的收藏</a></li>
				  <li role="presentation"><a href="aboutus.jsp">关于我们</a></li>
				</ul>
			</div>
            <div id="content_body">
				我的回答列表
				
				<!-- <div id="floor2">
				<nav>
				  <ul class="pagination" >
				    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
				    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li>
				      <a href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				 </nav>
				 </div> -->
			</div>
            <div id="floor">我在最下面，抢不到沙发，坐个地板可以吧</div>
        </div>
</body>
</html>