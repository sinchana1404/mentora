package com.dao.imp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.inf.UserDAOINF;
import com.dto.UserDTO;
import com.utility.DBconnection;

public class UserDAOIMP implements UserDAOINF {
	 private Connection con;

	    public UserDAOIMP() {
	        this.con = DBconnection.getConnection();
	    }
		@Override
		public boolean registerUser(UserDTO user) {

	        String query = "INSERT INTO users(user_fname,user_lname,email,bio,password,phone_number,create_at) VALUES(?,?,?,?,?,?,now()";

	        try {

	            PreparedStatement ps = con.prepareStatement(query);

	            ps.setString(1, user.getUser_fname());
	            ps.setString(2, user.getUser_lname());
	            ps.setString(3, user.getEmail());
	            
	            ps.setString(4, user.getBio());
	            
	            ps.setString(5, user.getPassword());
	            ps.setLong(6, user.getPhone_number());

	            int result = ps.executeUpdate();

	            if (result > 0) {
	                return true;
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return false;
	    }
		
		    
	@Override
	public UserDTO loginUser(String email, String password) {
		   String query = "SELECT * FROM users WHERE email = ? AND password = ?";

		    try {

		        PreparedStatement ps = con.prepareStatement(query);

		        ps.setString(1, email);
		        ps.setString(2, password);

		        ResultSet rs = ps.executeQuery();

		        if (rs.next()) {

		            UserDTO user = new UserDTO();

		            user.setUserId(rs.getInt("user_id"));
		            user.setUser_fname(rs.getString("user_fname"));
		            user.setUser_lname(rs.getString("user_lname"));
		            user.setEmail(rs.getString("email"));
		            user.setCity(rs.getString("city"));
		            user.setBio(rs.getString("bio"));
		            user.setCreate_at(rs.getTimestamp("create_at"));
		            user.setPassword(rs.getString("password"));
		            user.setPhone_number(rs.getLong("phone_number"));

		            return user;
		        }

		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return null;
		}

	@Override
	public UserDTO getUserById(int userId) {
		 String query = "SELECT * FROM users WHERE user_id = ?";

		    try {

		        PreparedStatement ps = con.prepareStatement(query);
		        ps.setInt(1, userId);

		        ResultSet rs = ps.executeQuery();

		        if (rs.next()) {

		            UserDTO user = new UserDTO();

		            user.setUserId(rs.getInt("user_id"));
		            user.setUser_fname(rs.getString("user_fname"));
		            user.setUser_lname(rs.getString("user_lname"));
		            user.setEmail(rs.getString("email"));
		            user.setCity(rs.getString("city"));
		            user.setBio(rs.getString("bio"));
		            user.setCreate_at(rs.getTimestamp("create_at"));
		            user.setPassword(rs.getString("password"));
		           

		            return user;
		        }

		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return null;
		}

	@Override
	public boolean updateUser(UserDTO user) {
		String query = "UPDATE users SET user_fname=?, user_lname=?, email=?, city=?, bio=?, create_at=?, password=? WHERE user_id=?";

		try {

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, user.getUser_fname());
			ps.setString(2, user.getUser_fname());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getCity());
			ps.setString(5, user.getBio());
			ps.setTimestamp(6, user.getCreate_at());
			ps.setString(7, user.getPassword());
			ps.setInt(8, user.getUserId());

			int result = ps.executeUpdate();

			if (result > 0) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	@Override
	public boolean deleteUser(int userId) {
		String query = "DELETE FROM users WHERE user_id=?";

		try {

			PreparedStatement ps = con.prepareStatement(query);

			ps.setInt(1, userId);

			int result = ps.executeUpdate();

			if (result > 0) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	
	@Override
	public List<UserDTO> searchUsersBySkill(String skillName, String proficiency) {

	    List<UserDTO> list = new ArrayList();

	    String query = "SELECT DISTINCT u.* FROM users u JOIN user_skills us ON u.user_id = us.user_id JOIN skills s ON us.skill_id = s.skill_id WHERE s.skill_name = ? AND us.proficiency = ?";

	    try {

	        PreparedStatement ps = con.prepareStatement(query);

	        ps.setString(1, skillName);
	        ps.setString(2, proficiency);

	        ResultSet rs = ps.executeQuery();

	        while(rs.next()){

	            UserDTO dto = new UserDTO();

	            dto.setUserId(rs.getInt("user_id"));;
	            dto.setUser_fname(rs.getString("user_fname"));
	            dto.setUser_lname(rs.getString("user_lname"));
	            dto.setEmail(rs.getString("email"));;
	            dto.setPhone_number(rs.getLong("phone_number"));

	            list.add(dto);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	
	@Override
	public List<UserDTO> searchUsersByCategory(String category, String proficiency) {

	    List<UserDTO> list = new ArrayList<>();

	    String query = "SELECT DISTINCT u.* " +
	                   "FROM users u " +
	                   "JOIN user_skills us ON u.user_id = us.user_id " +
	                   "JOIN skills s ON us.skill_id = s.skill_id " +
	                   "WHERE s.category = ? AND us.proficiency = ?";

	    try {

	        PreparedStatement ps = con.prepareStatement(query);

	        ps.setString(1, category);
	        ps.setString(2, proficiency);

	        ResultSet rs = ps.executeQuery();

	        while(rs.next()){

	            UserDTO dto = new UserDTO();

	            dto.setUserId(rs.getInt("user_id"));;
	            dto.setUser_fname(rs.getString("user_fname"));
	            dto.setUser_lname(rs.getString("user_lname"));
	            dto.setEmail(rs.getString("email"));;
	            dto.setPhone_number(rs.getLong("phone_number"));


	            list.add(dto);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	@Override
	public List<UserDTO> getAllUsers() {
		List<UserDTO> list = new ArrayList();

	    String query = "SELECT DISTINCT* FROM users ";

	    try {

	        PreparedStatement ps = con.prepareStatement(query);

	        ResultSet rs = ps.executeQuery();

	        while(rs.next()){

	            UserDTO dto = new UserDTO();

	            dto.setUserId(rs.getInt("user_id"));;
	            dto.setUser_fname(rs.getString("user_fname"));
	            dto.setUser_lname(rs.getString("user_lname"));
	            dto.setEmail(rs.getString("user_email"));;
	            dto.setPhone_number(rs.getLong("phone_number"));

	            list.add(dto);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	

}
