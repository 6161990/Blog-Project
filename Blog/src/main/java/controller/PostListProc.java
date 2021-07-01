package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.PostDAO;
import dto.MemberBean;
import dto.PostBean;


@WebServlet("/PostListProc")
public class PostListProc extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();	
		MemberBean member = (MemberBean) session.getAttribute("member");
		if(member == null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}else {
			doPost(request,response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dis =null;
		
		HttpSession session = request.getSession();	
		MemberBean member = (MemberBean) session.getAttribute("member");
		
		PostDAO pdao = new PostDAO();
		
		//작성자 전체 글list
		ArrayList<PostBean> postList = pdao.getMyPostList(member.getMember_idx());
		
		if(postList.isEmpty() == true) { //등록한 글이 없으면 noPost로 
			RequestDispatcher dispatcher = request.getRequestDispatcher("noPost.jsp");
			dispatcher.forward(request, response);
		} else {
			request.setAttribute("postList", postList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("author-post.jsp");
			dispatcher.forward(request, response);
		}
	}

}
