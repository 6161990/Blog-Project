package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//카테고리 데이터베이스 접근 객체
public class CategoryDAO {

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
			public String getCategoryName(int category_idx) {
				String categoryName = null;
				getCon();
				try {
					//쿼리 준비
					String sql ="select category_name from post_category where category_idx=?";
					//쿼리 실행 객체 선언
					pstmt=conn.prepareStatement(sql);
					pstmt.setInt(1, category_idx);
					
					//쿼리 실행
					rs = pstmt.executeQuery();
					if(rs.next()) {
						categoryName = rs.getString(1);  
					}
					pstmt.close();
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return categoryName;
			}
	
	}
	

