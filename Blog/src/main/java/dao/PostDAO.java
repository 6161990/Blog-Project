package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import dto.PostBean;

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
				String sql ="insert into post(member_id,member_email,title,content,date,category,tag,img) "
						+ "values(?,?,?,?,?,?,?,?)";
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, post.getMember_id());
				pstmt.setString(2, post.getMember_email());
				pstmt.setString(3, post.getTitle());
				pstmt.setString(4, post.getContent());
				Calendar calendar = Calendar.getInstance();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				pstmt.setString(5, sdf.format(calendar.getTime()));
				pstmt.setString(6, post.getCategory());
				pstmt.setString(7, post.getTag());
				pstmt.setString(8, post.getImg());
		
	
				//쿼리 실행
				pstmt.executeUpdate();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

}
