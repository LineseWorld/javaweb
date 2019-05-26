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
		AnswerDao adao=new AnswerDao();
		QuestionDao qdao=new QuestionDao();
		UserDao udao=new UserDao();
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String Squestion_id=request.getParameter("question_id");//传参得到问题id
		int question_id=Integer.parseInt(Squestion_id);
		
		String content=request.getParameter("content");//得到回答内容
		
		String user_id=(String) request.getSession().getAttribute("user_id");//得到用户信息
		UserInfo user=udao.SerachByUser_id(user_id);
		AnswerInfo answer=new AnswerInfo(0,question_id,user.getUser_id(),content,0);//答案
		
		adao.Offer(answer, user.getUser_id(),question_id);//添加答案
		
		udao.addanswer(user.getUser_id());//添加用户回答数
		qdao.Add_answer(question_id);//问题数增加
		out.print("<script>alert('该回答完成!');</script>");
		response.sendRedirect("questions.jsp?id="+question_id);
	%>
</body>
</html>