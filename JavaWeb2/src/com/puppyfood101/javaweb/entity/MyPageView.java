package com.puppyfood101.javaweb.entity;

public class MyPageView extends Puppy{
	private String id;
	private String memberName;
	private String puppyName;
	private String password;
	private String phoneNumber;
	private String birthDate;
	private String email;
	
	public MyPageView() {
		
	}

	

	public MyPageView(String id, String memberName, String puppyName, String birthYear, String sex, String size,
			String kind) {
		super(id, memberName, puppyName, birthYear, sex, size, kind);
		// TODO Auto-generated constructor stub
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getPuppyName() {
		return puppyName;
	}

	public void setPuppyName(String puppyName) {
		this.puppyName = puppyName;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getPhoneNumber() {
		return phoneNumber;
	}



	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}



	public String getBirthDate() {
		return birthDate;
	}



	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}

	
	
	
}
