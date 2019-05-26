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
		String user_name = request.getParameter("user_name");
		String user_sex = request.getParameter("user_sex");
		String user_describe = request.getParameter("user_describe");
		//String user_img_url=request.getParameter("user_img_url");
		UserDao udao=new UserDao();
		UserInfo user=new UserInfo();
		user.setUser_id(user_id);
		user.setUser_name(user_name);
		user.setUser_sex(user_sex);
		user.setUser_describe(user_describe);
		udao.update(user);
		response.sendRedirect("user.jsp");
	%>
</body>
</html>