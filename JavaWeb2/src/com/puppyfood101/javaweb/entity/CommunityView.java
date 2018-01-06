package com.puppyfood101.javaweb.entity;

import java.util.Date;

public class CommunityView{
	private int number;
	private String title;
	private String id;
	private String content;
	private Date regDate;
	private int hit;
	private int countCmt;
	
	public CommunityView(int number, String title, String id, String content, Date regDate, int hit, int countCmt) {
	
		this.number = number;
		this.title = title;
		this.id = id;
		this.content = content;
		this.regDate = regDate;
		this.hit = hit;
		this.countCmt = countCmt;
	}
	public CommunityView() {
		// TODO Auto-generated constructor stub
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getCountCmt() {
		return countCmt;
	}
	public void setCountCmt(int countCmt) {
		this.countCmt = countCmt;
	}
	
	
	

}
