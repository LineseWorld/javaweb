<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.*"%>
<%@ page import="Info.*"%>
<%@ page import="tools.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		Html2Text tool= new Html2Text();
		String text = Html2Text.splitAndFilterString(content,100);
		
		UserInfo user=(UserInfo) request.getSession().getAttribute("user");
		QuestionInfo question=new QuestionInfo(0,user.getUser_id(),title,content,0,text);
		QuestionDao qdao=new QuestionDao();
		qdao.Offer(question, user.getUser_id());
		response.sendRedirect("index1.jsp");
	%>
</body>
</html>