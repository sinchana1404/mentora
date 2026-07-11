package com.dto;

import java.sql.Timestamp;

public class UserDTO {

    private int userId;
    private String userFname;
    private String userLname;
    private String email;
    private String city;
    private String bio;
    private Timestamp createAt;
    private String password;

    public UserDTO() {
    }
    public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}


	public String getUserFname() {
		return userFname;
	}


	public void setUserFname(String userFname) {
		this.userFname = userFname;
	}


	public String getUserLname() {
		return userLname;
	}


	public void setUserLname(String userLname) {
		this.userLname = userLname;
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


	public Timestamp getCreateAt() {
		return createAt;
	}


	public void setCreateAt(Timestamp createAt) {
		this.createAt = createAt;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	@Override
    public String toString() {
        return "UserDTO [userId=" + userId + ", userFname=" + userFname
                + ", userLname=" + userLname + ", email=" + email
                + ", city=" + city + ", bio=" + bio
                + ", createAt=" + createAt + "]";
    }
}
