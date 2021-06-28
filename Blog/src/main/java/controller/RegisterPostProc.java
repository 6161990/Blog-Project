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
		RequestDispatcher dis =null;
		boolean result = false;
		
		
		//전송정보 얻기 date 빼고
		PostBean post = new PostBean();
		post.setPost_member_idx(Integer.parseInt(request.getParameter("post_member_idx")));
	    post.setPost_category_idx(Integer.parseInt(request.getParameter("post_category_idx")));
	    post.setPost_title(request.getParameter("post_title"));
	    post.setPost_content(request.getParameter("post_content"));
	    post.setPost_tag1(request.getParameter("post_tag1"));
	    post.setPost_tag2(request.getParameter("post_tag2"));
	    
		
		PostDAO pdao = new PostDAO();
		result=pdao.insertPost(post);
		
		
		if(result == true) {
			HttpSession session = request.getSession();	
			MemberBean member = (MemberBean) session.getAttribute("member");
			session.setAttribute("member", member);
			System.out.println(member.getMember_id()+"님의 post insert success!!!!!");
			
			ArrayList<PostBean> postList = pdao.getMyPostList(member.getMember_idx());
			session.setAttribute("postList",postList);
			
			dis = request.getRequestDispatcher("authorPostProc");
			dis.forward(request, response);
		}else {
			request.setAttribute("alert", "포스팅을 실패하였습니다.");
			dis = request.getRequestDispatcher("error-404.jsp");
			dis.forward(request, response);
		}
		
	}

}
