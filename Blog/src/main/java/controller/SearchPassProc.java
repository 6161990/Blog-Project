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

//비밀번호 찾기 처리 
@WebServlet("/searchPass")
public class SearchPassProc extends HttpServlet {
	
    
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
	    
		String member_id = request.getParameter("member_id");
	    String member_email = request.getParameter("member_email");
	    
	    System.out.println(member_id);
	    System.out.println(member_email);
	    MemberDAO mdao = new MemberDAO();
	    String dbPass = mdao.getSearchforPass(member_id,member_email);

	    if(dbPass!=null){ 
	    	request.setAttribute("msg", "현재 비밀번호는  "+dbPass+"  입니다.");
	    	RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
	    	dis.forward(request, response);
	    }else {
			request.setAttribute("msg", "입력한 정보와 일치하는 비밀번호를 찾을 수 없습니다.");
			RequestDispatcher dis = request.getRequestDispatcher("searchPass.jsp");
			dis.forward(request, response);
		}
	}
	
}
