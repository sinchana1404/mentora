package com.dao.inf;

import java.util.List;

import com.dto.UserDTO;

public interface UserDAOINF {
	    boolean registerUser(UserDTO user);

	    UserDTO loginUser(String email, String password);

	    UserDTO getUserById(int userId);

	    boolean updateUser(UserDTO user);

	    boolean deleteUser(int userId);
	    
	    List<UserDTO> getAllUsers();

	    List<UserDTO> searchUsersBySkill(String skillName, String proficiency);

	    List<UserDTO> searchUsersByCategory(String category, String proficiency);
	}

