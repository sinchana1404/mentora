package com.dao.inf;

import java.util.List;

import com.dto.LearningInterestDTO;

public interface LearningInterestDAOINF {
	    boolean addLearningInterest(LearningInterestDTO interest);

	    List<LearningInterestDTO> getLearningInterests(int userId);

	    boolean deleteLearningInterest(int interestId);

	
}
