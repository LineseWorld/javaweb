<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="dao.LoginDao" %>
<%@ page import="Info.UserInfo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登陆判断</title>
</head>
<body>
	<%
		String id = request.getParameter("user_id");
		String pwd = request.getParameter("user_pwd");
		out.print(id);
		LoginDao dao = new LoginDao();
		UserInfo user = dao.judge(id,pwd);
		if(user!=null) {
			/* request.getSession().setAttribute("sessionid",id);     //用Session保存用户名
			request.getSession().setAttribute("sessionpwd",pwd);   //保存密码 */
			request.getSession().setAttribute("user", user);//将整个用户信息存入session中
			response.sendRedirect("index1.jsp");
		}
		else{
			out.print("<script>alert('账号密码有误，请重新登陆!');window.location.href='login.jsp'</script>");//弹窗显示并转向login.jsp
			
		}
	%>
</body>
</html>