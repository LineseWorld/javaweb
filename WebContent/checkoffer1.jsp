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
		QuestionDao qdao=new QuestionDao();
		UserDao udao =new UserDao();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		Html2Text tool= new Html2Text();
		String text = Html2Text.splitAndFilterString(content,100);//设置缩略内容
		
		String user_id=(String) request.getSession().getAttribute("user_id");//得到用户信息
		UserInfo user=udao.SerachByUser_id(user_id);
		QuestionInfo question=new QuestionInfo(0,user.getUser_id(),title,content,0,text);
		System.out.println("offer1");
		udao.addquestion(user.getUser_id());//添加提问数
		
		qdao.Offer(question, user.getUser_id());//提问
		response.sendRedirect("index1.jsp");
	%>
</body>
</html>