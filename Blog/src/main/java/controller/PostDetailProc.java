package controller;

import java.io.File;
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
import dao.ImagesDAO;
import dao.PostDAO;
import dto.ImagesBean;
import dto.MemberBean;
import dto.PostBean;


// 1. 작성한 글(write-post), 2.나의 가장 최신글, 3.나의 글 목록 세 곳에서
// blog-detail.jsp로 넘기기 전 처리 서블릿
@WebServlet("/PostDetailProc")
public class PostDetailProc extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();	
		MemberBean member = (MemberBean) session.getAttribute("member");
		if(member == null) {
			request.setAttribute("msg", "로그인 먼저 이용해주세요.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}else {
			doPost(request,response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dis = null;
		int post_idx = 0;
		int list_post_idx =0;
		
		HttpSession session = request.getSession();	
		PostBean myPost = (PostBean) session.getAttribute("myPost"); //로그인에서 받아옴
		String sIdx = (String)request.getParameter("aList_post_idx"); //나의 글 목록에서 클릭한 글의 post_idx
		if(sIdx != null){ list_post_idx = Integer.parseInt(sIdx); }
		//확인용 
		System.out.println(list_post_idx);
		
		//3곳에서 각각 해당하는 포스트 post_idx 얻어오기 
		if(request.getAttribute("RegisterPost_idx") != null) { //1. 글 등록하고 바로 넘어오는 post_idx
			post_idx = (int) request.getAttribute("RegisterPost_idx"); 
		} else {  
			if(list_post_idx != 0) {    //2. 나의 글 목록(author-post.jsp)로부터 클릭한 글 넘어올 때
				post_idx = list_post_idx; 
			} else if(myPost != null) { //3. 세션에서 넘어오는 나의 가장 최신글 한 개의 post_idx
				post_idx = myPost.getPost_idx();
			}
		} 
		
		
		
		//해당 post_idx로 post객체얻기 
		PostDAO pdao = new PostDAO();
		PostBean post = pdao.getOnePost(post_idx); 
		ImagesBean images = null;
		
		//얻어온 post가 null이 아니라면 세션에 post 넣어주기, by '' 에 넣을 회원 이름도 넘겨주기
		if(post !=null) {
			
		//얻어온 post객체 중 회원 고유 번호를 통해 회원 이름 가져오기
		String member_name = pdao.getMember_name(post.getPost_member_idx());
				
		//test 확인용
		System.out.println("post_idx   "+post.getPost_idx());
		System.out.println("member_name   "+member_name);
				
		//저장한 이미지 얻어오기
		ImagesDAO idao = new ImagesDAO();
		images = idao.getImages(post.getPost_idx());
		
		
		//최근 글 목록 얻어오기 (카테고리 상관 없음 / 작성자 상관없음)
		ArrayList<PostBean> latestPostList = new ArrayList<PostBean>();
		latestPostList = pdao.getLatestPostList();
				
				
		//관련글 얻어오기 (같은 카테고리)
		ArrayList<PostBean> categotyPostList = new ArrayList<PostBean>();
		categotyPostList = pdao.categoryPostList(post.getPost_category_idx());
				
				
		//카테고리 이름 얻어오기
		CategoryDAO cdao = new CategoryDAO();
		String category_name = cdao.getCategoryName(post.getPost_category_idx());
				
		request.setAttribute("post",post);
		request.setAttribute("latestPostList", latestPostList);
		request.setAttribute("categotyPostList", categotyPostList);
		request.setAttribute("category_name", category_name);
		request.setAttribute("images", images);
		categotyPostList = pdao.categoryPostList(post.getPost_category_idx());
		request.setAttribute("member_name", member_name);
		System.out.println("session 넘기기 성공");	//test 확인용
					
		dis = request.getRequestDispatcher("blog-details.jsp");
		dis.forward(request, response);
		
		} else {
			dis = request.getRequestDispatcher("noPost.jsp");
			
			dis.forward(request, response);
			System.out.println("post null");
		}

	}

}
