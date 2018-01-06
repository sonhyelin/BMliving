package com.puppyfood101.javaweb.entity;
import java.sql.Time;
import java.util.Date;

public class Board {
   private int number;
   private String title;
   private String content;
   private String memberId;
   private Date regDate;
   private int hit;
   
   public Board() {
      
   }

public Board(int number, String title, String content, String memberId, Date regDate, int hit) {
	
	this.number = number;
	this.title = title;
	this.content = content;
	this.memberId = memberId;
	this.regDate = regDate;
	this.hit = hit;
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

public String getContent() {
	return content;
}

public void setContent(String content) {
	this.content = content;
}

public String getMemberId() {
	return memberId;
}

public void setMemberId(String memberId) {
	this.memberId = memberId;
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


}
      
   