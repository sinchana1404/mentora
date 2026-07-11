package com.dao.imp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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

	        String query = "INSERT INTO users(user_fname,user_lname,email,city,bio,create_at,password) VALUES(?,?,?,?,?,?,?)";

	        try {

	            PreparedStatement ps = con.prepareStatement(query);

	            ps.setString(1, user.getUserFname());
	            ps.setString(2, user.getUserLname());
	            ps.setString(3, user.getEmail());
	            ps.setString(4, user.getCity());
	            ps.setString(5, user.getBio());
	            ps.setTimestamp(6, user.getCreateAt());
	            ps.setString(7, user.getPassword());

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
		            user.setUserFname(rs.getString("user_fname"));
		            user.setUserLname(rs.getString("user_lname"));
		            user.setEmail(rs.getString("email"));
		            user.setCity(rs.getString("city"));
		            user.setBio(rs.getString("bio"));
		            user.setCreateAt(rs.getTimestamp("create_at"));
		            user.setPassword(rs.getString("password"));

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
		            user.setUserFname(rs.getString("user_fname"));
		            user.setUserLname(rs.getString("user_lname"));
		            user.setEmail(rs.getString("email"));
		            user.setCity(rs.getString("city"));
		            user.setBio(rs.getString("bio"));
		            user.setCreateAt(rs.getTimestamp("create_at"));
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

			ps.setString(1, user.getUserFname());
			ps.setString(2, user.getUserLname());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getCity());
			ps.setString(5, user.getBio());
			ps.setTimestamp(6, user.getCreateAt());
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

}
