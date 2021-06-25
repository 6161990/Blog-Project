package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import dto.MemberBean;


public class MemberDAO {
	
	private final String DSN = "jdbc:mysql://localhost:3306/blog?useSSL=false";
	private final String USER = "root"; //study
	private final String PASSWORD = "dkdlel"; //1234
	
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	// 데이터베이스 연결정보 
		public Connection getCon() {
			con = null;

			try {
				// JDBC드라이버 로드 
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            // 데이터베이스 연결 
	            con = DriverManager.getConnection(DSN, USER, PASSWORD);
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}catch(SQLException e){
				e.printStackTrace();
			}
			return con;
		}
		
		//회원 한 사람에 대한 정보를 저장하는 메소드
		public void insertMember(MemberBean bean) {
			getCon();
			
			try {
				//쿼리 준비
				String sql ="insert into member values(?,?,?)";
				//쿼리 실행 객체 선언
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, bean.getId());
				pstmt.setString(2, bean.getPass());
				pstmt.setString(3, bean.getEmail());
		
	
				//쿼리 실행
				pstmt.executeUpdate();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		//회원정보가 있는지 비교
		public int getLoginValid(String id, String pass) {
			int result=0;  //0이면 회원 없음
			getCon();
			   
			   	try {
		    		String sql ="select count(*) from member where id=? and pass=?";
		    		pstmt  = con.prepareStatement(sql); 
		    		pstmt.setString(1, id);
		    		pstmt.setString(2, pass);
		    		
		    		//쿼리 실행
		    		rs = pstmt.executeQuery();
		    		
		    		if(rs.next()) {
						result=rs.getInt(1);//0 또는 1 값이 저장
					}
		    		con.close();
		    	} catch (SQLException e) {
		    		e.printStackTrace();
		    	}
			   	
			   return result;
			
		}

		public String getPass(String id) {
			String pass="";
			getCon();
			
			try {
				//쿼리 준비
				String sql ="update member where id=? and pass=?";
	    		pstmt  = con.prepareStatement(sql); 
	    		pstmt.setString(1, id);
	    		pstmt.setString(2, pass);
	    		
				rs = pstmt.executeQuery();
				//패스워드 값을 지정
				if(rs.next()) {
					pass=rs.getString(1);
				}
				//자원 반납
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
			return pass;
	   }
		
		public void updatePass(String id, String pass2) {
			getCon();
			
			try {
				//쿼리 준비
				String sql ="update member set pass=? where id=?";
	    		pstmt  = con.prepareStatement(sql); 
	    		pstmt.setString(1, id);
	    		pstmt.setString(2, pass2);
	    		
	    		pstmt.executeUpdate();
				
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
			
	   }
		
			
	
		
		
}
