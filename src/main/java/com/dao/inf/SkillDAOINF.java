package com.dao.inf;

import java.util.List;

import com.dto.SkillDTO;

public interface SkillDAOINF {
	    boolean addSkill(SkillDTO skill);

	    List<SkillDTO> getAllSkills();

	    boolean updateSkill(SkillDTO skill);

	    boolean deleteSkill(int skillId);

	}
