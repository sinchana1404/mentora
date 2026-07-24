package com.dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.dao.inf.UserSkillDAOINF;
import com.dto.UserSkillDTO;
import com.utility.DBconnection;

public class UserSkillDAOImpl implements UserSkillDAOINF {
	private Connection con;

    public UserSkillDAOImpl() {
        this.con = DBconnection.getConnection();
    }
	@Override
	public boolean addUserSkill(UserSkillDTO userSkill) {
		String query = "INSERT INTO user_skills(user_id, skill_id, proficiency) VALUES(?,?,?)";

	    try {

	        PreparedStatement ps = con.prepareStatement(query);

	        ps.setInt(1, userSkill.getUserId());
	        ps.setInt(2, userSkill.getSkillId());
	        ps.setString(3, userSkill.getProficiency());

	        int result = ps.executeUpdate();

	        return result > 0;

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return false;
	}

	@Override
	public List<UserSkillDTO> getUserSkills(int userId) {
		 List<UserSkillDTO> list = new ArrayList<>();

		    String query = "SELECT * FROM user_skills WHERE user_id=?";

		    try {

		        PreparedStatement ps = con.prepareStatement(query);

		        ps.setInt(1, userId);

		        ResultSet rs = ps.executeQuery();

		        while (rs.next()) {

		            UserSkillDTO userSkill = new UserSkillDTO();

		            userSkill.setUserSkillId(rs.getInt("user_skill_id"));
		            userSkill.setUserId(rs.getInt("user_id"));
		            userSkill.setSkillId(rs.getInt("skill_id"));
		            userSkill.setProficiency(rs.getString("proficiency"));

		            list.add(userSkill);
		        }

		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return list;
		}
	
	@Override
	public boolean deleteUserSkill(int userSkillId) {
		String query = "DELETE FROM user_skills WHERE user_skill_id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(query);

	        ps.setInt(1, userSkillId);

	        int result = ps.executeUpdate();

	        return result > 0;

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return false;
	}
	@Override
	public List<UserSkillDTO> getUserSkillsBySkillId(int skillId) {
		 List<UserSkillDTO> list = new ArrayList<>();

		    String query = "SELECT * FROM user_skills WHERE proficiency=?";

		    try {

		        PreparedStatement ps = con.prepareStatement(query);

		        ps.setInt(1, skillId);

		        ResultSet rs = ps.executeQuery();

		        while (rs.next()) {

		            UserSkillDTO userSkill = new UserSkillDTO();

		            userSkill.setUserSkillId(rs.getInt("user_skill_id"));
		            userSkill.setUserId(rs.getInt("user_id"));
		            userSkill.setSkillId(rs.getInt("skill_id"));
		            userSkill.setProficiency(rs.getString("proficiency"));

		            list.add(userSkill);
		        }

		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return list;
	}
	@Override
	public List<UserSkillDTO> getAllUserSkill() {
		// TODO Auto-generated method stub
		 List<UserSkillDTO> list = new ArrayList<>();

		    String query = "SELECT * FROM user_skills ";

		    try {

		        PreparedStatement ps = con.prepareStatement(query);


		        ResultSet rs = ps.executeQuery();

		        while (rs.next()) {

		            UserSkillDTO userSkill = new UserSkillDTO();

		            userSkill.setUserSkillId(rs.getInt("user_skill_id"));
		            userSkill.setUserId(rs.getInt("user_id"));
		            userSkill.setSkillId(rs.getInt("skill_id"));
		            userSkill.setProficiency(rs.getString("proficiency"));

		            list.add(userSkill);
		        }

		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return list;
	}

}
