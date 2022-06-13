package com.webPro03;

public class PostDTO {
	private String title;
	private String userId;
	
	
	public PostDTO() {
		
	}
	public PostDTO(String title, String userId) {
		super();
		this.title = title;
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
}
