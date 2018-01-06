package com.puppyfood101.javaweb.entity;

import java.util.Date;

public class Member {
	private String id;
	private String name;
	private String password;
	private String phoneNumber;
	private String birthDate;
	private String email;
	private String roleId;
	
	
	
public Member() {
	
}





public String getRoleId() {
	return roleId;
}





public void setRoleId(String roleId) {
	this.roleId = roleId;
}





public Member(String id, String name, String password, String phoneNumber, String birthDate, String email,
		String roleId) {
	super();
	this.id = id;
	this.name = name;
	this.password = password;
	this.phoneNumber = phoneNumber;
	this.birthDate = birthDate;
	this.email = email;
	this.roleId = roleId;
}





public String getId() {
	return id;
}


public void setId(String id) {
	this.id = id;
}


public String getName() {
	return name;
}


public void setName(String name) {
	this.name = name;
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
