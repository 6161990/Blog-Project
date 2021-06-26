package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.PostDAO;
import dto.MemberBean;
import dto.PostBean;


@WebServlet("/registerPostProc")
public class RegisterPostProc extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
	}
	
	private void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		request.setCharacterEncoding("UTF-8");

		//전송정보 얻기
		PostBean post = new PostBean();
		post.setMember_id(request.getParameter("member_id"));
		post.setMember_email(request.getParameter("member_email"));
	    post.setCategory(request.getParameter("category"));
	    post.setTitle(request.getParameter("title"));
	    post.setContent(request.getParameter("content"));
	    post.setTag(request.getParameter("tag"));
	    post.setImg(request.getParameter("img"));
		
		PostDAO pdao = new PostDAO();
		pdao.insertPost(post);
	
		
		HttpSession session = request.getSession();	
		MemberBean member = (MemberBean) session.getAttribute("member");
		session.setAttribute("member", member);
		response.sendRedirect("authorPostProc");
	    
	
	}

}
