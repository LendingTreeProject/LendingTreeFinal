package com.web.DTO;

import org.springframework.data.annotation.Id;

public class Agent {

	private int id;
	private String fname;
	private String lname;
	private String dob;
	private String gender;
	private String contact;
	private String email;
	@Id
	private String aid;
	private String password;
	private String dept;
	private String category;
	
	private String scrtQue1;
	private String scrtQue2;
	private String scrtQue3;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAid() {
		return aid;
	}
	public void setUid(String aid) {
		this.aid = aid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getScrtQue1() {
		return scrtQue1;
	}
	public void setScrtQue1(String scrtQue1) {
		this.scrtQue1 = scrtQue1;
	}
	public String getScrtQue2() {
		return scrtQue2;
	}
	public void setScrtQue2(String scrtQue2) {
		this.scrtQue2 = scrtQue2;
	}
	public String getScrtQue3() {
		return scrtQue3;
	}
	public void setScrtQue3(String scrtQue3) {
		this.scrtQue3 = scrtQue3;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	
	@Override
	public String toString() {
		return "Agent [id=" + id + ", fname=" + fname + ", lname=" + lname + ", dob=" + dob + ", gender=" + gender
				+ ", contact=" + contact + ", email=" + email + ", aid=" + aid + ", password=" + password + ", dept="
				+ dept + ", category=" + category + ", scrtQue1=" + scrtQue1 + ", scrtQue2=" + scrtQue2 + ", scrtQue3="
				+ scrtQue3 + "]";
	}

	

}
