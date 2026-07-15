package com.dto;

import java.sql.Timestamp;

public class UserDTO {

    private int userId;
    private String user_fname;
    private String user_lname;
    private String email;
    private String city;
    private String bio;
    private Timestamp create_at;
    private String password;
    private long phone_number;
    
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUser_fname() {
		return user_fname;
	}
	public void setUser_fname(String user_fname) {
		this.user_fname = user_fname;
	}
	public String getUser_lname() {
		return user_lname;
	}
	public void setUser_lname(String user_lname) {
		this.user_lname = user_lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getBio() {
		return bio;
	}
	public void setBio(String bio) {
		this.bio = bio;
	}
	public Timestamp getCreate_at() {
		return create_at;
	}
	public void setCreate_at(Timestamp create_at) {
		this.create_at = create_at;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public long getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(long phone_number) {
		this.phone_number = phone_number;
	}
	@Override
	public String toString() {
		return "UserDTO [userId=" + userId + ", user_fname=" + user_fname + ", user_lname=" + user_lname + ", email="
				+ email + ", city=" + city + ", bio=" + bio + ", create_at=" + create_at + ", password=" + password
				+ ", phone_number=" + phone_number + "]";
	}
	
	
	
	
    
    
}


   