package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;


@WebServlet("/passProc")
public class ProfilePassProc extends HttpServlet {
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
	}
	
	private void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		request.setCharacterEncoding("UTF-8");
	    
		String id = request.getParameter("id");
	    String pass = request.getParameter("pass");
	    String pass2 = request.getParameter("pass2");
	    
	    MemberDAO mdao = new MemberDAO();
	    String dbPass = mdao.getPass(id);

	    if(dbPass.equals(pass)){ //현재 비밀번호가 db비번과 일치하다면
	    	mdao.updatePass(id, pass2);
		}else {
			request.setAttribute("msg", "비밀번호가 맞지 않습니다.");
			RequestDispatcher dis = request.getRequestDispatcher("profilePass.jsp");
			dis.forward(request, response);
		}
	}

}
