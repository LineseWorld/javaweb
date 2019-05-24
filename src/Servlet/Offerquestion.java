package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Info.*;
import dao.*;
/**
 * Servlet implementation class Offerquestion
 */
@WebServlet("/Offerquestion")
public class Offerquestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Offerquestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String part_content=request.getParameter("part_content");
		UserInfo user=(UserInfo) request.getSession().getAttribute("user");
		QuestionInfo question=new QuestionInfo(0,user.getUser_id(),title,content,0,part_content);
		QuestionDao qdao=new QuestionDao();
		qdao.Offer(question, user.getUser_id());
		response.sendRedirect("index1.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
