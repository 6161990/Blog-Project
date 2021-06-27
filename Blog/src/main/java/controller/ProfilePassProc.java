package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;

//회원 비밀번호 변경 처리 : DB에 있는 비밀번호와 검증 , 현 비번과 새 비번은 비교하지않음.
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
	    
		String memberId = request.getParameter("memberId");
	    String memberPass = request.getParameter("memberPass");
	    String memberPass2 = request.getParameter("memberPass2");
	    
	    MemberDAO mdao = new MemberDAO();
	    String dbPass = mdao.getPass(memberId);

	    if(memberPass.equals(dbPass)){ //현재 비밀번호가 db비번과 일치하다면
	    	mdao.updatePass(memberId, memberPass2);
	    	request.setAttribute("msg", "비밀번호를 변경하였습니다. 다시 로그인해주세요.");
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}else {
			request.setAttribute("msg", "비밀번호가 맞지 않습니다.");
			RequestDispatcher dis = request.getRequestDispatcher("profilePass.jsp");
			dis.forward(request, response);
		}
	}

}
