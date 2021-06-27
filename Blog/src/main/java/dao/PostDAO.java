package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

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
		
		
		
		public void insertPost(PostBean post) {
			getCon();
			try {
				//쿼리 준비
				String sql ="insert into post(member_memberId,category_category_num,post_title,post_content,post_date,post_tag,post_img) "
						+ "values(?,?,?,?,?,?,?)";
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, post.getMember_memberId());
				pstmt.setInt(2, post.getCategory_category_num());
				pstmt.setString(3, post.getPost_title());
				pstmt.setString(4, post.getPost_content());
				Calendar calendar = Calendar.getInstance();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				pstmt.setString(5, sdf.format(calendar.getTime()));
				pstmt.setString(6, post.getPost_tag());
				pstmt.setString(7, post.getPost_img());
		
	
				//쿼리 실행
				pstmt.executeUpdate();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

}
