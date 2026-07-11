package com.dto;

public class LearningInterestDTO {
	private int interestId;
	private int userId;
	private int skillId;
	
	public LearningInterestDTO() {
		
	}

	public int getInterestId() {
		return interestId;
	}

	public void setInterestId(int interestId) {
		this.interestId = interestId;
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
		return "LearningInterestDTO [interestId=" + interestId + ", userId=" + userId + ", skillId=" + skillId + "]";
	}
	
}
