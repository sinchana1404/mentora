package com.dto;

public class UserSkillDTO {
	private int userSkillId;
	private int userId;
	private int skillId;
	
	public UserSkillDTO() {
		
	}

	public int getUserSkillId() {
		return userSkillId;
	}

	public void setUserSkillId(int userSkillId) {
		this.userSkillId = userSkillId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getSkillId() {
		return skillId;
	}

	public void setSkillId(int skillId) {
		this.skillId = skillId;
	}

	@Override
	public String toString() {
		return "UserSkillDTO [userSkillId=" + userSkillId + ", userId=" + userId + ", skillId=" + skillId + "]";
	}
	
}
