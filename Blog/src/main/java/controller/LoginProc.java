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

import dao.MemberDAO;
import dto.MemberBean;



@WebServlet("/loginProc")
public class LoginProc extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
	}
	private void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		request.setCharacterEncoding("UTF-8");
	    
		//전송정보 얻기
	    String id = request.getParameter("id");
		String pass = request.getParameter("pass");
//		String sessionCheck = request.getParameter("sessionCheck");
		
		MemberDAO mdao = new MemberDAO();
		int result = mdao.getLoginValid(id, pass);
		 
		if(result==0){
		   request.setAttribute("msg", "아이디 또는 비밀번호가 맞지않습니다.");
		   RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
	       dis.forward(request, response);
		}else{
	   	   HttpSession session = request.getSession();
//		   if(sessionCheck != null) {
			   session.setAttribute("id", id);
			   request.setAttribute("id", id);
//			}else {
//				session.setAttribute("id", "");
//			}
		   response.sendRedirect("index.jsp");
	    }
	}
}
