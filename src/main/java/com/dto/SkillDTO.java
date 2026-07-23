package com.dto;

public class SkillDTO {
	private int skillId;
	private String skillName;
	private String category;
	
	public SkillDTO() {
		
	}

	public int getSkillId() {
		return skillId;
	}

	public void setSkillId(int skillId) {
		this.skillId = skillId;
	}

	public String getSkillName() {
		return skillName;
	}

	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "SkillDTO [skillId=" + skillId + ", skillName=" + skillName + ", category=" + category
				+ "]";
	}
	
}
