package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.PostDAO;
import dto.MemberBean;
import dto.PostBean;

//작성한 글(write-post)을 author-post.html로 넘기기 전 처리, 내가 방금 쓴글 = 상세보기 페이지와같음 
@WebServlet("/authorPostProc")
public class AuthorPostProc extends HttpServlet {
	
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
		
		String member_id = (String) request.getAttribute("member_id");
		
	
	}

}
