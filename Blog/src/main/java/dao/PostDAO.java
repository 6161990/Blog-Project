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
		
		
		
		public boolean insertPost(PostBean post) {
			boolean result = false;
			getCon();
			try {
				//쿼리 준비
				String sql ="insert into post(post_member_idx,post_category_idx,post_title,post_content,post_tag1,post_tag2) values(?,?,?,?,?,?)";
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
				if(cnt == 1) {
					//INSERT문 실행결과 1이면 등록 성공
					result = true;
				}
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return result;
		}
		
		public ArrayList<PostBean> getMyPostList(int member_idx){

			ArrayList<PostBean> arrayPost = new ArrayList<>();
			getCon();
			try {
				//쿼리 준비
				//String sql ="select * from post order by post_date desc where post_member_idx=? ";
				//쿼리 실행 객체 선언
				//pstmt=conn.prepareStatement(sql);
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
					post.setPost_regdate(rs.getString(6));
					post.setPost_update(rs.getString(7));
					post.setPost_tag1(rs.getString(8));
					post.setPost_tag2(rs.getString(9));
					post.setPost_like(rs.getInt(10));
					post.setPost_cnt(rs.getInt(11));
					
					arrayPost.add(post);
				}
				
				//pstmt.close();
				//conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return arrayPost;
			
		}

		
		
}
