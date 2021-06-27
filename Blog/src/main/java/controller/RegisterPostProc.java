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

//게시물 등록 처리 
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

		//전송정보 얻기 date 빼고
		PostBean post = new PostBean();
		post.setMember_memberId(request.getParameter("member_memberId"));
	    post.setCategory_category_num(Integer.parseInt(request.getParameter("category_category_num")));
	    post.setPost_title(request.getParameter("post_title"));
	    post.setPost_content(request.getParameter("post_content"));
	    post.setPost_tag(request.getParameter("post_tag"));
	    post.setPost_img(request.getParameter("post_img"));
		
		PostDAO pdao = new PostDAO();
		pdao.insertPost(post);
		
		RequestDispatcher dis =null;
		
		if(post != null) {
			HttpSession session = request.getSession();	
			MemberBean member = (MemberBean) session.getAttribute("member");
			session.setAttribute("member", member);
			session.setAttribute("post", post);
			System.out.println(member.getMemberId()+"님의 post insert success!!!!!");
			dis = request.getRequestDispatcher("authorPostProc");
			dis.forward(request, response);
		}else {
			request.setAttribute("alert", "포스팅을 실패하였습니다.");
			dis = request.getRequestDispatcher("error-404.jsp");
			dis.forward(request, response);
		}
		
	}

}
