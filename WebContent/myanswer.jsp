<%@page import="Info.AnswerInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.*" %>
<%@ page import="Info.QuestionInfo" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>

<head>
<link href="css/index1.css" rel="stylesheet" type="text/css" />
<meta charset="UTF-8">
<title>我的回答</title>
<style type="text/css">
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
	#tb1{
		    position: relative;
    		left: 10px;
    		top: 10px;
	}
	#title{
		text-align:center;
		color:#C4723C;
	}
	#menu_bution{
		text-align:center;
		font-size: 18px;
		border-radius: 5px;
		margin: 0px 0 10px;
	}
	#content2{
		    padding: 30px;
	}
	p.p2:hover{
		background:#66ff66;
	}
	
	p.active{
		background: #bff8a7;
	}        
    </style>
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
		if(data==null){}
		else{
		var result = data.split("|");
		if(result[1]!="#"&&result[1]!="@"){
			document.getElementById(result[0]).innerHTML=result[1];
		}
		else{
			alert("您已经点赞过了！！");
		}
		}
	}
}
</script>
</head>
<body>
<%@ include file="base.jsp" %>
<%
	if(user==null){
		out.print("<script>alert('你还未等录，请登陆!');window.location.href='login.jsp'</script>");
	}
%>
	<div id="menu">
		<p id="menu_bution" class="p2"><a href="index1.jsp" class="three">问题大厅</a></p>
		<p id="menu_bution" class="active"><a href="myanswer.jsp" class="three">我的回答</a></p>
		<p id="menu_bution" class="p2"><a href="offerquestion.jsp" class="three">提问问题</a></p>
		<p id="menu_bution" class="p2"><a href="mysave.jsp" class="three">我的收藏</a></p>
		<p id="menu_bution" class="p2"><a href="aboutus.jsp" class="three">关于我们</a></p>
			
	</div>
	<div id="content">
	<% 
			AnswerDao adao=new AnswerDao();
			QuestionDao qdao=new QuestionDao();
			UserDao udao=new UserDao();
			List<AnswerInfo> answers = adao.SearchByUser_id(user.getUser_id());
			for(AnswerInfo answer:answers){
				int question_id=answer.getQuestion_id();
				QuestionInfo question=qdao.serach_question(question_id);
				UserInfo question_user=udao.SerachByUser_id(question.getUser_id());
				String question_user_img_src="img/"+question_user.getUser_img_url();	
	%>
		<div id="question">
			<table id="tb1">
					<tr>
					  <th rowspan="2"><a href = "otheruser.jsp?ouser_id=<%=question_user.getUser_id() %>"><img  src=<%=question_user_img_src %> width =50 height=50 class="img-circle"/></a></th>
					  <td><b><%= question_user.getUser_name() %></b></td>
					</tr>
					<tr>
					  <td>此人很懒，只会提问问题</td>
					</tr>
				</table>
			<h4 id="title"><b><%= question.getQuestion_title()  %></b></h4>
			<p style="text-align:right;">
				 	回答数：<%=question.getQuestion_answers() %>
				 	<a class="btn" href="questions.jsp?id=<%=question_id %>">查看详情</a>
			</p>
			<hr>
			<p>我的回答:<br></p>
			<div id="content2"><%= answer.getAnswer_content() %></div>
			<% 
				SaveDao sdao=new SaveDao();
				String savefg="";
				if(sdao.judge(answer.getAnswer_id(), user.getUser_id())==null){
					savefg="save.jpg";
				}else{
					savefg="saved.jpg";
				}
				String save_src="img/"+savefg;
			%>
			<p style="padding: 10px;">
				<span id="goodSpan" onclick="sendGood(<%=answer.getAnswer_id() %>,'<%=user.getUser_id() %>')"><img src="img/good.jpg" style="width: 25px; height: 25px;" /></span>
				[<span id='<%=answer.getAnswer_id() %>'><%=answer.getAnswer_score() %></span>]
				<img id='s<%=answer.getAnswer_id() %>' onclick="sendSave(<%=answer.getAnswer_id() %>,'<%=user.getUser_id() %>')" src=<%=save_src %> width="50" height="50">
			</p>
			<p></p>
			<script type="text/javascript">
				var sta="<%=savefg %>";
				var flag = false;
				if(sta=="save.jpg")
				{
					flag = false;
				}
				else{
					flag = true;
				}
				function sendSave(answer_id,user_id)
				{
					
					element=document.getElementById("s"+answer_id)
					if (flag)
					{
						
						element.src="img/save.jpg";
						flag = false;
						xmlHttpRequest2 = new XMLHttpRequest();
						//设置xmlHttpRequest对象回调函数
						xmlHttpRequest2.open("post","SavedSS",true);
						//设置post方式的头信息
						xmlHttpRequest2.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
						xmlHttpRequest2.send("answer_id="+answer_id+"&user_id="+user_id);//key=value 
					}
					else
					{
						
						element.src="img/saved.jpg";
						flag = true;
						xmlHttpRequest3 = new XMLHttpRequest();
						//设置xmlHttpRequest对象回调函数
						xmlHttpRequest3.open("post","SaveSS",true);
						//设置post方式的头信息
						xmlHttpRequest3.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
						xmlHttpRequest3.send("answer_id="+answer_id+"&user_id="+user_id);//key=value 
					}
					
				}

			</script>
		</div>
		<% 
			}
		%>
		</div>
</body>
</html>