package com.dao.inf;

import java.util.List;

import com.dto.UserSkillDTO;

public interface UserSkillDAOINF {
	    boolean addUserSkill(UserSkillDTO userSkill);

	    List<UserSkillDTO> getUserSkills(int userId);

	    boolean deleteUserSkill(int userSkillId);
	    
	    List<UserSkillDTO> getUserSkillsBySkillId(int skillId);
	    
	    List<UserSkillDTO> getAllUserSkill();

}
