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

import dao.CategoryDAO;
import dao.PostDAO;
import dto.MemberBean;
import dto.PostBean;


//작성한 글(write-post)을 blog-detail.html로 넘기기 전 처리, 내가 방금 쓴글 = 상세보기 페이지와같음 
//author-post (내 글 리스트)에서  blog-detail.html로 넘기기 전 처리
@WebServlet("/PostDetailProc")
public class PostDetailProc extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
	}
	
	private void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dis = null;
		
		//해당 포스트 post_idx 얻어오기
		int post_idx = (int) request.getAttribute("post_idx");
		
		//해당 post_idx로 post객체얻기 
		PostDAO pdao = new PostDAO();
		PostBean post = pdao.getOnePost(post_idx); 
		
		//얻어온 post객체 중 회원 고유 번호를 통해 회원 이름 가져오기
		String member_name = pdao.getMember_name(post.getPost_member_idx());
		
		//test 확인용
		System.out.println("post_idx   "+post.getPost_idx());
		System.out.println("member_name   "+member_name);
		
		//최근 글 목록 얻어오기 (카테고리 상관 없음)
		ArrayList<PostBean> latestPostList = new ArrayList<PostBean>();
		latestPostList = pdao.getLatestPostList();
		
		
		//관련글 얻어오기 (같은 카테고리)
		ArrayList<PostBean> categotyPostList = new ArrayList<PostBean>();
		categotyPostList = pdao.categoryPostList(post.getPost_category_idx());
		
		
		//카테고리 이름 얻어오기
		CategoryDAO cdao = new CategoryDAO();
		String category_name = cdao.getCategoryName(post.getPost_category_idx());
		
		
		//얻어온 post가 null이 아니라면 세션에 post 넣어주기, by '' 에 넣을 회원 이름도 넘겨주기
		if(post !=null) {
			//HttpSession session = request.getSession();	
			request.setAttribute("post",post);
			request.setAttribute("latestPostList", latestPostList);
			request.setAttribute("categotyPostList", categotyPostList);
			request.setAttribute("category_name", category_name);
			categotyPostList = pdao.categoryPostList(post.getPost_category_idx());
			request.setAttribute("member_name", member_name);
			System.out.println("session 넘기기 성공");	//test 확인용
			
			dis = request.getRequestDispatcher("blog-details.jsp");
			dis.forward(request, response);
		} else {
			dis = request.getRequestDispatcher("error-404.jsp");
			dis.forward(request, response);
			System.out.println("post null");
		}
		
		//작성자 전체 글list
//		ArrayList<PostBean> postList = pdao.getMyPostList(member.getMember_idx());
//		request.setAttribute("postList", postList);
		
	}

}
