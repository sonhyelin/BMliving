package com.puppyfood101.javaweb.entity;

public class Puppy {
	private String id;
	private String memberName;
	private String puppyName;
	private String birthYear;
	private String sex;
	private String size;
	private String kind;
	
	public Puppy() {
		
	}

	public Puppy(String id, String memberName, String puppyName, String birthYear, String sex, String size,
			String kind) {
		super();
		this.id = id;
		this.memberName = memberName;
		this.puppyName = puppyName;
		this.birthYear = birthYear;
		this.sex = sex;
		this.size = size;
		this.kind = kind;
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

	public String getBirthYear() {
		return birthYear;
	}

	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}
	
	
}
