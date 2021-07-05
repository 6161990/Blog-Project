package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.ImagesBean;
import dto.PostBean;

public class ImagesDAO {
	
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
		
		//이미지 삽입
		public int insertImage(ImagesBean image) {
			int cnt =0;
			getCon();
			try {
				//쿼리 준비
				String sql ="insert into post_images(img_post_idx,img_path,img_file_name) values(?,?,?)";
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, image.getImg_post_idx());
				pstmt.setString(2, image.getImg_path());
				pstmt.setString(3, image.getImg_file_name());

				//쿼리 실행
				cnt = pstmt.executeUpdate();
				
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return cnt;
		}

		public ImagesBean getImages(int post_idx) {
			ImagesBean image = new ImagesBean();
			getCon();
			try {
				
				//쿼리 준비
				String sql ="select * from post_images where img_post_idx=?";
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, post_idx);

				//쿼리 실행
				rs = pstmt.executeQuery();
				if(rs.next()) {
					image.setImg_idx(rs.getInt(1));
					image.setImg_post_idx(rs.getInt(2));
					image.setImg_path(rs.getString(3));
					image.setImg_file_name(rs.getString(4));
					image.setImg_regdate(rs.getString(5));
				}
				
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return image;
		}
}
