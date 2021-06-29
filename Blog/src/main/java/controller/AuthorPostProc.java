package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.PostDAO;
import dto.PostBean;


//작성한 글(write-post)을 blog-detail.html로 넘기기 전 처리, 내가 방금 쓴글 = 상세보기 페이지와같음 
@WebServlet("/toSeePostProc")
public class AuthorPostProc extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
	}
	
	private void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		request.setCharacterEncoding("UTF-8");
		int post_idx = (int) request.getAttribute("post_idx");
		
		PostDAO pdao = new PostDAO();
		PostBean post = pdao.getOnePost(post_idx);
		String member_name = pdao.getMember_name(post.getPost_member_idx());
		System.out.println("post_idx   "+post.getPost_member_idx());
		System.out.println("member_name   "+member_name);
		
		if(post !=null) {
			HttpSession session = request.getSession();	
			session.setAttribute("post",post);
			request.setAttribute("member_name", member_name);
			System.out.println("session 넘기기 성공");
			RequestDispatcher dis = request.getRequestDispatcher("blog-details.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis = request.getRequestDispatcher("error-404.jsp");
			dis.forward(request, response);
			System.out.println("post null");
		}
		
		//작성자 전체 글list
//		ArrayList<PostBean> postList = pdao.getMyPostList(member.getMember_idx());
//		request.setAttribute("postList", postList);
		
	}

}
