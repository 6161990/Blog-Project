package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import dto.MemberBean;
import dto.PostBean;


//게시물 데이터베이스 접근 객체
public class PostDAO {
	private final String DSN = "jdbc:mysql://localhost:3306/blog?useSSL=false";
	private final String USER = "root"; //study
	private final String PASSWORD = "dkdlel"; //1234
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	// 데이터베이스 연결정보 
		public Connection getCon() {
			conn = null;

			try {
				// JDBC드라이버 로드 
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            // 데이터베이스 연결 
	            conn = DriverManager.getConnection(DSN, USER, PASSWORD);
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}catch(SQLException e){
				e.printStackTrace();
			}
			return conn;
		}
		
		
		//게시물 삽입
		public int insertPost(PostBean post) {
			int post_idx =0;
			getCon();
			try {
				//쿼리 준비
				String sql ="insert into post_master(post_member_idx,post_category_idx,post_title,post_content,post_tag1,post_tag2) values(?,?,?,?,?,?)";
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, post.getPost_member_idx());
				pstmt.setInt(2, post.getPost_category_idx());
				pstmt.setString(3, post.getPost_title());
				pstmt.setString(4, post.getPost_content());
				pstmt.setString(5, post.getPost_tag1());
				pstmt.setString(6, post.getPost_tag2());
				
				
				//쿼리 실행
				int cnt = pstmt.executeUpdate();
				
				//INSERT문 실행결과 1이면 등록 성공
				if(cnt == 1) {		
					//방금 등록한 post 고유번호(post_idx) 가져오기
					String sql2 = "SELECT LAST_INSERT_ID()";
					pstmt=conn.prepareStatement(sql2);
					rs = pstmt.executeQuery();
					if(rs.next()) {
						post_idx = rs.getInt(1);  
					}
				}
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return post_idx;
		}
		
		
		//최근 게시물 가져오기
		public ArrayList<PostBean> getLatestPostList(){
			ArrayList<PostBean> arrayPost = new ArrayList<>();
			getCon();
			try {
				//쿼리 준비
				String sql ="select * from post_master order by post_regdate desc";
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				
				//쿼리 실행
				rs = pstmt.executeQuery();
				while(rs.next()) {
					PostBean post = new PostBean();
					
					post.setPost_idx(rs.getInt(1));
					post.setPost_member_idx(rs.getInt(2));
					post.setPost_category_idx(rs.getInt(3));
					post.setPost_title(rs.getString(4));
					post.setPost_content(rs.getString(5));
					post.setPost_tag1(rs.getString(6));
					post.setPost_tag2(rs.getString(7));
					post.setPost_regdate(rs.getString(8));
					post.setPost_update(rs.getString(9));
					post.setPost_like(rs.getInt(10));
					post.setPost_cnt(rs.getInt(11));
					
					arrayPost.add(post);
				}
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return arrayPost;
		}


		//게시물 한 개 가져오기
		public PostBean getOnePost(int post_idx) {
			PostBean post = null;
			getCon();
			try {
				//조회수 증가쿼리
				String readsql = "update post_master set post_cnt = post_cnt+1 where post_idx=?";
				pstmt = conn.prepareStatement(readsql);
				pstmt.setInt(1, post_idx);
				pstmt.executeUpdate();
				
				//쿼리 준비
				String sql ="select * from post_master where post_idx=?";
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, post_idx);
				
				//쿼리 실행
				rs = pstmt.executeQuery();
				while(rs.next()) {
					post = new PostBean();
					
					post.setPost_idx(rs.getInt(1));
					post.setPost_member_idx(rs.getInt(2));
					post.setPost_category_idx(rs.getInt(3));
					post.setPost_title(rs.getString(4));
					post.setPost_content(rs.getString(5));
					post.setPost_tag1(rs.getString(6));
					post.setPost_tag2(rs.getString(7));
					post.setPost_regdate(rs.getString(8));
					post.setPost_update(rs.getString(9));
					post.setPost_like(rs.getInt(10));
					post.setPost_cnt(rs.getInt(11));
				}
				
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return post;
		}

		
		//글에 매치된 회원 고유 번호로 회원 이름 가져오기
		public String getMember_name(int post_member_idx) {
			String member_name = null;
			getCon();
			try {
				//쿼리 준비
				String sql = "select member_name from member_master where member_idx=?";
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, post_member_idx);
				
				//쿼리 실행
				rs = pstmt.executeQuery();
				if(rs.next()) {
					member_name=rs.getString(1);
				}
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return member_name;
		}

		//같은 카테고리 분야 글 가져오기
		public ArrayList<PostBean> categoryPostList(int post_category_idx) {
			ArrayList<PostBean> arrayPost = new ArrayList<>();
			getCon();
			try {
				//쿼리 준비
				String sql ="select * from post_master where post_category_idx=? order by post_regdate desc";
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, post_category_idx);
				
				//쿼리 실행
				rs = pstmt.executeQuery();
				while(rs.next()) {
					PostBean post = new PostBean();
					
					post.setPost_idx(rs.getInt(1));
					post.setPost_member_idx(rs.getInt(2));
					post.setPost_category_idx(rs.getInt(3));
					post.setPost_title(rs.getString(4));
					post.setPost_content(rs.getString(5));
					post.setPost_tag1(rs.getString(6));
					post.setPost_tag2(rs.getString(7));
					post.setPost_regdate(rs.getString(8));
					post.setPost_update(rs.getString(9));
					post.setPost_like(rs.getInt(10));
					post.setPost_cnt(rs.getInt(11));
					
					arrayPost.add(post);
				}
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return arrayPost;
		}		
		
		//내 글 하나 가져오기
		public PostBean getMyPost(int member_idx){

			PostBean post = new PostBean();
			int post_idxForCnt = 0; //조회수 증가 쿼리를 위한 변수
			getCon();
			try {
				
				//쿼리 준비
				String sql ="select * from post_master where post_member_idx=? order by post_regdate desc limit 1";
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, member_idx);

				//쿼리 실행
				rs = pstmt.executeQuery();
				while(rs.next()) {
					post_idxForCnt = rs.getInt(1); //조회수 증가 위한 post_idx 구하기
					post.setPost_idx(rs.getInt(1));
					post.setPost_member_idx(rs.getInt(2));
					post.setPost_category_idx(rs.getInt(3));
					post.setPost_title(rs.getString(4));
					post.setPost_content(rs.getString(5));
					post.setPost_tag1(rs.getString(6));
					post.setPost_tag2(rs.getString(7));
					post.setPost_regdate(rs.getString(8));
					post.setPost_update(rs.getString(9));
					post.setPost_like(rs.getInt(10));
					post.setPost_cnt(rs.getInt(11));
				}
				
				//조회수 증가쿼리
				String readsql = "update post_master set post_cnt = post_cnt+1 where post_idx=?";
				pstmt = conn.prepareStatement(readsql);
				pstmt.setInt(1, post_idxForCnt);
				pstmt.executeUpdate();
				
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return post;
		}
		
		
		//내 글 전체 가져오기
		public ArrayList<PostBean> getMyPostList(int member_idx){
			ArrayList<PostBean> arrayPost = new ArrayList<>();
			getCon();
			try {
				//쿼리 준비
				String sql ="select * from post_master where post_member_idx=? order by post_regdate desc ";
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, member_idx);

				//쿼리 실행
				rs = pstmt.executeQuery();
				while(rs.next()) {
					PostBean post = new PostBean();
					post.setPost_idx(rs.getInt(1));
					post.setPost_member_idx(rs.getInt(2));
					post.setPost_category_idx(rs.getInt(3));
					post.setPost_title(rs.getString(4));
					post.setPost_content(rs.getString(5));
					post.setPost_tag1(rs.getString(6));
					post.setPost_tag2(rs.getString(7));
					post.setPost_regdate(rs.getString(8));
					post.setPost_update(rs.getString(9));
					post.setPost_like(rs.getInt(10));
					post.setPost_cnt(rs.getInt(11));

					arrayPost.add(post);
				}

				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return arrayPost;
		}

		//수정을 위한 게시물 한 개 가져오기
		public PostBean getOnePostForUpdate(int post_idx) {
			PostBean post = null;
			getCon();
			try {
				//쿼리 준비
				String sql ="select * from post_master where post_idx=?";
				
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, post_idx);
						
				//쿼리 실행
				rs = pstmt.executeQuery();
				while(rs.next()) {
					post = new PostBean();
							
					post.setPost_idx(rs.getInt(1));
					post.setPost_member_idx(rs.getInt(2));
					post.setPost_category_idx(rs.getInt(3));
					post.setPost_title(rs.getString(4));
					post.setPost_content(rs.getString(5));
					post.setPost_tag1(rs.getString(6));
					post.setPost_tag2(rs.getString(7));
					post.setPost_regdate(rs.getString(8));
					post.setPost_update(rs.getString(9));
					post.setPost_like(rs.getInt(10));
					post.setPost_cnt(rs.getInt(11));
				}
					pstmt.close();
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			return post;
		}

			//글 수정 
			public int updatePost(PostBean post , int post_idx) {
				int result =0;
				getCon();
				try {
					//쿼리 준비
					String sql ="update post_master set post_category_idx=?, post_title=?, post_content=?, "
							+ "post_tag1=?, post_tag2=?, post_update=? where post_idx=?";
					
					//쿼리 실행 객체 선언
					pstmt=conn.prepareStatement(sql);
					pstmt.setInt(1, post.getPost_category_idx());
					pstmt.setString(2, post.getPost_title());
					pstmt.setString(3, post.getPost_content());
					pstmt.setString(4, post.getPost_tag1());
					pstmt.setString(5, post.getPost_tag2());
					pstmt.setString(6, post.getPost_update());
					pstmt.setInt(7, post_idx);
					
					//쿼리 실행
					result = pstmt.executeUpdate();
					
					pstmt.close();
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return result;
		    }
			
			//글 삭제
			public int deletePost(int post_idx) {
				getCon();
				int result = 0;
				try {
					//쿼리 준비
					String sql="delete from post_master where post_idx=?";
					pstmt = conn.prepareStatement(sql);
					//?값 대입
					pstmt.setInt(1, post_idx);
					//쿼리 실행 
					result = pstmt.executeUpdate();
					//자원반납
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
				return result;
			}
			
		
}
