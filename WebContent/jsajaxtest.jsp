<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function register(){
		
		var mobile=document.getElementById("mobile").value;
		//通过ajax异步方式请求服务端
		xmlHttpRequest = new XMLHttpRequest();
		
		//设置xmlHttpRequest对象回调函数
		xmlHttpRequest.onreadystatechange=callBack;
		
		xmlHttpRequest.open("post","MobileServlet",true);
		//设置post方式的头信息
		xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		
		xmlHttpRequest.send("mobile="+mobile);//key=value
	}
	
	//定义回调函数(接收服务端的返回值)
	function callBack(){
		//alert("2222");
		//alert(xmlHttpRequest.readyState);
		if(xmlHttpRequest.readyState==4 && xmlHttpRequest.status ==200){
			//接收服务端返回数据
			var data=xmlHttpRequest.responseText;
			if(data!="#"){
				document.getElementById("txtHint").innerHTML=data;
			}
			else{
				alert("异常");
			}
			
		}
	}
</script>
<title>Insert title here</title>
</head>
<body>
	手机：<input id="mobile"/>
	<br/>
	<input type="button" value="注册" onclick="register()"/>
	<div id="txtHint">点赞数量显示在这</div>
</body>
</html>