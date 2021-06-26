package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import dto.LoginMemberBean;
import dto.MemberBean;


public class MemberDAO {
	
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
		
		//회원 한 사람에 대한 정보를 저장하는 메소드
		public void insertMember(MemberBean bean) {
			getCon();
			
			try {
				//쿼리 준비
				String sql ="insert into member values(?,?,?)";
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, bean.getId());
				pstmt.setString(2, bean.getPass());
				pstmt.setString(3, bean.getEmail());
		
	
				//쿼리 실행
				pstmt.executeUpdate();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		//회원정보가 있는지 비교
		public MemberBean getLoginValid(String id, String pass) {
			MemberBean member = new MemberBean();  //0이면 회원 없음
			getCon();
			   
			   	try {
		    		String sql ="select * from member where id=? and pass=?";
		    		pstmt  = conn.prepareStatement(sql); 
		    		pstmt.setString(1, id);
		    		pstmt.setString(2, pass);
		    		
		    		//쿼리 실행
		    		rs = pstmt.executeQuery();
		    		
		    		if(rs.next()) {
		    			member.setId(rs.getString(1));
		    			member.setPass(rs.getString(2));
		    			member.setEmail(rs.getString(3));
					}
		    		conn.close();
		    	} catch (SQLException e) {
		    		e.printStackTrace();
		    	}
			   	
			   return member;
			
		}
		
		//로그인 한 member를 loginMember 테이블에 넣어주기
//		public void insertLoginMember(String id, String pass) {
//			
//			getCon();
//			   
//		   	try {
//	    		String sql ="insert into loginmember(id,pass) values(?,?)";
//	    		pstmt=con.prepareStatement(sql);
//				pstmt.setString(1, id);
//				pstmt.setString(2, pass);
//	    		
//	    		pstmt.executeUpdate();
//	    		
//	    		String sql2 = "select * from loginmember";
//	    		pstmt=con.prepareStatement(sql2);
//	    		
//	    		rs=pstmt.executeQuery();
//	    		if(rs.next()) { // 쿼리 결과 값이 있다면
//	    			LoginMemberBean bean = new LoginMemberBean();
//	    			bean.setSeq(rs.getInt(1));
//	    			bean.setId(rs.getString(2));
//	    			bean.setPass(rs.getString(3));
//				}
//	    		
//	    		con.close();
//	    	} catch (SQLException e) {
//	    		e.printStackTrace();
//	    	}
//		   	
//		}

		public String getPass(String id) {
			String dbpass="";
			getCon();
			
			try {
				//쿼리 준비
				String sql ="select pass from member where id=?";
	    		pstmt  = conn.prepareStatement(sql); 
	    		pstmt.setString(1, id);
	    		
				rs = pstmt.executeQuery();
				//패스워드 값을 지정
				if(rs.next()) {
					dbpass=rs.getString(1);
				}
				//자원 반납
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
			return dbpass;
	   }
		
		public void updatePass(String id, String pass2) {
			getCon();
			
			try {
				//쿼리 준비
				String sql ="update member set pass=? where id=?";
	    		pstmt  = conn.prepareStatement(sql); 
	    		pstmt.setString(1, pass2);
	    		pstmt.setString(2, id);
	    		
	    		pstmt.executeUpdate();
				
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
			
	   }
		
		public String getPassforsearch(String id, String email) {
			String pass="";
			getCon();
			
			try {
				//쿼리 준비
				String sql ="select pass from member where id=? and email=?";
	    		pstmt  = conn.prepareStatement(sql); 
	    		pstmt.setString(1, id);
	    		pstmt.setString(2, email);
	    		
				rs = pstmt.executeQuery();
				//패스워드 값을 지정
				if(rs.next()) {
					pass=rs.getString(1);
				}
				//자원 반납
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
			return pass;
		}
		
			
	
		
		
}
