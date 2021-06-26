package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dto.MemberBean;


@WebServlet("/mInfoProc")
public class MemberInfoProc extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
	}
	
	private void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		MemberBean member = (MemberBean) session.getAttribute("member");
		
		if(member == null) {
			request.setAttribute("msg", "로그인 먼저 이용해주세요.");
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}
		else {
			session.setAttribute("member", member);
			//request.setAttribute("id", id);
			RequestDispatcher dis =request.getRequestDispatcher("memberInfo.jsp");
			dis.forward(request, response);
		}
	}
}
