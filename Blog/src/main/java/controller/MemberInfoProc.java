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
		String id = (String) session.getAttribute("id");
		
		if(id == null) {
			request.setAttribute("msg", "로그인 먼저 이용해주세요.");
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);

		}
		else {

			session.setAttribute("id", id);
			request.setAttribute("id", id);
			RequestDispatcher dis =request.getRequestDispatcher("profilePass.jsp");
			dis.forward(request, response);
		}
	}
}
