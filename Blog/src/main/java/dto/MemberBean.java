package dto;

public class MemberBean {
	
	private int member_idx;
	private String member_id;
	private String member_pass;
	private String member_name;
	private String member_email;
	private String member_regdate;
	
	public MemberBean() {}
	
	public MemberBean(int member_idx, String member_id, String member_pass, String member_name, String member_email,
			String member_regdate) {
		this.member_idx = member_idx;
		this.member_id = member_id;
		this.member_pass = member_pass;
		this.member_name = member_name;
		this.member_email = member_email;
		this.member_regdate = member_regdate;
	}
	
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pass() {
		return member_pass;
	}
	public void setMember_pass(String member_pass) {
		this.member_pass = member_pass;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	
	public String getMember_regdate() {
		return member_regdate;
	}
	public void setMember_regdate(String member_regdate) {
		this.member_regdate = member_regdate;
	}
	

}
