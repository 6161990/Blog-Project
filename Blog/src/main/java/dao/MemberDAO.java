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
		public int validIDforRegister(String member_id) {
			int result=0;
			
			getCon();
			
			try {
				//쿼리 준비
				String sql ="select count(*) from member_master where member_id=?";
	    		pstmt  = conn.prepareStatement(sql); 
	    		pstmt.setString(1, member_id);
	    		
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
		public boolean insertMember(MemberBean member) {
			boolean result = false;
			getCon();
			
			try {
				//쿼리 준비
				String sql ="insert into member_master(member_id,member_pass,member_name,member_email) values(?,?,?,?)";
				//쿼리 실행 객체 선언
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, member.getMember_id());
				pstmt.setString(2, member.getMember_pass());
				pstmt.setString(3, member.getMember_name());
				pstmt.setString(4, member.getMember_email());
				
				//쿼리 실행
				int cnt = pstmt.executeUpdate();
				if(cnt == 1) {
					//INSERT문 실행결과 1이면 등록 성공
					result = true;
				}
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return result;
		}

		//회원정보가 있는지 비교
		public MemberBean getLoginValid(String member_id, String member_pass) {
			MemberBean member = new MemberBean();  //0이면 회원 없음
			getCon();
			   
			   	try {
		    		String sql ="select * from member_master where member_id=? and member_pass=?";
		    		pstmt  = conn.prepareStatement(sql); 
		    		pstmt.setString(1, member_id);
		    		pstmt.setString(2, member_pass);
		    		
		    		//쿼리 실행
		    		rs = pstmt.executeQuery();
		    		
		    		if(rs.next()) {
		    			member.setMember_idx(rs.getInt(1));
		    			member.setMember_id(rs.getString(2));
		    			member.setMember_pass(rs.getString(3));
		    			member.setMember_name(rs.getString(4));
		    			member.setMember_email(rs.getString(5));
		    			member.setMember_regdate(rs.getString(6));
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

		public String getPass(String member_id,String member_name) {
			String dbpass="";
			getCon();
			
			try {
				//쿼리 준비
				String sql ="select member_pass from member_master where member_id=? and member_name=?";
	    		pstmt  = conn.prepareStatement(sql); 
	    		pstmt.setString(1, member_id);
	    		pstmt.setString(2, member_name);
	    		
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
		
		public void updatePass(String member_id, String member_pass2) {
			getCon();
			
			try {
				//쿼리 준비
				String sql ="update member_master set member_pass=? where member_id=?";
	    		pstmt  = conn.prepareStatement(sql); 
	    		pstmt.setString(1, member_pass2);
	    		pstmt.setString(2, member_id);
	    		
	    		pstmt.executeUpdate();
				
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
			
	   }
		
		public String getSearchforPass(String member_id, String member_email) {
			String pass="";
			int member_idx = 0;
			getCon();
			
			try {
				//아이디, 이메일 가지고 회원 고유번호 가져오기 쿼리 준비
				String sql ="select member_idx from member_master where member_id=? and member_email=?";
	    		pstmt  = conn.prepareStatement(sql); 
	    		pstmt.setString(1, member_id);
	    		pstmt.setString(2, member_email);
	    		
				rs = pstmt.executeQuery();
				//패스워드 값을 지정
				if(rs.next()) {
					member_idx = rs.getInt(1);
				}
				
				//가져온 회원 고유번호로 비밀번호 알려주기
				String sql2 = "select member_pass from member_master where member_idx=?";
				pstmt  = conn.prepareStatement(sql2); 
	    		pstmt.setInt(1, member_idx);
	    		
	    		rs = pstmt.executeQuery();
	    		if(rs.next()) {
	    			pass = rs.getString(1);
	    		}
	    		
				//자원 반납
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
			return pass;
		}
		
			
	
		
		
}
