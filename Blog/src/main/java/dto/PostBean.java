package dto;


//게시물 작성 DTO
public class PostBean {
	
	private int post_num;
	private String member_memberId;
	private int category_category_num;
	private String post_title;
	private String post_content;
	private String post_date;
	private String post_tag;
	private String post_img;
	
	public int getPost_num() {
		return post_num;
	}
	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}
	public String getMember_memberId() {
		return member_memberId;
	}
	public void setMember_memberId(String member_memberId) {
		this.member_memberId = member_memberId;
	}
	public int getCategory_category_num() {
		return category_category_num;
	}
	public void setCategory_category_num(int category_category_num) {
		this.category_category_num = category_category_num;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getPost_content() {
		return post_content;
	}
	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}
	public String getPost_date() {
		return post_date;
	}
	public void setPost_date(String post_date) {
		this.post_date = post_date;
	}
	public String getPost_tag() {
		return post_tag;
	}
	public void setPost_tag(String post_tag) {
		this.post_tag = post_tag;
	}
	public String getPost_img() {
		return post_img;
	}
	public void setPost_img(String post_img) {
		this.post_img = post_img;
	}
	
	
	
}
