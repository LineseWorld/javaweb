<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.*" %>
<%@ page import="Info.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/index1.css">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>

<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>

<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>

<script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>

<title>问题详情</title>
<style type="text/css">
#tag3{
		        margin-top: 25px;
		        transition-duration: 0.4s;
		        padding: 8px 16px;
		        text-align: center;
		        background-color: white;
		        color: black;
		        border: 2px solid #4CAF50;
		        border-radius:5px;
		      
		        margin-left: 740px;
		    }
		   
		    #tag3:hover {
		        background-color: #4CAF50;
		        color: white;
		    }
#content2{
		    padding: 30px;
	}
	#content{
	position: relative;
    left: 310px;
    top: 60px;
    width: 830px;
    	background-color: white;
	}
	#question{
		border-radius: 5px;
		background-color: #ffffff
	}
	.button {
				background-color: #2B4DD5;
				border: none;
				color: white;
				padding: 15px 32px;
				text-align: center;
				text-decoration: none;
				display: inline-block;
				font-size: 16px;
				margin: 4px 2px;
				cursor: pointer;
			}

			.testTXT {
				height: 60px;
				line-height: 60px;
				padding-left: 10px;
			}
	#tb1{
		    position: relative;
    		left: 10px;
    		top: 10px;
	}		
	#menu{
	position: fixed;
	left: 155px;
	top: 60px;
	width: 140px;
	height: 600px;
	background: white;
	border-radius: 5px;
	z-index: 1000;
	}
	
	#menu_bution{
		text-align:center;
		font-size: 18px;
		border-radius: 5px;
	}
	p.p2:hover{
		background:#66ff66;
	}
	p.p3{
		background:#66ff66;
	}
	p.active{
		background: #bff8a7;
	}
	#title{
		text-align:center;
		color:#C4723C;
	}
	#write{
		background: white;
    	width: 80px;
   		position: relative;
    	left: 668px;
    	border-style: solid;
    	border-color: #98bf21;
    	height: 40px;
    	border-radius: 10px;
	}
	#write:hover{
		background: #98bf21;
	}
	p.write{
		    position: relative;
		    left: 19px;
		    top: 8px;
	}
	a.write{
		color:#98bf21;
	}
	a.write:hover{
		color:white;
		text-decoration:none;
	}
	#editor{
			position: relative;
			top: -10px;
			padding: 10px;
			width: 800px;
			height:400px;
		}
	
	
</style>
<%@ include file="base.jsp"%>

<script type="text/javascript">
function sendGood(answer_id,user_id){
	//
	//var mobile=document.getElementById("mobile").value;
	//通过ajax异步方式请求服务端
	alert(answer_id);
	alert(user_id);
	xmlHttpRequest = new XMLHttpRequest();
	
	//设置xmlHttpRequest对象回调函数
	xmlHttpRequest.onreadystatechange=callBack;
	
	xmlHttpRequest.open("post","GoodServlet",true);
	//设置post方式的头信息
	xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	
	xmlHttpRequest.send("answer_id="+answer_id+"&user_id="+user_id);//key=value 
}

//定义回调函数(接收服务端的返回值)
function callBack(){
	//alert("2222");
	//alert(xmlHttpRequest.readyState);
	if(xmlHttpRequest.readyState==4 && xmlHttpRequest.status ==200){
		//接收服务端返回数据
		var data=xmlHttpRequest.responseText;
		if(data!="#"&&data!="@"){
			document.getElementById("good").innerHTML=data;
		}
		else if(data=="@"){
			alert("您已经点赞过了！！");
		}
		
	}
}
</script>
</head>
<body bgcolor="black">
	<div id="menu">
		<p id="menu_bution" class="active"><a href="index1.jsp" class="three">问题大厅</a></p>
		<p id="menu_bution" class="p2"><a href="myanswer.jsp" class="three">我的回答</a></p>
		
		<p id="menu_bution" class="p2"><a href="index1.jsp" class="three">提问问题</a></p>
		<p id="menu_bution" class="p2"><a href="aboutus.jsp" class="three">关于我们</a></p>
		<p id="menu_bution" class="p2"><a href="index1.jsp" class="three">提问问题</a></p>	
	</div>
	<div id="content">
	<%
				QuestionDao qdao = new QuestionDao();
				UserDao udao=new UserDao();
				String str = request.getParameter("id");//获取问题id
				
				if (str == null)
					out.println("aa");
				else {
					int id = Integer.parseInt(str);//问题id
					QuestionInfo question = qdao.serach_question(id);
					String question_user_id=question.getUser_id();
					UserInfo question_user=udao.SerachByUser_id(question_user_id);
					String question_user_img_src="img/"+question_user.getUser_img_url();
	%>
		<div id="question">
			<table id="tb1">
					<tr>
					  <th rowspan="2"><a href = "user.jsp"><img  src=<%=question_user_img_src %> width =50 height=50 class="img-circle"/></a></th>
					  <td><b><%= question_user.getUser_name() %></b></td>
					</tr>
					<tr>
					  <td>此人很懒，只会提问问题</td>
					</tr>
			</table>
			<h4 id="title"><b><%= question.getQuestion_title()  %></b></h4>
			<p id="content2"><%= question.getQuestion_content() %></p>
			
		</div>
	
	<hr style="background: red;border: none;height: 1px;">
		<form action="checkoffer2.jsp?question_id=<%=id %>" method="post" >
				    <div id="editor" name="content"></div>     
					<script >      
					UE.getEditor('editor', {
				        toolbars: [[//工具条
				        	'undo', //撤销
				            'bold', //加粗
				            'italic', //斜体
				            'underline', //下划线
				            'strikethrough', //删除线
				            'formatmatch', //格式刷
				            'fontfamily', //字体
				            'fontsize', //字号
				            'simpleupload', //单图上传
				            'insertimage', //多图上传
				            'justifyleft', //居左对齐
				            'justifyright', //居右对齐
				            'justifycenter', //居中对齐
				            'justifyjustify', //两端对齐
				            'forecolor', //字体颜色
				            'backcolor', //背景色
				            'touppercase', //字母大写
				            'tolowercase' //字母小写
				        ]],
				    	autoHeightEnabled: false
					});
					
					
					
					</script>   
				    
				    <br>
				    <br>
				    <span style="cursor:pointer"><button id="tag3" type="submit">提问</button></span>
		</form>
	
	
	</div>
	<%	}%>

</body>

</html>