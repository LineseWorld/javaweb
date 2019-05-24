<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/index1.css">
<head>
<meta charset="UTF-8">
<title>关于我们</title>
<!-- 使用CSS样式来控制div布局 -->
        <style type="text/css">
            #tb1{
           			position: relative;
    				left: 15px;
    				border-radius: 2px;
				    border: 2px solid #8AC007;
				    padding: 20px;
				    width: 370px;
				    height: 130px;
            }
           	#tb2{
           			position: relative;
    				left: 430px;
    				top: -130px;
    				border-radius: 2px;
				    border: 2px solid #8AC007;
				    padding: 20px;
				    width: 370px;
				    height: 130px;
            }
            #tb3{
           			position: relative;
    				left: 15px; 
    				border-radius: 2px;
				    border: 2px solid #8AC007;
				    padding: 20px;
				    width: 370px;
				    height: 130px;
				    top: -110px;
            }
            #tb4{
           			position: relative;
    				left: 430px;
    				border-radius: 2px;
				    border: 2px solid #8AC007;
				    padding: 20px;
				    width: 370px;
				    height: 130px;
				    top: -240px;
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
	#content{
	height: 600px;
		position: relative;
    	left: 310px;
    	top: 60px;
    	width: 830px;
    	background-color:white;
    	    border-radius: 5px
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
				<p id="menu_bution" class="p2"><a href="offerquestion.jsp" class="three">提问问题</a></p>
				<p id="menu_bution" class="p2"><a href="mysave.jsp" class="three">我的收藏</a></p>
				<p id="menu_bution" class="active"><a href="aboutus.jsp" class="three">关于我们</a></p>
					
			</div>
			<div id="content">	
            	<div align="center"><img src="img/claer.jpg" width=450 height=300/></div> 
            	
						<table id="tb1">
							<tr>
							  <th rowspan="3"><a href = "void"><img  src="img/hjj.jpg" width =70 height=70 class="img-circle"/></a></th>
							  <td><b>后敬甲</b></td>
							</tr>
							<tr>
							  <td><b>职责:</b>页面设计</td>
							</tr>
							<tr>
							  <td>个人github:<a href="https://github.com/tsf2016">https://github.com/tsf2016</a></td>
							</tr>
						</table>
				  
				  	<table id="tb2">
						<tr>
						  <th rowspan="3"><a href = "user.jsp"><img  src="img/vv.jpg" width =70 height=70 class="img-circle"/></a></th>
						  <td><b>吕振威</b></td>
						</tr>
						<tr>
						  <td><b>职责:</b>页面设计</td>
						</tr>
						<tr>
						  <td>个人github:<a href="https://github.com/notifications">https://github.com/notifications</a></td>
						</tr>
					</table>
					<table id="tb3">
						<tr>
						  <th rowspan="3"><a href = "user.jsp"><img  src="img/nihao.jpg" width =70 height=70 class="img-circle"/></a></th>
						  <td><b>林世杰</b></td>
						</tr>
						<tr>
						  <td><b>职责:</b>后端，前后交接</td>
						</tr>
						<tr>
						  <td>个人github:<a href="https://github.com/KOGLinese">https://github.com/KOGLinese</a></td>
						</tr>
					</table>
				
					<table id="tb4">
						<tr>
						  <th rowspan="3"><a href = "user.jsp"><img  src="img/whr.jpg" width =70 height=70 class="img-circle"/></a></th>
						  <td><b>王焕仁</b></td>
						</tr>
						<tr>
						  <td><b>职责:</b>页面设计</td>
						</tr>
						<tr>
						  <td>个人github:<a href="https://github.com/SororTina">https://github.com/SororTina</a></td>
						</tr>
					</table>
			</div> 
</body>
</html>