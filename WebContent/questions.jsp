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
<!-- <script type="text/javascript" src="js/jquery-3.3.1.js" ></script>
        <script type="text/javascript" src="js/bootstrap.min.js" ></script> -->

<title>问题详情</title>
<style type="text/css">
	#content2{
		    padding: 30px;
	}
	#content{
	position: relative;
    left: 310px;
    top: 60px;
    width: 830px;
    	background-color: #ff000000;
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
	
	
	
</style>
<%@ include file="base.jsp"%>

<script type="text/javascript">
function sendGood(answer_id,user_id){
	
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
		else{
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
				System.out.println("aaa");
				if (str == null)
					out.println("aa");
				else {
					int id = Integer.parseInt(str);//问题id
					QuestionInfo question = qdao.serach_question(id);
					String question_user_id=question.getUser_id();
					UserInfo question_user=udao.SerachByUser_id(question_user_id);//回答者
					String question_user_img_src="img/"+question_user.getUser_img_url();
					System.out.println("bbb");
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
			<div id="write"><p class="write"><a href="offeranswer.jsp?id=<%=id %>" class="write">写回答</a></p></div>
			<p><br></p>
			
		</div>
	<%
				if(question.getQuestion_answers()==0){
					%>
						<div id="question">
							<p class="content2">目前还没有人回答问题</p>
						</div>
					<% 
				}
				else{
				AnswerDao adao = new AnswerDao();
				List<AnswerInfo> answers = adao.display(id);
					for (AnswerInfo answer : answers) {
						String answer_user_id=answer.getUser_id();
						UserInfo answer_user=udao.SerachByUser_id(answer_user_id);
						System.out.println("answer_user_id==="+answer_user_id);
						String answer_user_img_src="img/"+answer_user.getUser_img_url();
	%>
		<div id="question">
			<table id="tb1">
					<tr>
					  <th rowspan="2"><a href = "user.jsp"><img  src=<%=answer_user_img_src %> width =50 height=50 class="img-circle"/></a></th>
					  <td><b><%= answer_user.getUser_name() %></b></td>
					</tr>
					<tr>
					  <td>此人很勤奋，回答了很多问题</td>
					</tr>
			</table>
			<div id="content2"><%= answer.getAnswer_content() %></div>
			<% int ansid=answer.getAnswer_id();%>
			<% String user_id = user.getUser_id(); // JSP片段中定义变量%>
			<p style="padding: 10px;">
				<span id="goodSpan" onclick="sendGood(<%=answer.getAnswer_id() %>,'<%=user.getUser_id() %>')"><img src="img/good.jpg" style="width: 25px; height: 25px;" /></span>
				
				[<span id="good"><%=answer.getAnswer_score() %></span>]
			</p>
		</div>
		<%
					}
				}
			}
		%>
	
	
	
	
	</div>
	

</body>

</html>