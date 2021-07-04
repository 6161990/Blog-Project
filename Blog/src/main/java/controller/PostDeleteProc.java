package controller;

import java.io.IOException;

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

//작성글 삭제
@WebServlet("/PostDeleteProc")
public class PostDeleteProc extends HttpServlet {
	
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
		RequestDispatcher dis =null;
		int result = 0;
		
		//전송정보 얻기 date 빼고
		PostBean post = new PostBean();
		int post_idx = Integer.parseInt(request.getParameter("post_idx"));
		
		PostDAO pdao = new PostDAO();
		result = pdao.deletePost(post_idx);
	
		if(result > 0) {
			HttpSession session = request.getSession();	
			MemberBean member = (MemberBean) session.getAttribute("member");
			session.setAttribute("member", member);
			
			//delete 성공 알림 on console test 확인용
			System.out.println(member.getMember_id()+"님의 post delete success!!!!!"); 	
			
			dis = request.getRequestDispatcher("PostListProc");
			dis.forward(request, response);
		}else {
			request.setAttribute("alert", "포스팅을 업데이트를 실패하였습니다.");
			dis = request.getRequestDispatcher("error-404.jsp");
			dis.forward(request, response);
		}
	}

}
