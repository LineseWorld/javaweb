<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.*" %>
<%@ page import="Info.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String user_id =  (String)session.getAttribute("user_id"); 
		String old_pwd = request.getParameter("old_pwd");
		String pwd = request.getParameter("new_pwd");
		String pwd2 = request.getParameter("again_pwd");
		RegistDao dao = new RegistDao();
		UserDao udao=new UserDao();
		LoginDao ldao=new LoginDao();
		System.out.print("old = "+old_pwd);
		UserInfo user = ldao.judge(user_id,old_pwd);
		if(user==null){
			out.print("<script>alert('密码错误！');window.location.href='changepwd.jsp'</script>");
		}else if(!pwd.equals(pwd2) || pwd==null){
				out.print("<script>alert('两次新密码输入不同 或 密码为空！');window.location.href='changepwd.jsp'</script>");
		}
		else{
			udao.chpwd(user_id, pwd);
			out.print("<script>alert('修改成功!');window.location.href='user.jsp'</script>");
		}	
	%>
</body>
</html>