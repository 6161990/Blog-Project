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


//회원가입 처리 
@WebServlet("/registerProc")
public class RegisterProc extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request,response);
		
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		System.out.println(request.getParameter("memberId")); //데이터 베이스 삽입 확인용
		
		MemberBean bean = new MemberBean();
		bean.setMemberId(request.getParameter("memberId"));
		bean.setMemberPass(request.getParameter("memberPass"));
		bean.setMemberEmail(request.getParameter("memberEmail"));
		bean.setMemberName(request.getParameter("memberName"));
		
		String memberId = request.getParameter("memberId");
		
		MemberDAO mdao = new MemberDAO();
		int result = mdao.validIDforRegister(memberId);
		
		if(result == 0 ) {
			mdao.insertMember(bean);
			System.out.println("님의 데이터베이스 insert success");  //데이터 베이스 삽입 확인용
			request.setAttribute("msg", "회원 가입 성공! 로그인 하세요.");
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}else {
			request.setAttribute("msg", "이미 존재하는 아이디입니다.");
			RequestDispatcher dis = request.getRequestDispatcher("register.jsp");
			dis.forward(request, response);
		}

		
	}

}
