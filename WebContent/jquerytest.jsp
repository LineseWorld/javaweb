<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	/* function registera(){
		alter("aaaa");
		
	}   */
	function registera(){
		alert("11111");
		/* var $mobile = $('#mobile').val();
		alert("22222");
		$.ajax({
			alert("3333");
			url:"MobileServlet",
			type:"post",	
			data:"mobile="+$mobile,
			success:function(result,testStatus){
				if(result=="true"){
					alter("已被注册");
				}
				else{
					alter("注册成功");
				}
			}
		
			}); */
	}
	</script>
</head>
<body>
	
	手机：<input id="mobile"/>
	<br/>
	<input type="button" value="注册" onclick="registera()"/>
</body>
</html>