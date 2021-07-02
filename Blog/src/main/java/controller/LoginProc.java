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
import dao.PostDAO;
import dto.MemberBean;
import dto.PostBean;

//로그인 처리 서블릿 : 아이디, 비밀번호 검증 
@WebServlet("/loginProc")
public class LoginProc extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	    
		//전송정보 얻기
	    String member_id = request.getParameter("member_id");
		String member_pass = request.getParameter("member_pass");
		
		MemberDAO mdao = new MemberDAO();
		MemberBean member = mdao.getLoginValid(member_id, member_pass);
		
		PostDAO pdao = new PostDAO();
		PostBean myPost = pdao.getMyPost(member.getMember_idx());
		
		HttpSession session = request.getSession();	
		
		if(member.getMember_email() == null){
		   request.setAttribute("msg", "아이디 또는 비밀번호가 맞지않습니다.");
		   RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
	       dis.forward(request, response);
		}else{ //일치하는 회원이 있다면 세션에 setting
		   session.setAttribute("member", member);
	       request.setAttribute("member_id", member_id);
	       session.setAttribute("myPost", myPost);
	       RequestDispatcher dis = request.getRequestDispatcher("IndexPostList");
	       dis.forward(request, response);
	    }
	}
	
}
