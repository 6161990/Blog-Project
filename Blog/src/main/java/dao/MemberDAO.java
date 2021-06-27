package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import dto.MemberBean;

// 회원 데이터베이스 접근 객체
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
		
		//회원등록을 위한 id검증 메소드
		public int validIDforRegister(String Id) {
			int result=0;
			
			getCon();
			
			try {
				//쿼리 준비
				String sql ="select count(*) from member where memberId=?";
	    		pstmt  = conn.prepareStatement(sql); 
	    		pstmt.setString(1, Id);
	    		
				rs = pstmt.executeQuery();
				//패스워드 값을 지정
				if(rs.next()) {
					result=rs.getInt(1);
				}
				//자원 반납
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
			return result;
		}
		
		//회원 한 사람에 대한 정보를 저장하는 메소드
		public void insertMember(MemberBean member) {
			getCon();
			
			try {
				//쿼리 준비
				String sql ="insert into member values(?,?,?,?)";
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, member.getMemberId());
				pstmt.setString(2, member.getMemberPass());
				pstmt.setString(3, member.getMemberEmail());
				pstmt.setString(4, member.getMemberName());
	
				//쿼리 실행
				pstmt.executeUpdate();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		//회원정보가 있는지 비교
		public MemberBean getLoginValid(String memberId, String memberPass) {
			MemberBean member = new MemberBean();  //0이면 회원 없음
			getCon();
			   
			   	try {
		    		String sql ="select * from member where memberId=? and memberPass=?";
		    		pstmt  = conn.prepareStatement(sql); 
		    		pstmt.setString(1, memberId);
		    		pstmt.setString(2, memberPass);
		    		
		    		//쿼리 실행
		    		rs = pstmt.executeQuery();
		    		
		    		if(rs.next()) {
		    			member.setMemberId(rs.getString(1));
		    			member.setMemberPass(rs.getString(2));
		    			member.setMemberEmail(rs.getString(3));
		    			member.setMemberName(rs.getString(4));
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

		public String getPass(String memberId) {
			String dbpass="";
			getCon();
			
			try {
				//쿼리 준비
				String sql ="select memberPass from member where memberId=?";
	    		pstmt  = conn.prepareStatement(sql); 
	    		pstmt.setString(1, memberId);
	    		
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
		
		public void updatePass(String memberId, String memberPass2) {
			getCon();
			
			try {
				//쿼리 준비
				String sql ="update member set memberPass=? where memberId=?";
	    		pstmt  = conn.prepareStatement(sql); 
	    		pstmt.setString(1, memberPass2);
	    		pstmt.setString(2, memberId);
	    		
	    		pstmt.executeUpdate();
				
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
			
	   }
		
		public String getSearchforPass(String memberId, String memberEmail) {
			String pass="";
			getCon();
			
			try {
				//쿼리 준비
				String sql ="select memberPass from member where memberId=? and memberEmail=?";
	    		pstmt  = conn.prepareStatement(sql); 
	    		pstmt.setString(1, memberId);
	    		pstmt.setString(2, memberEmail);
	    		
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
