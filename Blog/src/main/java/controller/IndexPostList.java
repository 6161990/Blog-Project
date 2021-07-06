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

import dao.ImagesDAO;
import dao.PostDAO;
import dto.ImagesBean;
import dto.MemberBean;
import dto.PostBean;


@WebServlet("/IndexPostList")
public class IndexPostList extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dis = null;
		ImagesBean images = null;
		HttpSession session = request.getSession();	
		
		PostDAO pdao = new PostDAO();
		
		//전체 글 중 랜덤으로 2개 뽑아오기 for 히어로 영역
		ArrayList<PostBean> randomList = new ArrayList<PostBean>();
		randomList= pdao.getRandomList();
		
		//전체 글 중 조회수 가장 높은 글 12개 (등록일 상관없음) (인기글 영역)
		ArrayList<PostBean> popPostList = new ArrayList<PostBean>();
		popPostList= pdao.getPopViewList();
		
		//전체 리스트 (최근 순)
		ArrayList<PostBean> allPost = new ArrayList<PostBean>();
		allPost= pdao.getAllPost();
	
		MemberBean member = (MemberBean) session.getAttribute("member");
		//내가 관심갈 만한 글 (가장 최근 게시물의 카테고리와 같은 글)
		ArrayList<PostBean> categoryList = new ArrayList<PostBean>();
		

		
		if(allPost.isEmpty()==false) {  //전체 리스트가 비어있지 않다면
			session.setAttribute("randomList", randomList); //랜덤 리스트
			request.setAttribute("popPostList", popPostList); //인기글 리스트
			if(member!=null) { //회원이 로그인 되어있다면 내가 관심갈만 한 리스트로 전달
				categoryList = pdao.getCategoryList(member.getMember_idx());
				request.setAttribute("categoryList", categoryList);
			}else { //로그인 되어있지 않다면 전체 리스트(최근 순)로 전달
				request.setAttribute("CAList", allPost);
			}
			System.out.println("session 넘기기 성공");	//test 확인용
			
			request.setAttribute("images", images); //이미지 넘기기
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}else { //등록한 글이 없으면 noPost로 
			RequestDispatcher dispatcher = request.getRequestDispatcher("noPost.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
