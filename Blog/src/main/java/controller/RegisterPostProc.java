package controller;

import java.io.File;
import java.io.IOException;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ImagesDAO;
import dao.PostDAO;
import dto.ImagesBean;
import dto.MemberBean;
import dto.PostBean;

//게시물 등록 처리 
@WebServlet("/registerPostProc")
public class RegisterPostProc extends HttpServlet {


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
		RequestDispatcher dis =null;
		ImagesBean image = new ImagesBean();
		int post_idx = 0;
		
		
		// 업로드 폴더가 없으면 폴더 생성
		ServletContext context = getServletContext();
		String saveDir = context.getRealPath("/upload");
		System.out.println(saveDir);
		
		File sDir = new File(saveDir);
		
		if(!sDir.exists())
			sDir.mkdirs();
		
		//파일 크기 설정
		int maxPostSize = 1024 * 1024 * 3; //3MB 
		
		//인코딩방식
		String encoding ="UTF-8";
		
		//파일 정책, 파일명 중복시 파일명뒤에 인덱스값 붙이기
		FileRenamePolicy policy = new DefaultFileRenamePolicy();
		MultipartRequest mreq = new MultipartRequest(request //MultipartRequest를 생성하기 위한 request
				, saveDir //저장위치
				,maxPostSize // 저장될 파일 최대 크기
				,encoding // 인코딩 
				,policy); //파일정책
		
		
		//전송정보 얻기 date 빼고
		PostBean post = new PostBean();
		post.setPost_member_idx(Integer.parseInt(mreq.getParameter("post_member_idx")));
	    post.setPost_category_idx(Integer.parseInt(mreq.getParameter("post_category_idx")));
	    post.setPost_title(mreq.getParameter("post_title"));
	    post.setPost_content(mreq.getParameter("post_content"));
	    post.setPost_tag1(mreq.getParameter("post_tag1"));
	    post.setPost_tag2(mreq.getParameter("post_tag2"));
	    
	    
		PostDAO pdao = new PostDAO();
		post_idx=pdao.insertPost(post);
		
		   
		if(mreq.getFile("post_image")!=null) {
			File uploadFile = mreq.getFile("post_image");
			long uploadFile_length = uploadFile.length();
			String orgFileName = mreq.getOriginalFileName("post_image");
			String fileSysName = mreq.getFilesystemName("post_image");
			
			if(orgFileName != null) { //업로드 성공
			image.setImg_post_idx(post_idx);
			image.setImg_path(saveDir);
			image.setImg_file_name(fileSysName);
			
			ImagesDAO idao = new ImagesDAO();
			int cnt = idao.insertImage(image);
			
				if(cnt == 1) {
					System.out.println("파일 db 업로드 성공");
				}else {
					//경고창 날려주기 파일 업로드 밑에 msg
					System.out.println("파일 업로드실패");
					System.out.println("파일 이름  "+ orgFileName);
					System.out.println("파일 크기  "+ uploadFile_length);
				}
			}
		}	
	
		if(post_idx > 0) {
			HttpSession session = request.getSession();	
			MemberBean member = (MemberBean) session.getAttribute("member");
			session.setAttribute("member", member);
			

			//insert 성공 알림 on console test 확인용
			System.out.println(member.getMember_id()+"님의 post insert success!!!!!"); 	
			
			//post_idx를 알아오기 위해
			request.setAttribute("RegisterPost_idx", post_idx);
			dis = request.getRequestDispatcher("PostDetailProc");
			dis.forward(request, response);
		}else {
			request.setAttribute("alert", "포스팅을 실패하였습니다.");
			dis = request.getRequestDispatcher("error-404.jsp");
			dis.forward(request, response);
		}
	}
	
}
