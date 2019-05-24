<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.*"%>
<%@ page import="Info.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		System.out.print("user_id++++====");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String Squestion_id=request.getParameter("question_id");
		int question_id=Integer.parseInt(Squestion_id);
		response.setContentType("text/html; charset=UTF-8");
		String content=request.getParameter("content");
		UserInfo user=(UserInfo) request.getSession().getAttribute("user");
		System.out.print("user_id++++===="+user.getUser_id());
		AnswerInfo question=new AnswerInfo(0,question_id,user.getUser_id(),content,0);
		AnswerDao adao=new AnswerDao();
		adao.Offer(question, user.getUser_id(),question_id);//添加答案
		QuestionDao qdao=new QuestionDao();
		qdao.Add_answer(question_id);//问题数增加
		out.print("<script>alert('该回答完成!');</script>");
		response.sendRedirect("questions.jsp?id="+question_id);
	%>
</body>
</html>