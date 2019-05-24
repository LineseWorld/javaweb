<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(session.getAttribute("user")==null)
		{
			out.print("<script>alert('你还未等录，请登陆后回答!');window.location.href='login.jsp'</script>");
		}
		else{
			response.sendRedirect("offeranswer.jsp");
		}
	%>
</body>
</html>