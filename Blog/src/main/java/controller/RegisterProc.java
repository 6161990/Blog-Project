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
		System.out.println(request.getParameter("id")); //데이터 베이스 삽입 확인용
		
		MemberBean bean = new MemberBean();
		bean.setId(request.getParameter("id"));
		bean.setPass(request.getParameter("pass"));
		bean.setEmail(request.getParameter("email"));
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		int passL = pass.length();
		
		MemberDAO mdao = new MemberDAO();
		
		if(passL > 7 ) {
			
			mdao.insertMember(bean);
			System.out.println("님의 데이터베이스 insert success");
			request.setAttribute("msg", "회원 가입 성공! 로그인 하세요.");
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
			
		}else {
			request.setAttribute("msg", "회원가입을 실패하였습니다.");
			RequestDispatcher dis = request.getRequestDispatcher("register.jsp");
			dis.forward(request, response);
		}

		
	}

}
