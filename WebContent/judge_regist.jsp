<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="dao.RegistDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册判断</title>
</head>
<body>
	<%
		String id = request.getParameter("user_id");
		String pwd = request.getParameter("user_pwd");
		String pwd2 = request.getParameter("user_pwd2");
		String name = request.getParameter("user_name");
		name=new String(name.getBytes("iso-8859-1"),"utf-8");
		System.out.println(name);
		RegistDao dao = new RegistDao();
		int result = dao.judge(id);
		if(result==0) {
			out.print("<script>alert('该账号已被人注册，请重新注册!');window.location.href='regist.jsp'</script>");
		}
		else if(result==-1){
			out.print("异常");
		}
		else{
			if(!pwd.equals(pwd2) || pwd==null){
				out.print("<script>alert('两次密码输入不同 或 密码为空！');window.location.href='regist.jsp'</script>");
			}
			else{
				dao.regist(id, pwd, name);
				out.print("<script>alert('注册成功!');window.location.href='login.jsp'</script>");
			}
		}
	%>
</body>
</html>