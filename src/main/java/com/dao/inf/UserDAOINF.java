package com.dao.inf;

import com.dto.UserDTO;

public interface UserDAOINF {
	    boolean registerUser(UserDTO user);

	    UserDTO loginUser(String email, String password);

	    UserDTO getUserById(int userId);

	    boolean updateUser(UserDTO user);

	    boolean deleteUser(int userId);

	}

