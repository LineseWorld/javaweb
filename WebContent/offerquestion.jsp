<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/index1.css">
<head>
<meta charset="UTF-8">
<title>提问问题</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>

<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>

<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>

<script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
<!-- 使用CSS样式来控制div布局 -->
        <style type="text/css">
            
            #tag3{
		        margin-top: -13px;
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
		#content{
			height: 600px;
		    border-radius: 5px;
		    position: relative;
		    left: 310px;
		    top: 40px;
		    width: 830px;
		    background-color: white;
		}   
		#inputtitle{
			    border: 2px solid #4caf50;
			    width: 640px;
			    height: 35px;
			    position: relative;
			    top: -50px;
			    left: 130px;
			    border-radius: 5px;
		}
		#editor{
			position: relative;
			top: -50px;
			padding: 10px;
			width: 800px;
			height:400px;
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
<div id="menu">
		<p id="menu_bution" class="p2"><a href="index1.jsp" class="three">问题大厅</a></p>
		<p id="menu_bution" class="p2"><a href="myanswer.jsp" class="three">我的回答</a></p>
		<p id="menu_bution" class="active"><a href="offerquestion.jsp" class="three">提问问题</a></p>
		<p id="menu_bution" class="p2"><a href="mysave.jsp" class="three">我的收藏</a></p>	
		<p id="menu_bution" class="p2"><a href="aboutus.jsp" class="three">关于我们</a></p>
		
</div>
<div id="content">
	
		<form action="checkoffer1.jsp" method="post" >
		<h3 style="position: relative;padding: 10px;">提问问题</h3>
				    <input id="inputtitle" type="text" name="title" placeholder=" 请写下你的问题">
				    <br><br>
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



</body>
</html>