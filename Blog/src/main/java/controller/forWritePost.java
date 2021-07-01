package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.MemberBean;

//로그인하지 않은 이용자 로그인유도 : 
//회원 프로필 가기 전 로그인 확인 처리 
@WebServlet("/forWritePost")
public class forWritePost extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		MemberBean member = (MemberBean) session.getAttribute("member");

		if(member == null) {
			request.setAttribute("msg", "로그인 먼저 이용해주세요.");
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}else {
			session.setAttribute("member", member);
			RequestDispatcher dis =request.getRequestDispatcher("write-post.jsp");
			dis.forward(request, response);
		}
	}
		
}
