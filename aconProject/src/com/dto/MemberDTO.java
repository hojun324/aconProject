package com.dto;

import java.sql.Date;

public class MemberDTO {

	private String userid;
	private String passwd;
	private String username;
	private String post;
	private String address;
	private String address2;
	private String phone;
	private String email;
	private int point;
	private String brith;
	private String gender;
	private String userdate;
	private String job;
	private String lifestyle;
	
	
	
	public MemberDTO(String userid, String passwd, String username, String post, String address, String address2,
			String phone, String email, int point, String brith, String gender, String userdate, String job,
			String lifestyle) {
		super();
		this.userid = userid;
		this.passwd = passwd;
		this.username = username;
		this.post = post;
		this.address = address;
		this.address2 = address2;
		this.phone = phone;
		this.email = email;
		this.point = point;
		this.brith = brith;
		this.gender = gender;
		this.userdate = userdate;
		this.job = job;
		this.lifestyle = lifestyle;
	}
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "MemberDTO [userid=" + userid + ", passwd=" + passwd + ", username=" + username + ", post=" + post
				+ ", address=" + address + ", address2=" + address2 + ", phone=" + phone + ", email=" + email
				+ ", point=" + point + ", brith=" + brith + ", gender=" + gender + ", userdate=" + userdate + ", job="
				+ job + ", lifestyle=" + lifestyle + "]";
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getBrith() {
		return brith;
	}
	public void setBrith(String brith) {
		this.brith = brith;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUserdate() {
		return userdate;
	}
	public void setUserdate(String userdate) {
		this.userdate = userdate;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getLifestyle() {
		return lifestyle;
	}
	public void setLifestyle(String lifestyle) {
		this.lifestyle = lifestyle;
	}
	
	
}
	