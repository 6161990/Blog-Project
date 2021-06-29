package dto;


//게시물 작성 DTO
public class PostBean {
	
	private int post_idx;
	private int post_member_idx;
	private int post_category_idx; 
	private String post_title; //제목
	private String post_content; //내용
	private String post_tag1; //태그1
	private String post_tag2; //태그2
	private String post_regdate; //등록일
	private String post_update; //수정일
	private int post_like; //좋아요
	private int post_cnt;  //조회수
	
	
	public PostBean() {}
	
	public PostBean(int post_idx, int post_member_idx, int post_category_idx, String post_title, String post_content,
			String post_tag1, String post_tag2, String post_regdate, String post_update, int post_like, int post_cnt) {
		this.post_idx = post_idx;
		this.post_member_idx = post_member_idx;
		this.post_category_idx = post_category_idx;
		this.post_title = post_title;
		this.post_content = post_content;
		this.post_tag1 = post_tag1;
		this.post_tag2 = post_tag2;
		this.post_regdate = post_regdate;
		this.post_update = post_update;
		this.post_like = post_like;
		this.post_cnt = post_cnt;
	}


	public int getPost_idx() {
		return post_idx;
	}
	public void setPost_idx(int post_idx) {
		this.post_idx = post_idx;
	}
	public int getPost_member_idx() {
		return post_member_idx;
	}
	public void setPost_member_idx(int post_member_idx) {
		this.post_member_idx = post_member_idx;
	}
	public int getPost_category_idx() {
		return post_category_idx;
	}
	public void setPost_category_idx(int post_category_idx) {
		this.post_category_idx = post_category_idx;
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
	public String getPost_tag1() {
		return post_tag1;
	}
	public void setPost_tag1(String post_tag1) {
		this.post_tag1 = post_tag1;
	}
	public String getPost_tag2() {
		return post_tag2;
	}
	public void setPost_tag2(String post_tag2) {
		this.post_tag2 = post_tag2;
	}
	public String getPost_regdate() {
		return post_regdate;
	}
	public void setPost_regdate(String post_regdate) {
		this.post_regdate = post_regdate;
	}
	public String getPost_update() {
		return post_update;
	}
	public void setPost_update(String post_update) {
		this.post_update = post_update;
	}
	public int getPost_like() {
		return post_like;
	}
	public void setPost_like(int post_like) {
		this.post_like = post_like;
	}
	public int getPost_cnt() {
		return post_cnt;
	}
	public void setPost_cnt(int post_cnt) {
		this.post_cnt = post_cnt;
	}
	
	
	
}
